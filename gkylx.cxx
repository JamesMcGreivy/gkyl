// Gkyl ------------------------------------------------------------------------
//
// Top-level entry point into Gkyl
//    _______     ___
// + 6 @ |||| # P ||| +
//------------------------------------------------------------------------------

#include <gkylconfig.h>

// library includes
#include <sol.hpp>

// std include
#include <fstream>
#include <iostream>
#include <limits>
#include <sstream>

#ifdef HAVE_MPI_H
# include <mpi.h>
# include <GkMpiFuncs.h>
#endif

#ifdef HAVE_ADIOS_H
# include <adios.h>
#endif

/* A simple logger for parallel simulations */
class Logger {
  public:
    Logger() : rank(0) {
#ifdef HAVE_MPI_H
      MPI_Comm_rank(MPI_COMM_WORLD, &rank);
#endif      
    }
    void log(const char *m) const {
      if (rank == 0)
        std::cout << m << std::endl;
    }
  private:
    int rank;
};

/* Finish simulation */
int finish(int err) {
#ifdef HAVE_MPI_H
  if (err != 0)
    MPI_Abort(MPI_COMM_WORLD, err);
  else 
    MPI_Finalize();
#endif
  return err;
}

/* Create top-level variable definition */
std::string
createTopLevelDefs(int argc, char **argv) {
  // load compile-time constants into Lua compiler so they become
  // available to scripts
  std::ostringstream varDefs;
#ifdef HAVE_MPI_H
  varDefs << "GKYL_HAVE_MPI = true" << std::endl;
#else
  varDefs << "GKYL_HAVE_MPI = false" << std::endl;
#endif

#ifdef HAVE_ADIOS_H
  varDefs << "GKYL_HAVE_ADIOS = true" << std::endl;
#else
  varDefs << "GKYL_HAVE_ADIOS = false" << std::endl;
#endif
  // numeric limits
  varDefs << "GKYL_MIN_DOUBLE = " << std::numeric_limits<double>::min() << std::endl;
  varDefs << "GKYL_MIN_FLOAT = " << std::numeric_limits<float>::min() << std::endl;
  varDefs << "GKYL_MAX_DOUBLE = " << std::numeric_limits<double>::max() << std::endl;
  varDefs << "GKYL_MAX_FLOAT = " << std::numeric_limits<float>::max() << std::endl;
  varDefs << "GKYL_EPSILON = " << std::numeric_limits<double>::epsilon() << std::endl;
  
  // set some JIT parameters to fiddle around with optimizations
  varDefs << "jit.opt.start('callunroll=20', 'loopunroll=60')" << std::endl;

  // check if file exists  
  std::string inpFile(argv[1]);
  // output prefix
  std::string snm(argv[1]);
  unsigned trunc = inpFile.find_last_of(".", snm.size());
  if (trunc > 0)
    snm.erase(trunc, snm.size());
  varDefs << "GKYL_OUT_PREFIX = '" << snm << "'" << std::endl;

  return varDefs.str();
}

// These dummy calls are a hack to force the linker to pull in symbols
// from static libraries. There is a better way to do this, I just do
// not know it yet.
#ifdef HAVE_ADIOS_H
int _adios_init(const char *cf, MPI_Comm comm) { return adios_init(cf, comm); }
#endif
#ifdef HAVE_MPI_H
MPI_Comm _get_MPI_COMM_WORLD() { return get_MPI_COMM_WORLD(); }
#endif

int
main(int argc, char **argv) {
#ifdef HAVE_MPI_H
  MPI_Init(&argc, &argv);
#endif
  Logger logger; // create logger

  if (argc != 2) {
    logger.log("Usage: gkyl LUA-SCRIPT");
    return finish(0);
  }

  // create state and load libraries
  sol::state state;
  state.open_libraries();
  // load top-level definitions
  std::string topDefs = createTopLevelDefs(argc, argv);
  state.script(topDefs);

  // run input file, catching errors if any
  try {
    state.script_file(argv[1]);
  }
  catch (const sol::error& err) {
    std::cerr << "** ERROR: " << err.what() << std::endl;
  }
  catch (const std::exception& err) {
    std::cerr << "** ERROR: " << err.what() << std::endl;
  }
  catch (...) {
    std::cerr << "** ERROR: UKNOWN!" << std::endl;
  }
  
  return finish(0);
}

;;; -*- Mode: LISP; package:maxima; syntax:common-lisp; -*- 
(in-package :maxima)
(DSKSETQ |$varsC| '((MLIST SIMP) $X $Y)) 
(ADD2LNC '|$varsC| $VALUES) 
(DSKSETQ |$varsP| '((MLIST SIMP) $X $Y $VX $VY $VZ)) 
(ADD2LNC '|$varsP| $VALUES) 
(DSKSETQ |$basisC|
         '((MLIST SIMP
            (10.
             "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/basis-precalc/basis-pre-calc.mac"
             SRC |$writeBasisToFile| 7.))
           ((MLIST SIMP
             (31.
              "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
              SRC |$gsOrthoNorm| 29.))
            ((RAT SIMP) 1. 2.)
            ((MTIMES SIMP) ((RAT SIMP) 1. 2.)
             ((MEXPT SIMP) 3. ((RAT SIMP) 1. 2.)) $X)
            ((MTIMES SIMP) ((RAT SIMP) 1. 2.)
             ((MEXPT SIMP) 3. ((RAT SIMP) 1. 2.)) $Y)
            ((MTIMES SIMP) ((RAT SIMP) 3. 2.) $X $Y))
           ((MLIST SIMP
             (31.
              "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
              SRC |$gsOrthoNorm| 29.))
            ((RAT SIMP) 1. 2.)
            ((MTIMES SIMP) ((RAT SIMP) 1. 2.)
             ((MEXPT SIMP) 3. ((RAT SIMP) 1. 2.)) $X)
            ((MTIMES SIMP) ((RAT SIMP) 1. 2.)
             ((MEXPT SIMP) 3. ((RAT SIMP) 1. 2.)) $Y)
            ((MTIMES SIMP) ((RAT SIMP) 3. 2.) $X $Y)
            ((MTIMES SIMP) ((RAT SIMP) 3. 4.)
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((RAT SIMP) -1. 3.)
              ((MEXPT SIMP
                (61.
                 "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                 SRC |$calcPowers| 61.))
               $X 2.)))
            ((MTIMES SIMP) ((RAT SIMP) 3. 4.)
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((RAT SIMP) -1. 3.)
              ((MEXPT SIMP
                (61.
                 "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                 SRC |$calcPowers| 61.))
               $Y 2.)))
            ((MTIMES SIMP) ((RAT SIMP) 3. 4.)
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.)
               $Y)))
            ((MTIMES SIMP) ((RAT SIMP) 3. 4.)
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $X)
              ((MTIMES SIMP) $X
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.)))))
           ((MLIST SIMP
             (31.
              "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
              SRC |$gsOrthoNorm| 29.))
            ((RAT SIMP) 1. 2.)
            ((MTIMES SIMP) ((RAT SIMP) 1. 2.)
             ((MEXPT SIMP) 3. ((RAT SIMP) 1. 2.)) $X)
            ((MTIMES SIMP) ((RAT SIMP) 1. 2.)
             ((MEXPT SIMP) 3. ((RAT SIMP) 1. 2.)) $Y)
            ((MTIMES SIMP) ((RAT SIMP) 3. 2.) $X $Y)
            ((MTIMES SIMP) ((RAT SIMP) 3. 4.)
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((RAT SIMP) -1. 3.)
              ((MEXPT SIMP
                (61.
                 "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                 SRC |$calcPowers| 61.))
               $X 2.)))
            ((MTIMES SIMP) ((RAT SIMP) 3. 4.)
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((RAT SIMP) -1. 3.)
              ((MEXPT SIMP
                (61.
                 "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                 SRC |$calcPowers| 61.))
               $Y 2.)))
            ((MTIMES SIMP) ((RAT SIMP) 3. 4.)
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.)
               $Y)))
            ((MTIMES SIMP) ((RAT SIMP) 3. 4.)
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $X)
              ((MTIMES SIMP) $X
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))))
            ((MTIMES SIMP) ((RAT SIMP) 5. 4.)
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $X)
              ((MEXPT SIMP
                (61.
                 "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                 SRC |$calcPowers| 61.))
               $X 3.)))
            ((MTIMES SIMP) ((RAT SIMP) 5. 4.)
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $Y)
              ((MEXPT SIMP
                (61.
                 "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                 SRC |$calcPowers| 61.))
               $Y 3.)))
            ((MTIMES SIMP) ((RAT SIMP) 5. 4.)
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $X $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 3.)
               $Y)))
            ((MTIMES SIMP) ((RAT SIMP) 5. 4.)
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $X $Y)
              ((MTIMES SIMP) $X
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 3.)))))
           ((MLIST SIMP
             (31.
              "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
              SRC |$gsOrthoNorm| 29.))
            ((RAT SIMP) 1. 2.)
            ((MTIMES SIMP) ((RAT SIMP) 1. 2.)
             ((MEXPT SIMP) 3. ((RAT SIMP) 1. 2.)) $X)
            ((MTIMES SIMP) ((RAT SIMP) 1. 2.)
             ((MEXPT SIMP) 3. ((RAT SIMP) 1. 2.)) $Y)
            ((MTIMES SIMP) ((RAT SIMP) 3. 2.) $X $Y)
            ((MTIMES SIMP) ((RAT SIMP) 3. 4.)
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((RAT SIMP) -1. 3.)
              ((MEXPT SIMP
                (61.
                 "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                 SRC |$calcPowers| 61.))
               $X 2.)))
            ((MTIMES SIMP) ((RAT SIMP) 3. 4.)
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((RAT SIMP) -1. 3.)
              ((MEXPT SIMP
                (61.
                 "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                 SRC |$calcPowers| 61.))
               $Y 2.)))
            ((MTIMES SIMP) ((RAT SIMP) 3. 4.)
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.)
               $Y)))
            ((MTIMES SIMP) ((RAT SIMP) 3. 4.)
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $X)
              ((MTIMES SIMP) $X
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))))
            ((MTIMES SIMP) ((RAT SIMP) 5. 4.)
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $X)
              ((MEXPT SIMP
                (61.
                 "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                 SRC |$calcPowers| 61.))
               $X 3.)))
            ((MTIMES SIMP) ((RAT SIMP) 5. 4.)
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $Y)
              ((MEXPT SIMP
                (61.
                 "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                 SRC |$calcPowers| 61.))
               $Y 3.)))
            ((MTIMES SIMP) ((RAT SIMP) 45. 8.)
             ((MPLUS SIMP) ((RAT SIMP) -1. 9.)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((RAT SIMP) -1. 3.)
                ((MEXPT SIMP
                  (61.
                   "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                   SRC |$calcPowers| 61.))
                 $X 2.)))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((RAT SIMP) -1. 3.)
                ((MEXPT SIMP
                  (61.
                   "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                   SRC |$calcPowers| 61.))
                 $Y 2.)))
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))))
            ((MTIMES SIMP) ((RAT SIMP) 5. 4.)
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $X $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 3.)
               $Y)))
            ((MTIMES SIMP) ((RAT SIMP) 5. 4.)
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $X $Y)
              ((MTIMES SIMP) $X
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 3.))))
            ((MTIMES SIMP) ((RAT SIMP) 105. 16.)
             ((MPLUS SIMP) ((RAT SIMP) -1. 5.)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((RAT SIMP) -1. 3.)
                ((MEXPT SIMP
                  (61.
                   "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                   SRC |$calcPowers| 61.))
                 $X 2.)))
              ((MEXPT SIMP
                (61.
                 "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                 SRC |$calcPowers| 61.))
               $X 4.)))
            ((MTIMES SIMP) ((RAT SIMP) 105. 16.)
             ((MPLUS SIMP) ((RAT SIMP) -1. 5.)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((RAT SIMP) -1. 3.)
                ((MEXPT SIMP
                  (61.
                   "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                   SRC |$calcPowers| 61.))
                 $Y 2.)))
              ((MEXPT SIMP
                (61.
                 "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                 SRC |$calcPowers| 61.))
               $Y 4.)))
            ((MTIMES SIMP) ((RAT SIMP) 35. 16.)
             ((MEXPT SIMP) 3. ((RAT SIMP) 3. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 4.)
               $Y)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $Y)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $X 2.)
                 $Y)))))
            ((MTIMES SIMP) ((RAT SIMP) 35. 16.)
             ((MEXPT SIMP) 3. ((RAT SIMP) 3. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $X)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $X)
                ((MTIMES SIMP) $X
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $Y 2.))))
              ((MTIMES SIMP) $X
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 4.))))))) 
(ADD2LNC '|$basisC| $VALUES) 
(DSKSETQ |$basisP|
         '((MLIST SIMP
            (10.
             "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/basis-precalc/basis-pre-calc.mac"
             SRC |$writeBasisToFile| 7.))
           ((MLIST SIMP
             (31.
              "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
              SRC |$gsOrthoNorm| 29.))
            ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.))
            ((MTIMES SIMP) ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 1. 2.)) $X)
            ((MTIMES SIMP) ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 1. 2.)) $Y)
            ((MTIMES SIMP) ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 1. 2.)) $VX)
            ((MTIMES SIMP) ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 1. 2.)) $VY)
            ((MTIMES SIMP) ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 1. 2.)) $VZ)
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.)) $X $Y)
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.)) $VX $X)
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.)) $VX $Y)
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.)) $VY $X)
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.)) $VY $Y)
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.)) $VX $VY)
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.)) $VZ $X)
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.)) $VZ $Y)
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.)) $VX $VZ)
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.)) $VY $VZ)
            ((MTIMES SIMP) ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 3. 2.)) $VX $X $Y)
            ((MTIMES SIMP) ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 3. 2.)) $VY $X $Y)
            ((MTIMES SIMP) ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 3. 2.)) $VX $VY $X)
            ((MTIMES SIMP) ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 3. 2.)) $VX $VY $Y)
            ((MTIMES SIMP) ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 3. 2.)) $VZ $X $Y)
            ((MTIMES SIMP) ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 3. 2.)) $VX $VZ $X)
            ((MTIMES SIMP) ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 3. 2.)) $VX $VZ $Y)
            ((MTIMES SIMP) ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 3. 2.)) $VY $VZ $X)
            ((MTIMES SIMP) ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 3. 2.)) $VY $VZ $Y)
            ((MTIMES SIMP) ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 3. 2.)) $VX $VY $VZ)
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.)) $VX $VY $X
             $Y)
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.)) $VX $VZ $X
             $Y)
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.)) $VY $VZ $X
             $Y)
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.)) $VX $VY $VZ
             $X)
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.)) $VX $VY $VZ
             $Y)
            ((MTIMES SIMP) ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 5. 2.)) $VX $VY $VZ $X $Y))
           ((MLIST SIMP
             (31.
              "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
              SRC |$gsOrthoNorm| 29.))
            ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.))
            ((MTIMES SIMP) ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 1. 2.)) $X)
            ((MTIMES SIMP) ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 1. 2.)) $Y)
            ((MTIMES SIMP) ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 1. 2.)) $VX)
            ((MTIMES SIMP) ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 1. 2.)) $VY)
            ((MTIMES SIMP) ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 1. 2.)) $VZ)
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.)) $X $Y)
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.)) $VX $X)
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.)) $VX $Y)
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.)) $VY $X)
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.)) $VY $Y)
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.)) $VX $VY)
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.)) $VZ $X)
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.)) $VZ $Y)
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.)) $VX $VZ)
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.)) $VY $VZ)
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((RAT SIMP) -1. 3.)
              ((MEXPT SIMP
                (61.
                 "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                 SRC |$calcPowers| 61.))
               $X 2.)))
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((RAT SIMP) -1. 3.)
              ((MEXPT SIMP
                (61.
                 "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                 SRC |$calcPowers| 61.))
               $Y 2.)))
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((RAT SIMP) -1. 3.)
              ((MEXPT SIMP
                (61.
                 "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                 SRC |$calcPowers| 61.))
               $VX 2.)))
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((RAT SIMP) -1. 3.)
              ((MEXPT SIMP
                (61.
                 "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                 SRC |$calcPowers| 61.))
               $VY 2.)))
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((RAT SIMP) -1. 3.)
              ((MEXPT SIMP
                (61.
                 "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                 SRC |$calcPowers| 61.))
               $VZ 2.)))
            ((MTIMES SIMP) ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 3. 2.)) $VX $X $Y)
            ((MTIMES SIMP) ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 3. 2.)) $VY $X $Y)
            ((MTIMES SIMP) ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 3. 2.)) $VX $VY $X)
            ((MTIMES SIMP) ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 3. 2.)) $VX $VY $Y)
            ((MTIMES SIMP) ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 3. 2.)) $VZ $X $Y)
            ((MTIMES SIMP) ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 3. 2.)) $VX $VZ $X)
            ((MTIMES SIMP) ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 3. 2.)) $VX $VZ $Y)
            ((MTIMES SIMP) ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 3. 2.)) $VY $VZ $X)
            ((MTIMES SIMP) ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 3. 2.)) $VY $VZ $Y)
            ((MTIMES SIMP) ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 3. 2.)) $VX $VY $VZ)
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.)
               $Y)))
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $X)
              ((MTIMES SIMP) $X
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))))
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.))))
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))))
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $X)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               $X)))
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               $Y)))
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY)
              ((MTIMES SIMP) $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.))))
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY)
              ((MTIMES SIMP) $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))))
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               $VY)))
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $X)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               $X)))
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               $Y)))
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.))))
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ)
              ((MTIMES SIMP) $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.))))
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ)
              ((MTIMES SIMP) $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))))
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               $VZ)))
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               $VZ)))
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $X)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.)
               $X)))
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.)
               $Y)))
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.))))
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY)
              ((MTIMES SIMP) $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.))))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.)) $VX $VY $X
             $Y)
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.)) $VX $VZ $X
             $Y)
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.)) $VY $VZ $X
             $Y)
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.)) $VX $VY $VZ
             $X)
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.)) $VX $VY $VZ
             $Y)
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $Y)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.)
               $Y)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $X)
              ((MTIMES SIMP) $VX $X
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $X $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               $X $Y)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $Y)
              ((MTIMES SIMP) $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.)
               $Y)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $X)
              ((MTIMES SIMP) $VY $X
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VY)
              ((MTIMES SIMP) $VX $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.))))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VY)
              ((MTIMES SIMP) $VX $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $X)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               $VY $X)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               $VY $Y)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $X $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               $X $Y)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $X)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               $X)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $Y)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               $Y)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ $Y)
              ((MTIMES SIMP) $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.)
               $Y)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ $X)
              ((MTIMES SIMP) $VZ $X
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VZ)
              ((MTIMES SIMP) $VX $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.))))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VZ)
              ((MTIMES SIMP) $VX $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ $X)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               $VZ $X)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               $VZ $Y)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $VZ)
              ((MTIMES SIMP) $VY $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.))))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $VZ)
              ((MTIMES SIMP) $VY $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $VZ)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               $VY $VZ)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ $X)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               $VZ $X)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               $VZ $Y)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VZ)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               $VZ)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $X $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.)
               $X $Y)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $X)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.)
               $X)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $Y)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.)
               $Y)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $X)
              ((MTIMES SIMP) $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.)
               $X)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $Y)
              ((MTIMES SIMP) $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.)
               $Y)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VY)
              ((MTIMES SIMP) $VX $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.))))
            ((MTIMES SIMP) ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 5. 2.)) $VX $VY $VZ $X $Y)
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VY $Y)
              ((MTIMES SIMP) $VX $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.)
               $Y)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VY $X)
              ((MTIMES SIMP) $VX $VY $X
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $X $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               $VY $X $Y)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $X $Y)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               $X $Y)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VZ $Y)
              ((MTIMES SIMP) $VX $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.)
               $Y)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VZ $X)
              ((MTIMES SIMP) $VX $VZ $X
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ $X $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               $VZ $X $Y)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $VZ $Y)
              ((MTIMES SIMP) $VY $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.)
               $Y)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $VZ $X)
              ((MTIMES SIMP) $VY $VZ $X
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VY $VZ)
              ((MTIMES SIMP) $VX $VY $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.))))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VY $VZ)
              ((MTIMES SIMP) $VX $VY $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $VZ $X)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               $VY $VZ $X)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $VZ $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               $VY $VZ $Y)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ $X $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               $VZ $X $Y)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VZ $X)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               $VZ $X)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VZ $Y)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               $VZ $Y)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $X $Y)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.)
               $X $Y)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $X $Y)
              ((MTIMES SIMP) $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.)
               $X $Y)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VY $X)
              ((MTIMES SIMP) $VX $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.)
               $X)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VY $Y)
              ((MTIMES SIMP) $VX $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.)
               $Y)))
            ((MTIMES SIMP) 27. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VY $VZ $Y)
              ((MTIMES SIMP) $VX $VY $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.)
               $Y)))
            ((MTIMES SIMP) 27. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VY $VZ $X)
              ((MTIMES SIMP) $VX $VY $VZ $X
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))))
            ((MTIMES SIMP) 27. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $VZ $X $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               $VY $VZ $X $Y)))
            ((MTIMES SIMP) 27. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VZ $X $Y)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               $VZ $X $Y)))
            ((MTIMES SIMP) 27. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VY $X $Y)
              ((MTIMES SIMP) $VX $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.)
               $X $Y))))
           ((MLIST SIMP
             (31.
              "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
              SRC |$gsOrthoNorm| 29.))
            ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.))
            ((MTIMES SIMP) ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 1. 2.)) $X)
            ((MTIMES SIMP) ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 1. 2.)) $Y)
            ((MTIMES SIMP) ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 1. 2.)) $VX)
            ((MTIMES SIMP) ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 1. 2.)) $VY)
            ((MTIMES SIMP) ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 1. 2.)) $VZ)
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.)) $X $Y)
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.)) $VX $X)
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.)) $VX $Y)
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.)) $VY $X)
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.)) $VY $Y)
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.)) $VX $VY)
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.)) $VZ $X)
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.)) $VZ $Y)
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.)) $VX $VZ)
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.)) $VY $VZ)
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((RAT SIMP) -1. 3.)
              ((MEXPT SIMP
                (61.
                 "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                 SRC |$calcPowers| 61.))
               $X 2.)))
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((RAT SIMP) -1. 3.)
              ((MEXPT SIMP
                (61.
                 "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                 SRC |$calcPowers| 61.))
               $Y 2.)))
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((RAT SIMP) -1. 3.)
              ((MEXPT SIMP
                (61.
                 "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                 SRC |$calcPowers| 61.))
               $VX 2.)))
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((RAT SIMP) -1. 3.)
              ((MEXPT SIMP
                (61.
                 "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                 SRC |$calcPowers| 61.))
               $VY 2.)))
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((RAT SIMP) -1. 3.)
              ((MEXPT SIMP
                (61.
                 "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                 SRC |$calcPowers| 61.))
               $VZ 2.)))
            ((MTIMES SIMP) ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 3. 2.)) $VX $X $Y)
            ((MTIMES SIMP) ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 3. 2.)) $VY $X $Y)
            ((MTIMES SIMP) ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 3. 2.)) $VX $VY $X)
            ((MTIMES SIMP) ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 3. 2.)) $VX $VY $Y)
            ((MTIMES SIMP) ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 3. 2.)) $VZ $X $Y)
            ((MTIMES SIMP) ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 3. 2.)) $VX $VZ $X)
            ((MTIMES SIMP) ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 3. 2.)) $VX $VZ $Y)
            ((MTIMES SIMP) ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 3. 2.)) $VY $VZ $X)
            ((MTIMES SIMP) ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 3. 2.)) $VY $VZ $Y)
            ((MTIMES SIMP) ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 3. 2.)) $VX $VY $VZ)
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.)
               $Y)))
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $X)
              ((MTIMES SIMP) $X
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))))
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.))))
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))))
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $X)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               $X)))
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               $Y)))
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY)
              ((MTIMES SIMP) $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.))))
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY)
              ((MTIMES SIMP) $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))))
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               $VY)))
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $X)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               $X)))
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               $Y)))
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.))))
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ)
              ((MTIMES SIMP) $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.))))
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ)
              ((MTIMES SIMP) $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))))
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               $VZ)))
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               $VZ)))
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $X)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.)
               $X)))
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.)
               $Y)))
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.))))
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY)
              ((MTIMES SIMP) $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.))))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $X)
              ((MEXPT SIMP
                (61.
                 "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                 SRC |$calcPowers| 61.))
               $X 3.)))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $Y)
              ((MEXPT SIMP
                (61.
                 "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                 SRC |$calcPowers| 61.))
               $Y 3.)))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX)
              ((MEXPT SIMP
                (61.
                 "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                 SRC |$calcPowers| 61.))
               $VX 3.)))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VY)
              ((MEXPT SIMP
                (61.
                 "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                 SRC |$calcPowers| 61.))
               $VY 3.)))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VZ)
              ((MEXPT SIMP
                (61.
                 "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                 SRC |$calcPowers| 61.))
               $VZ 3.)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.)) $VX $VY $X
             $Y)
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.)) $VX $VZ $X
             $Y)
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.)) $VY $VZ $X
             $Y)
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.)) $VX $VY $VZ
             $X)
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.)) $VX $VY $VZ
             $Y)
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $Y)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.)
               $Y)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $X)
              ((MTIMES SIMP) $VX $X
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $X $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               $X $Y)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $Y)
              ((MTIMES SIMP) $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.)
               $Y)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $X)
              ((MTIMES SIMP) $VY $X
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VY)
              ((MTIMES SIMP) $VX $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.))))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VY)
              ((MTIMES SIMP) $VX $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $X)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               $VY $X)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               $VY $Y)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $X $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               $X $Y)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $X)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               $X)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $Y)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               $Y)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ $Y)
              ((MTIMES SIMP) $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.)
               $Y)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ $X)
              ((MTIMES SIMP) $VZ $X
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VZ)
              ((MTIMES SIMP) $VX $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.))))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VZ)
              ((MTIMES SIMP) $VX $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ $X)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               $VZ $X)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               $VZ $Y)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $VZ)
              ((MTIMES SIMP) $VY $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.))))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $VZ)
              ((MTIMES SIMP) $VY $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $VZ)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               $VY $VZ)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ $X)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               $VZ $X)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               $VZ $Y)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VZ)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               $VZ)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $X $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.)
               $X $Y)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $X)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.)
               $X)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $Y)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.)
               $Y)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $X)
              ((MTIMES SIMP) $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.)
               $X)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $Y)
              ((MTIMES SIMP) $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.)
               $Y)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VY)
              ((MTIMES SIMP) $VX $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.))))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $X $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 3.)
               $Y)))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $X $Y)
              ((MTIMES SIMP) $X
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 3.))))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $X)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 3.))))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $Y)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 3.))))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $X)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 3.)
               $X)))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 3.)
               $Y)))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VY $X)
              ((MTIMES SIMP) $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 3.))))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VY $Y)
              ((MTIMES SIMP) $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 3.))))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VY)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 3.)
               $VY)))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VY $X)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 3.)
               $X)))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VY $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 3.)
               $Y)))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VY)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 3.))))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VZ $X)
              ((MTIMES SIMP) $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 3.))))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VZ $Y)
              ((MTIMES SIMP) $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 3.))))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VZ)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 3.)
               $VZ)))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VY $VZ)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 3.)
               $VZ)))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VZ $X)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 3.)
               $X)))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VZ $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 3.)
               $Y)))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VZ)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 3.))))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VY $VZ)
              ((MTIMES SIMP) $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 3.))))
            ((MTIMES SIMP) ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 5. 2.)) $VX $VY $VZ $X $Y)
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VY $Y)
              ((MTIMES SIMP) $VX $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.)
               $Y)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VY $X)
              ((MTIMES SIMP) $VX $VY $X
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $X $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               $VY $X $Y)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $X $Y)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               $X $Y)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VZ $Y)
              ((MTIMES SIMP) $VX $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.)
               $Y)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VZ $X)
              ((MTIMES SIMP) $VX $VZ $X
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ $X $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               $VZ $X $Y)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $VZ $Y)
              ((MTIMES SIMP) $VY $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.)
               $Y)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $VZ $X)
              ((MTIMES SIMP) $VY $VZ $X
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VY $VZ)
              ((MTIMES SIMP) $VX $VY $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.))))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VY $VZ)
              ((MTIMES SIMP) $VX $VY $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $VZ $X)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               $VY $VZ $X)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $VZ $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               $VY $VZ $Y)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ $X $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               $VZ $X $Y)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VZ $X)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               $VZ $X)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VZ $Y)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               $VZ $Y)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $X $Y)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.)
               $X $Y)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $X $Y)
              ((MTIMES SIMP) $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.)
               $X $Y)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VY $X)
              ((MTIMES SIMP) $VX $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.)
               $X)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VY $Y)
              ((MTIMES SIMP) $VX $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.)
               $Y)))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $X $Y)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 3.)
               $Y)))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $X $Y)
              ((MTIMES SIMP) $VX $X
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 3.))))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $X $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 3.)
               $X $Y)))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VY $X $Y)
              ((MTIMES SIMP) $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 3.)
               $Y)))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VY $X $Y)
              ((MTIMES SIMP) $VY $X
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 3.))))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VY $X)
              ((MTIMES SIMP) $VX $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 3.))))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VY $Y)
              ((MTIMES SIMP) $VX $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 3.))))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VY $X)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 3.)
               $VY $X)))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VY $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 3.)
               $VY $Y)))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VY $X $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 3.)
               $X $Y)))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VY $X)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 3.)
               $X)))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VY $Y)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 3.)
               $Y)))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VZ $X $Y)
              ((MTIMES SIMP) $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 3.)
               $Y)))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VZ $X $Y)
              ((MTIMES SIMP) $VZ $X
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 3.))))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VZ $X)
              ((MTIMES SIMP) $VX $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 3.))))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VZ $Y)
              ((MTIMES SIMP) $VX $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 3.))))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VZ $X)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 3.)
               $VZ $X)))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VZ $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 3.)
               $VZ $Y)))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VY $VZ $X)
              ((MTIMES SIMP) $VY $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 3.))))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VY $VZ $Y)
              ((MTIMES SIMP) $VY $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 3.))))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VY $VZ)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 3.)
               $VY $VZ)))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VY $VZ $X)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 3.)
               $VZ $X)))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VY $VZ $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 3.)
               $VZ $Y)))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VY $VZ)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 3.)
               $VZ)))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VZ $X $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 3.)
               $X $Y)))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VZ $X)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 3.)
               $X)))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VZ $Y)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 3.)
               $Y)))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VY $VZ $X)
              ((MTIMES SIMP) $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 3.)
               $X)))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VY $VZ $Y)
              ((MTIMES SIMP) $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 3.)
               $Y)))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VY $VZ)
              ((MTIMES SIMP) $VX $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 3.))))
            ((MTIMES SIMP) 27. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VY $VZ $Y)
              ((MTIMES SIMP) $VX $VY $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.)
               $Y)))
            ((MTIMES SIMP) 27. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VY $VZ $X)
              ((MTIMES SIMP) $VX $VY $VZ $X
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))))
            ((MTIMES SIMP) 27. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $VZ $X $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               $VY $VZ $X $Y)))
            ((MTIMES SIMP) 27. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VZ $X $Y)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               $VZ $X $Y)))
            ((MTIMES SIMP) 27. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VY $X $Y)
              ((MTIMES SIMP) $VX $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.)
               $X $Y)))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VY $X $Y)
              ((MTIMES SIMP) $VX $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 3.)
               $Y)))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VY $X $Y)
              ((MTIMES SIMP) $VX $VY $X
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 3.))))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VY $X $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 3.)
               $VY $X $Y)))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VY $X $Y)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 3.)
               $X $Y)))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VZ $X $Y)
              ((MTIMES SIMP) $VX $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 3.)
               $Y)))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VZ $X $Y)
              ((MTIMES SIMP) $VX $VZ $X
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 3.))))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VZ $X $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 3.)
               $VZ $X $Y)))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VY $VZ $X $Y)
              ((MTIMES SIMP) $VY $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 3.)
               $Y)))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VY $VZ $X $Y)
              ((MTIMES SIMP) $VY $VZ $X
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 3.))))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VY $VZ $X)
              ((MTIMES SIMP) $VX $VY $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 3.))))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VY $VZ $Y)
              ((MTIMES SIMP) $VX $VY $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 3.))))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VY $VZ $X)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 3.)
               $VY $VZ $X)))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VY $VZ $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 3.)
               $VY $VZ $Y)))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VY $VZ $X $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 3.)
               $VZ $X $Y)))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VY $VZ $X)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 3.)
               $VZ $X)))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VY $VZ $Y)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 3.)
               $VZ $Y)))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VZ $X $Y)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 3.)
               $X $Y)))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VY $VZ $X $Y)
              ((MTIMES SIMP) $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 3.)
               $X $Y)))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VY $VZ $X)
              ((MTIMES SIMP) $VX $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 3.)
               $X)))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VY $VZ $Y)
              ((MTIMES SIMP) $VX $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 3.)
               $Y)))
            ((MTIMES SIMP) 45. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP)
              ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VY $VZ $X $Y)
              ((MTIMES SIMP) $VX $VY $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 3.)
               $Y)))
            ((MTIMES SIMP) 45. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP)
              ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VY $VZ $X $Y)
              ((MTIMES SIMP) $VX $VY $VZ $X
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 3.))))
            ((MTIMES SIMP) 45. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP)
              ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VY $VZ $X $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 3.)
               $VY $VZ $X $Y)))
            ((MTIMES SIMP) 45. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP)
              ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VY $VZ $X $Y)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 3.)
               $VZ $X $Y)))
            ((MTIMES SIMP) 45. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP)
              ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VY $VZ $X $Y)
              ((MTIMES SIMP) $VX $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 3.)
               $X $Y))))
           ((MLIST SIMP
             (31.
              "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
              SRC |$gsOrthoNorm| 29.))
            ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.))
            ((MTIMES SIMP) ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 1. 2.)) $X)
            ((MTIMES SIMP) ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 1. 2.)) $Y)
            ((MTIMES SIMP) ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 1. 2.)) $VX)
            ((MTIMES SIMP) ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 1. 2.)) $VY)
            ((MTIMES SIMP) ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 1. 2.)) $VZ)
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.)) $X $Y)
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.)) $VX $X)
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.)) $VX $Y)
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.)) $VY $X)
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.)) $VY $Y)
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.)) $VX $VY)
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.)) $VZ $X)
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.)) $VZ $Y)
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.)) $VX $VZ)
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.)) $VY $VZ)
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((RAT SIMP) -1. 3.)
              ((MEXPT SIMP
                (61.
                 "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                 SRC |$calcPowers| 61.))
               $X 2.)))
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((RAT SIMP) -1. 3.)
              ((MEXPT SIMP
                (61.
                 "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                 SRC |$calcPowers| 61.))
               $Y 2.)))
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((RAT SIMP) -1. 3.)
              ((MEXPT SIMP
                (61.
                 "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                 SRC |$calcPowers| 61.))
               $VX 2.)))
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((RAT SIMP) -1. 3.)
              ((MEXPT SIMP
                (61.
                 "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                 SRC |$calcPowers| 61.))
               $VY 2.)))
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((RAT SIMP) -1. 3.)
              ((MEXPT SIMP
                (61.
                 "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                 SRC |$calcPowers| 61.))
               $VZ 2.)))
            ((MTIMES SIMP) ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 3. 2.)) $VX $X $Y)
            ((MTIMES SIMP) ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 3. 2.)) $VY $X $Y)
            ((MTIMES SIMP) ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 3. 2.)) $VX $VY $X)
            ((MTIMES SIMP) ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 3. 2.)) $VX $VY $Y)
            ((MTIMES SIMP) ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 3. 2.)) $VZ $X $Y)
            ((MTIMES SIMP) ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 3. 2.)) $VX $VZ $X)
            ((MTIMES SIMP) ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 3. 2.)) $VX $VZ $Y)
            ((MTIMES SIMP) ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 3. 2.)) $VY $VZ $X)
            ((MTIMES SIMP) ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 3. 2.)) $VY $VZ $Y)
            ((MTIMES SIMP) ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 3. 2.)) $VX $VY $VZ)
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.)
               $Y)))
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $X)
              ((MTIMES SIMP) $X
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))))
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.))))
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))))
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $X)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               $X)))
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               $Y)))
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY)
              ((MTIMES SIMP) $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.))))
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY)
              ((MTIMES SIMP) $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))))
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               $VY)))
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $X)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               $X)))
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               $Y)))
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.))))
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ)
              ((MTIMES SIMP) $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.))))
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ)
              ((MTIMES SIMP) $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))))
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               $VZ)))
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               $VZ)))
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $X)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.)
               $X)))
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.)
               $Y)))
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.))))
            ((MTIMES SIMP) 3. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY)
              ((MTIMES SIMP) $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.))))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $X)
              ((MEXPT SIMP
                (61.
                 "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                 SRC |$calcPowers| 61.))
               $X 3.)))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $Y)
              ((MEXPT SIMP
                (61.
                 "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                 SRC |$calcPowers| 61.))
               $Y 3.)))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX)
              ((MEXPT SIMP
                (61.
                 "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                 SRC |$calcPowers| 61.))
               $VX 3.)))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VY)
              ((MEXPT SIMP
                (61.
                 "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                 SRC |$calcPowers| 61.))
               $VY 3.)))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VZ)
              ((MEXPT SIMP
                (61.
                 "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                 SRC |$calcPowers| 61.))
               $VZ 3.)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.)) $VX $VY $X
             $Y)
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.)) $VX $VZ $X
             $Y)
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.)) $VY $VZ $X
             $Y)
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.)) $VX $VY $VZ
             $X)
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.)) $VX $VY $VZ
             $Y)
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $Y)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.)
               $Y)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $X)
              ((MTIMES SIMP) $VX $X
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $X $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               $X $Y)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $Y)
              ((MTIMES SIMP) $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.)
               $Y)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $X)
              ((MTIMES SIMP) $VY $X
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VY)
              ((MTIMES SIMP) $VX $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.))))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VY)
              ((MTIMES SIMP) $VX $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $X)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               $VY $X)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               $VY $Y)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $X $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               $X $Y)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $X)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               $X)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $Y)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               $Y)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ $Y)
              ((MTIMES SIMP) $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.)
               $Y)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ $X)
              ((MTIMES SIMP) $VZ $X
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VZ)
              ((MTIMES SIMP) $VX $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.))))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VZ)
              ((MTIMES SIMP) $VX $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ $X)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               $VZ $X)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               $VZ $Y)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $VZ)
              ((MTIMES SIMP) $VY $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.))))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $VZ)
              ((MTIMES SIMP) $VY $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $VZ)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               $VY $VZ)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ $X)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               $VZ $X)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               $VZ $Y)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VZ)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               $VZ)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $X $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.)
               $X $Y)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $X)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.)
               $X)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $Y)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.)
               $Y)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $X)
              ((MTIMES SIMP) $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.)
               $X)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $Y)
              ((MTIMES SIMP) $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.)
               $Y)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VY)
              ((MTIMES SIMP) $VX $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.))))
            ((MTIMES SIMP) 45. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MPLUS SIMP) ((RAT SIMP) -1. 9.)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((RAT SIMP) -1. 3.)
                ((MEXPT SIMP
                  (61.
                   "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                   SRC |$calcPowers| 61.))
                 $X 2.)))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((RAT SIMP) -1. 3.)
                ((MEXPT SIMP
                  (61.
                   "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                   SRC |$calcPowers| 61.))
                 $Y 2.)))
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))))
            ((MTIMES SIMP) 45. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MPLUS SIMP) ((RAT SIMP) -1. 9.)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((RAT SIMP) -1. 3.)
                ((MEXPT SIMP
                  (61.
                   "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                   SRC |$calcPowers| 61.))
                 $VX 2.)))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((RAT SIMP) -1. 3.)
                ((MEXPT SIMP
                  (61.
                   "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                   SRC |$calcPowers| 61.))
                 $X 2.)))
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.))))
            ((MTIMES SIMP) 45. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MPLUS SIMP) ((RAT SIMP) -1. 9.)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((RAT SIMP) -1. 3.)
                ((MEXPT SIMP
                  (61.
                   "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                   SRC |$calcPowers| 61.))
                 $VX 2.)))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((RAT SIMP) -1. 3.)
                ((MEXPT SIMP
                  (61.
                   "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                   SRC |$calcPowers| 61.))
                 $Y 2.)))
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))))
            ((MTIMES SIMP) 45. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MPLUS SIMP) ((RAT SIMP) -1. 9.)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((RAT SIMP) -1. 3.)
                ((MEXPT SIMP
                  (61.
                   "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                   SRC |$calcPowers| 61.))
                 $VY 2.)))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((RAT SIMP) -1. 3.)
                ((MEXPT SIMP
                  (61.
                   "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                   SRC |$calcPowers| 61.))
                 $X 2.)))
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.))))
            ((MTIMES SIMP) 45. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MPLUS SIMP) ((RAT SIMP) -1. 9.)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((RAT SIMP) -1. 3.)
                ((MEXPT SIMP
                  (61.
                   "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                   SRC |$calcPowers| 61.))
                 $VY 2.)))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((RAT SIMP) -1. 3.)
                ((MEXPT SIMP
                  (61.
                   "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                   SRC |$calcPowers| 61.))
                 $Y 2.)))
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))))
            ((MTIMES SIMP) 45. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MPLUS SIMP) ((RAT SIMP) -1. 9.)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((RAT SIMP) -1. 3.)
                ((MEXPT SIMP
                  (61.
                   "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                   SRC |$calcPowers| 61.))
                 $VX 2.)))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((RAT SIMP) -1. 3.)
                ((MEXPT SIMP
                  (61.
                   "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                   SRC |$calcPowers| 61.))
                 $VY 2.)))
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.))))
            ((MTIMES SIMP) 45. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MPLUS SIMP) ((RAT SIMP) -1. 9.)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((RAT SIMP) -1. 3.)
                ((MEXPT SIMP
                  (61.
                   "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                   SRC |$calcPowers| 61.))
                 $VZ 2.)))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((RAT SIMP) -1. 3.)
                ((MEXPT SIMP
                  (61.
                   "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                   SRC |$calcPowers| 61.))
                 $X 2.)))
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.))))
            ((MTIMES SIMP) 45. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MPLUS SIMP) ((RAT SIMP) -1. 9.)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((RAT SIMP) -1. 3.)
                ((MEXPT SIMP
                  (61.
                   "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                   SRC |$calcPowers| 61.))
                 $VZ 2.)))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((RAT SIMP) -1. 3.)
                ((MEXPT SIMP
                  (61.
                   "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                   SRC |$calcPowers| 61.))
                 $Y 2.)))
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))))
            ((MTIMES SIMP) 45. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MPLUS SIMP) ((RAT SIMP) -1. 9.)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((RAT SIMP) -1. 3.)
                ((MEXPT SIMP
                  (61.
                   "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                   SRC |$calcPowers| 61.))
                 $VX 2.)))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((RAT SIMP) -1. 3.)
                ((MEXPT SIMP
                  (61.
                   "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                   SRC |$calcPowers| 61.))
                 $VZ 2.)))
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.))))
            ((MTIMES SIMP) 45. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MPLUS SIMP) ((RAT SIMP) -1. 9.)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((RAT SIMP) -1. 3.)
                ((MEXPT SIMP
                  (61.
                   "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                   SRC |$calcPowers| 61.))
                 $VY 2.)))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((RAT SIMP) -1. 3.)
                ((MEXPT SIMP
                  (61.
                   "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                   SRC |$calcPowers| 61.))
                 $VZ 2.)))
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.))))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $X $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 3.)
               $Y)))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $X $Y)
              ((MTIMES SIMP) $X
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 3.))))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $X)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 3.))))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $Y)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 3.))))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $X)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 3.)
               $X)))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 3.)
               $Y)))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VY $X)
              ((MTIMES SIMP) $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 3.))))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VY $Y)
              ((MTIMES SIMP) $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 3.))))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VY)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 3.)
               $VY)))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VY $X)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 3.)
               $X)))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VY $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 3.)
               $Y)))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VY)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 3.))))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VZ $X)
              ((MTIMES SIMP) $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 3.))))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VZ $Y)
              ((MTIMES SIMP) $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 3.))))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VZ)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 3.)
               $VZ)))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VY $VZ)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 3.)
               $VZ)))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VZ $X)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 3.)
               $X)))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VZ $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 3.)
               $Y)))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VZ)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 3.))))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VY $VZ)
              ((MTIMES SIMP) $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 3.))))
            ((MTIMES SIMP) 105. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MPLUS SIMP) ((RAT SIMP) -1. 5.)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((RAT SIMP) -1. 3.)
                ((MEXPT SIMP
                  (61.
                   "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                   SRC |$calcPowers| 61.))
                 $X 2.)))
              ((MEXPT SIMP
                (61.
                 "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                 SRC |$calcPowers| 61.))
               $X 4.)))
            ((MTIMES SIMP) 105. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MPLUS SIMP) ((RAT SIMP) -1. 5.)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((RAT SIMP) -1. 3.)
                ((MEXPT SIMP
                  (61.
                   "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                   SRC |$calcPowers| 61.))
                 $Y 2.)))
              ((MEXPT SIMP
                (61.
                 "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                 SRC |$calcPowers| 61.))
               $Y 4.)))
            ((MTIMES SIMP) 105. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MPLUS SIMP) ((RAT SIMP) -1. 5.)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((RAT SIMP) -1. 3.)
                ((MEXPT SIMP
                  (61.
                   "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                   SRC |$calcPowers| 61.))
                 $VX 2.)))
              ((MEXPT SIMP
                (61.
                 "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                 SRC |$calcPowers| 61.))
               $VX 4.)))
            ((MTIMES SIMP) 105. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MPLUS SIMP) ((RAT SIMP) -1. 5.)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((RAT SIMP) -1. 3.)
                ((MEXPT SIMP
                  (61.
                   "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                   SRC |$calcPowers| 61.))
                 $VY 2.)))
              ((MEXPT SIMP
                (61.
                 "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                 SRC |$calcPowers| 61.))
               $VY 4.)))
            ((MTIMES SIMP) 105. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MPLUS SIMP) ((RAT SIMP) -1. 5.)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((RAT SIMP) -1. 3.)
                ((MEXPT SIMP
                  (61.
                   "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                   SRC |$calcPowers| 61.))
                 $VZ 2.)))
              ((MEXPT SIMP
                (61.
                 "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                 SRC |$calcPowers| 61.))
               $VZ 4.)))
            ((MTIMES SIMP) ((MEXPT SIMP) 2. ((RAT SIMP) -5. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 5. 2.)) $VX $VY $VZ $X $Y)
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VY $Y)
              ((MTIMES SIMP) $VX $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.)
               $Y)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VY $X)
              ((MTIMES SIMP) $VX $VY $X
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $X $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               $VY $X $Y)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $X $Y)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               $X $Y)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VZ $Y)
              ((MTIMES SIMP) $VX $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.)
               $Y)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VZ $X)
              ((MTIMES SIMP) $VX $VZ $X
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ $X $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               $VZ $X $Y)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $VZ $Y)
              ((MTIMES SIMP) $VY $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.)
               $Y)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $VZ $X)
              ((MTIMES SIMP) $VY $VZ $X
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VY $VZ)
              ((MTIMES SIMP) $VX $VY $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.))))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VY $VZ)
              ((MTIMES SIMP) $VX $VY $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $VZ $X)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               $VY $VZ $X)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $VZ $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               $VY $VZ $Y)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ $X $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               $VZ $X $Y)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VZ $X)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               $VZ $X)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VZ $Y)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               $VZ $Y)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $X $Y)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.)
               $X $Y)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $X $Y)
              ((MTIMES SIMP) $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.)
               $X $Y)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VY $X)
              ((MTIMES SIMP) $VX $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.)
               $X)))
            ((MTIMES SIMP) 9. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 15. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VY $Y)
              ((MTIMES SIMP) $VX $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.)
               $Y)))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 5. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 9.) $VX)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX)
                ((MTIMES SIMP) $VX
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $X 2.))))
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX)
                ((MTIMES SIMP) $VX
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $Y 2.))))))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 5. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 9.) $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.)
               $Y)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $Y)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VX 2.)
                 $Y)))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $Y)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $X 2.)
                 $Y)))))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 5. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 9.) $X)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $X)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VX 2.)
                 $X)))
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               $X
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $X)
                ((MTIMES SIMP) $X
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $Y 2.))))))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 5. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 9.) $VY)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY)
                ((MTIMES SIMP) $VY
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $X 2.))))
              ((MTIMES SIMP) $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY)
                ((MTIMES SIMP) $VY
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $Y 2.))))))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 5. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 9.) $VY)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VX 2.)
                 $VY)))
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY)
                ((MTIMES SIMP) $VY
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $X 2.))))))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 5. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 9.) $VY)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VX 2.)
                 $VY)))
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY)
                ((MTIMES SIMP) $VY
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $Y 2.))))))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 5. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 9.) $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.)
               $Y)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $Y)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VY 2.)
                 $Y)))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $Y)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $X 2.)
                 $Y)))))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 5. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 9.) $X)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $X)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VY 2.)
                 $X)))
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               $X
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $X)
                ((MTIMES SIMP) $X
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $Y 2.))))))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 5. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 9.) $VX)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX)
                ((MTIMES SIMP) $VX
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VY 2.))))
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX)
                ((MTIMES SIMP) $VX
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $X 2.))))))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 5. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 9.) $VX)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX)
                ((MTIMES SIMP) $VX
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VY 2.))))
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX)
                ((MTIMES SIMP) $VX
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $Y 2.))))))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 5. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 9.) $X)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               $X)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $X)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VX 2.)
                 $X)))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $X)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VY 2.)
                 $X)))))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 5. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 9.) $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               $Y)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $Y)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VX 2.)
                 $Y)))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $Y)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VY 2.)
                 $Y)))))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 5. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 9.) $VZ)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ)
                ((MTIMES SIMP) $VZ
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $X 2.))))
              ((MTIMES SIMP) $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ)
                ((MTIMES SIMP) $VZ
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $Y 2.))))))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 5. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 9.) $VZ)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VX 2.)
                 $VZ)))
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ)
                ((MTIMES SIMP) $VZ
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $X 2.))))))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 5. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 9.) $VZ)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VX 2.)
                 $VZ)))
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ)
                ((MTIMES SIMP) $VZ
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $Y 2.))))))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 5. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 9.) $VZ)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VY 2.)
                 $VZ)))
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ)
                ((MTIMES SIMP) $VZ
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $X 2.))))))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 5. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 9.) $VZ)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VY 2.)
                 $VZ)))
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ)
                ((MTIMES SIMP) $VZ
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $Y 2.))))))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 5. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 9.) $VZ)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               $VZ)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VX 2.)
                 $VZ)))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VY 2.)
                 $VZ)))))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 5. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 9.) $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.)
               $Y)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $Y)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VZ 2.)
                 $Y)))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $Y)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $X 2.)
                 $Y)))))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 5. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 9.) $X)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $X)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VZ 2.)
                 $X)))
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.)
               $X
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $X)
                ((MTIMES SIMP) $X
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $Y 2.))))))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 5. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 9.) $VX)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX)
                ((MTIMES SIMP) $VX
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VZ 2.))))
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX)
                ((MTIMES SIMP) $VX
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $X 2.))))))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 5. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 9.) $VX)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX)
                ((MTIMES SIMP) $VX
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VZ 2.))))
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX)
                ((MTIMES SIMP) $VX
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $Y 2.))))))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 5. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 9.) $X)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.)
               $X)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $X)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VX 2.)
                 $X)))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $X)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VZ 2.)
                 $X)))))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 5. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 9.) $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.)
               $Y)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $Y)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VX 2.)
                 $Y)))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $Y)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VZ 2.)
                 $Y)))))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 5. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 9.) $VY)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY)
                ((MTIMES SIMP) $VY
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VZ 2.))))
              ((MTIMES SIMP) $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY)
                ((MTIMES SIMP) $VY
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $X 2.))))))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 5. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 9.) $VY)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY)
                ((MTIMES SIMP) $VY
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VZ 2.))))
              ((MTIMES SIMP) $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY)
                ((MTIMES SIMP) $VY
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $Y 2.))))))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 5. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 9.) $VY)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VX 2.)
                 $VY)))
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY)
                ((MTIMES SIMP) $VY
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VZ 2.))))))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 5. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 9.) $X)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.)
               $X)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $X)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VY 2.)
                 $X)))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $X)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VZ 2.)
                 $X)))))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 5. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 9.) $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.)
               $Y)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $Y)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VY 2.)
                 $Y)))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $Y)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VZ 2.)
                 $Y)))))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 5. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 9.) $VX)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX)
                ((MTIMES SIMP) $VX
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VY 2.))))
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX)
                ((MTIMES SIMP) $VX
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VZ 2.))))))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $X $Y)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 3.)
               $Y)))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $X $Y)
              ((MTIMES SIMP) $VX $X
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 3.))))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $X $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 3.)
               $X $Y)))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VY $X $Y)
              ((MTIMES SIMP) $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 3.)
               $Y)))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VY $X $Y)
              ((MTIMES SIMP) $VY $X
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 3.))))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VY $X)
              ((MTIMES SIMP) $VX $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 3.))))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VY $Y)
              ((MTIMES SIMP) $VX $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 3.))))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VY $X)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 3.)
               $VY $X)))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VY $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 3.)
               $VY $Y)))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VY $X $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 3.)
               $X $Y)))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VY $X)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 3.)
               $X)))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VY $Y)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 3.)
               $Y)))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VZ $X $Y)
              ((MTIMES SIMP) $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 3.)
               $Y)))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VZ $X $Y)
              ((MTIMES SIMP) $VZ $X
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 3.))))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VZ $X)
              ((MTIMES SIMP) $VX $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 3.))))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VZ $Y)
              ((MTIMES SIMP) $VX $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 3.))))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VZ $X)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 3.)
               $VZ $X)))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VZ $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 3.)
               $VZ $Y)))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VY $VZ $X)
              ((MTIMES SIMP) $VY $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 3.))))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VY $VZ $Y)
              ((MTIMES SIMP) $VY $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 3.))))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VY $VZ)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 3.)
               $VY $VZ)))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VY $VZ $X)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 3.)
               $VZ $X)))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VY $VZ $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 3.)
               $VZ $Y)))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VY $VZ)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 3.)
               $VZ)))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VZ $X $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 3.)
               $X $Y)))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VZ $X)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 3.)
               $X)))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VZ $Y)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 3.)
               $Y)))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VY $VZ $X)
              ((MTIMES SIMP) $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 3.)
               $X)))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VY $VZ $Y)
              ((MTIMES SIMP) $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 3.)
               $Y)))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VY $VZ)
              ((MTIMES SIMP) $VX $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 3.))))
            ((MTIMES SIMP) 35. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 3. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 4.)
               $Y)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $Y)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $X 2.)
                 $Y)))))
            ((MTIMES SIMP) 35. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 3. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $X)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $X)
                ((MTIMES SIMP) $X
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $Y 2.))))
              ((MTIMES SIMP) $X
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 4.))))
            ((MTIMES SIMP) 35. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 3. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $VX)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX)
                ((MTIMES SIMP) $VX
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $X 2.))))
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 4.))))
            ((MTIMES SIMP) 35. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 3. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $VX)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX)
                ((MTIMES SIMP) $VX
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $Y 2.))))
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 4.))))
            ((MTIMES SIMP) 35. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 3. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $X)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 4.)
               $X)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $X)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VX 2.)
                 $X)))))
            ((MTIMES SIMP) 35. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 3. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 4.)
               $Y)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $Y)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VX 2.)
                 $Y)))))
            ((MTIMES SIMP) 35. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 3. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $VY)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY)
                ((MTIMES SIMP) $VY
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $X 2.))))
              ((MTIMES SIMP) $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 4.))))
            ((MTIMES SIMP) 35. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 3. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $VY)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY)
                ((MTIMES SIMP) $VY
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $Y 2.))))
              ((MTIMES SIMP) $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 4.))))
            ((MTIMES SIMP) 35. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 3. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $VY)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 4.)
               $VY)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VX 2.)
                 $VY)))))
            ((MTIMES SIMP) 35. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 3. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $X)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 4.)
               $X)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $X)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VY 2.)
                 $X)))))
            ((MTIMES SIMP) 35. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 3. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 4.)
               $Y)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $Y)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VY 2.)
                 $Y)))))
            ((MTIMES SIMP) 35. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 3. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $VX)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX)
                ((MTIMES SIMP) $VX
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VY 2.))))
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 4.))))
            ((MTIMES SIMP) 35. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 3. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $VZ)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ)
                ((MTIMES SIMP) $VZ
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $X 2.))))
              ((MTIMES SIMP) $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 4.))))
            ((MTIMES SIMP) 35. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 3. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $VZ)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ)
                ((MTIMES SIMP) $VZ
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $Y 2.))))
              ((MTIMES SIMP) $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 4.))))
            ((MTIMES SIMP) 35. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 3. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $VZ)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 4.)
               $VZ)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VX 2.)
                 $VZ)))))
            ((MTIMES SIMP) 35. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 3. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $VZ)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 4.)
               $VZ)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VY 2.)
                 $VZ)))))
            ((MTIMES SIMP) 35. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 3. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $X)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 4.)
               $X)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $X)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VZ 2.)
                 $X)))))
            ((MTIMES SIMP) 35. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 3. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 4.)
               $Y)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $Y)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VZ 2.)
                 $Y)))))
            ((MTIMES SIMP) 35. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 3. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $VX)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX)
                ((MTIMES SIMP) $VX
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VZ 2.))))
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 4.))))
            ((MTIMES SIMP) 35. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 3. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $VY)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY)
                ((MTIMES SIMP) $VY
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VZ 2.))))
              ((MTIMES SIMP) $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 4.))))
            ((MTIMES SIMP) 27. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VY $VZ $Y)
              ((MTIMES SIMP) $VX $VY $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.)
               $Y)))
            ((MTIMES SIMP) 27. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VY $VZ $X)
              ((MTIMES SIMP) $VX $VY $VZ $X
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))))
            ((MTIMES SIMP) 27. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $VZ $X $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               $VY $VZ $X $Y)))
            ((MTIMES SIMP) 27. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VZ $X $Y)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               $VZ $X $Y)))
            ((MTIMES SIMP) 27. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 5. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VY $X $Y)
              ((MTIMES SIMP) $VX $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.)
               $X $Y)))
            ((MTIMES SIMP) 135. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 9.) $VX $VY)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VY)
                ((MTIMES SIMP) $VX $VY
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $X 2.))))
              ((MTIMES SIMP) $VX $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VY)
                ((MTIMES SIMP) $VX $VY
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $Y 2.))))))
            ((MTIMES SIMP) 135. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 9.) $VY $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.)
               $Y)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $Y)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VX 2.)
                 $VY $Y)))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $Y)
                ((MTIMES SIMP) $VY
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $X 2.)
                 $Y)))))
            ((MTIMES SIMP) 135. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 9.) $VY $X)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $X)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VX 2.)
                 $VY $X)))
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               $VY $X
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $X)
                ((MTIMES SIMP) $VY $X
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $Y 2.))))))
            ((MTIMES SIMP) 135. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 9.) $VX $Y)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.)
               $Y)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $Y)
                ((MTIMES SIMP) $VX
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VY 2.)
                 $Y)))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $Y)
                ((MTIMES SIMP) $VX
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $X 2.)
                 $Y)))))
            ((MTIMES SIMP) 135. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 9.) $VX $X)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $X)
                ((MTIMES SIMP) $VX
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VY 2.)
                 $X)))
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               $X
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $X)
                ((MTIMES SIMP) $VX $X
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $Y 2.))))))
            ((MTIMES SIMP) 135. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 9.) $X $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               $X $Y)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $X $Y)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VX 2.)
                 $X $Y)))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $X $Y)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VY 2.)
                 $X $Y)))))
            ((MTIMES SIMP) 135. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 9.) $VX $VZ)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VZ)
                ((MTIMES SIMP) $VX $VZ
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $X 2.))))
              ((MTIMES SIMP) $VX $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VZ)
                ((MTIMES SIMP) $VX $VZ
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $Y 2.))))))
            ((MTIMES SIMP) 135. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 9.) $VZ $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.)
               $Y)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ $Y)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VX 2.)
                 $VZ $Y)))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ $Y)
                ((MTIMES SIMP) $VZ
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $X 2.)
                 $Y)))))
            ((MTIMES SIMP) 135. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 9.) $VZ $X)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ $X)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VX 2.)
                 $VZ $X)))
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               $VZ $X
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ $X)
                ((MTIMES SIMP) $VZ $X
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $Y 2.))))))
            ((MTIMES SIMP) 135. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 9.) $VY $VZ)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $VZ)
                ((MTIMES SIMP) $VY $VZ
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $X 2.))))
              ((MTIMES SIMP) $VY $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $VZ)
                ((MTIMES SIMP) $VY $VZ
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $Y 2.))))))
            ((MTIMES SIMP) 135. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 9.) $VY $VZ)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $VZ)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VX 2.)
                 $VY $VZ)))
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               $VY $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $VZ)
                ((MTIMES SIMP) $VY $VZ
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $X 2.))))))
            ((MTIMES SIMP) 135. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 9.) $VY $VZ)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $VZ)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VX 2.)
                 $VY $VZ)))
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               $VY $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $VZ)
                ((MTIMES SIMP) $VY $VZ
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $Y 2.))))))
            ((MTIMES SIMP) 135. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 9.) $VZ $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.)
               $Y)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ $Y)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VY 2.)
                 $VZ $Y)))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ $Y)
                ((MTIMES SIMP) $VZ
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $X 2.)
                 $Y)))))
            ((MTIMES SIMP) 135. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 9.) $VZ $X)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ $X)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VY 2.)
                 $VZ $X)))
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               $VZ $X
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ $X)
                ((MTIMES SIMP) $VZ $X
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $Y 2.))))))
            ((MTIMES SIMP) 135. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 9.) $VX $VZ)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VZ)
                ((MTIMES SIMP) $VX
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VY 2.)
                 $VZ)))
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VZ)
                ((MTIMES SIMP) $VX $VZ
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $X 2.))))))
            ((MTIMES SIMP) 135. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 9.) $VX $VZ)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VZ)
                ((MTIMES SIMP) $VX
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VY 2.)
                 $VZ)))
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VZ)
                ((MTIMES SIMP) $VX $VZ
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $Y 2.))))))
            ((MTIMES SIMP) 135. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 9.) $VZ $X)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               $VZ $X)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ $X)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VX 2.)
                 $VZ $X)))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ $X)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VY 2.)
                 $VZ $X)))))
            ((MTIMES SIMP) 135. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 9.) $VZ $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               $VZ $Y)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ $Y)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VX 2.)
                 $VZ $Y)))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ $Y)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VY 2.)
                 $VZ $Y)))))
            ((MTIMES SIMP) 135. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 9.) $VX $Y)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.)
               $Y)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $Y)
                ((MTIMES SIMP) $VX
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VZ 2.)
                 $Y)))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $Y)
                ((MTIMES SIMP) $VX
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $X 2.)
                 $Y)))))
            ((MTIMES SIMP) 135. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 9.) $VX $X)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $X)
                ((MTIMES SIMP) $VX
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VZ 2.)
                 $X)))
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.)
               $X
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $X)
                ((MTIMES SIMP) $VX $X
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $Y 2.))))))
            ((MTIMES SIMP) 135. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 9.) $X $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.)
               $X $Y)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $X $Y)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VX 2.)
                 $X $Y)))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $X $Y)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VZ 2.)
                 $X $Y)))))
            ((MTIMES SIMP) 135. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 9.) $VY $Y)
              ((MTIMES SIMP) $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.)
               $Y)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $Y)
                ((MTIMES SIMP) $VY
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VZ 2.)
                 $Y)))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $Y)
                ((MTIMES SIMP) $VY
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $X 2.)
                 $Y)))))
            ((MTIMES SIMP) 135. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 9.) $VY $X)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $X)
                ((MTIMES SIMP) $VY
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VZ 2.)
                 $X)))
              ((MTIMES SIMP) $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.)
               $X
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $X)
                ((MTIMES SIMP) $VY $X
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $Y 2.))))))
            ((MTIMES SIMP) 135. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 9.) $VX $VY)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VY)
                ((MTIMES SIMP) $VX $VY
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VZ 2.))))
              ((MTIMES SIMP) $VX $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VY)
                ((MTIMES SIMP) $VX $VY
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $X 2.))))))
            ((MTIMES SIMP) 135. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 9.) $VX $VY)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VY)
                ((MTIMES SIMP) $VX $VY
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VZ 2.))))
              ((MTIMES SIMP) $VX $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VY)
                ((MTIMES SIMP) $VX $VY
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $Y 2.))))))
            ((MTIMES SIMP) 135. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 9.) $VY $X)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.)
               $X)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $X)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VX 2.)
                 $VY $X)))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $X)
                ((MTIMES SIMP) $VY
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VZ 2.)
                 $X)))))
            ((MTIMES SIMP) 135. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 9.) $VY $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.)
               $Y)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $Y)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VX 2.)
                 $VY $Y)))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $Y)
                ((MTIMES SIMP) $VY
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VZ 2.)
                 $Y)))))
            ((MTIMES SIMP) 135. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 9.) $X $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.)
               $X $Y)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $X $Y)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VY 2.)
                 $X $Y)))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $X $Y)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VZ 2.)
                 $X $Y)))))
            ((MTIMES SIMP) 135. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 9.) $VX $X)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.)
               $X)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $X)
                ((MTIMES SIMP) $VX
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VY 2.)
                 $X)))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $X)
                ((MTIMES SIMP) $VX
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VZ 2.)
                 $X)))))
            ((MTIMES SIMP) 135. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 9.) $VX $Y)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.)
               $Y)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $Y)
                ((MTIMES SIMP) $VX
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VY 2.)
                 $Y)))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $Y)
                ((MTIMES SIMP) $VX
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VZ 2.)
                 $Y)))))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VY $X $Y)
              ((MTIMES SIMP) $VX $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 3.)
               $Y)))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VY $X $Y)
              ((MTIMES SIMP) $VX $VY $X
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 3.))))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VY $X $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 3.)
               $VY $X $Y)))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VY $X $Y)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 3.)
               $X $Y)))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VZ $X $Y)
              ((MTIMES SIMP) $VX $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 3.)
               $Y)))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VZ $X $Y)
              ((MTIMES SIMP) $VX $VZ $X
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 3.))))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VZ $X $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 3.)
               $VZ $X $Y)))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VY $VZ $X $Y)
              ((MTIMES SIMP) $VY $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 3.)
               $Y)))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VY $VZ $X $Y)
              ((MTIMES SIMP) $VY $VZ $X
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 3.))))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VY $VZ $X)
              ((MTIMES SIMP) $VX $VY $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 3.))))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VY $VZ $Y)
              ((MTIMES SIMP) $VX $VY $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 3.))))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VY $VZ $X)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 3.)
               $VY $VZ $X)))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VY $VZ $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 3.)
               $VY $VZ $Y)))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VY $VZ $X $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 3.)
               $VZ $X $Y)))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VY $VZ $X)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 3.)
               $VZ $X)))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VY $VZ $Y)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 3.)
               $VZ $Y)))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VZ $X $Y)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 3.)
               $X $Y)))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VY $VZ $X $Y)
              ((MTIMES SIMP) $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 3.)
               $X $Y)))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VY $VZ $X)
              ((MTIMES SIMP) $VX $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 3.)
               $X)))
            ((MTIMES SIMP) 15. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 21. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VY $VZ $Y)
              ((MTIMES SIMP) $VX $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 3.)
               $Y)))
            ((MTIMES SIMP) 315. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $VX $Y)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 4.)
               $Y)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $Y)
                ((MTIMES SIMP) $VX
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $X 2.)
                 $Y)))))
            ((MTIMES SIMP) 315. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $VX $X)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $X)
                ((MTIMES SIMP) $VX $X
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $Y 2.))))
              ((MTIMES SIMP) $VX $X
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 4.))))
            ((MTIMES SIMP) 315. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $X $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 4.)
               $X $Y)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $X $Y)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VX 2.)
                 $X $Y)))))
            ((MTIMES SIMP) 315. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $VY $Y)
              ((MTIMES SIMP) $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 4.)
               $Y)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $Y)
                ((MTIMES SIMP) $VY
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $X 2.)
                 $Y)))))
            ((MTIMES SIMP) 315. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $VY $X)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $X)
                ((MTIMES SIMP) $VY $X
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $Y 2.))))
              ((MTIMES SIMP) $VY $X
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 4.))))
            ((MTIMES SIMP) 315. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $VX $VY)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VY)
                ((MTIMES SIMP) $VX $VY
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $X 2.))))
              ((MTIMES SIMP) $VX $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 4.))))
            ((MTIMES SIMP) 315. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $VX $VY)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VY)
                ((MTIMES SIMP) $VX $VY
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $Y 2.))))
              ((MTIMES SIMP) $VX $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 4.))))
            ((MTIMES SIMP) 315. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $VY $X)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 4.)
               $VY $X)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $X)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VX 2.)
                 $VY $X)))))
            ((MTIMES SIMP) 315. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $VY $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 4.)
               $VY $Y)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $Y)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VX 2.)
                 $VY $Y)))))
            ((MTIMES SIMP) 315. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $X $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 4.)
               $X $Y)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $X $Y)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VY 2.)
                 $X $Y)))))
            ((MTIMES SIMP) 315. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $VX $X)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 4.)
               $X)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $X)
                ((MTIMES SIMP) $VX
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VY 2.)
                 $X)))))
            ((MTIMES SIMP) 315. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $VX $Y)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 4.)
               $Y)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $Y)
                ((MTIMES SIMP) $VX
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VY 2.)
                 $Y)))))
            ((MTIMES SIMP) 315. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $VZ $Y)
              ((MTIMES SIMP) $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 4.)
               $Y)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ $Y)
                ((MTIMES SIMP) $VZ
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $X 2.)
                 $Y)))))
            ((MTIMES SIMP) 315. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $VZ $X)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ $X)
                ((MTIMES SIMP) $VZ $X
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $Y 2.))))
              ((MTIMES SIMP) $VZ $X
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 4.))))
            ((MTIMES SIMP) 315. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $VX $VZ)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VZ)
                ((MTIMES SIMP) $VX $VZ
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $X 2.))))
              ((MTIMES SIMP) $VX $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 4.))))
            ((MTIMES SIMP) 315. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $VX $VZ)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VZ)
                ((MTIMES SIMP) $VX $VZ
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $Y 2.))))
              ((MTIMES SIMP) $VX $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 4.))))
            ((MTIMES SIMP) 315. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $VZ $X)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 4.)
               $VZ $X)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ $X)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VX 2.)
                 $VZ $X)))))
            ((MTIMES SIMP) 315. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $VZ $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 4.)
               $VZ $Y)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ $Y)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VX 2.)
                 $VZ $Y)))))
            ((MTIMES SIMP) 315. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $VY $VZ)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $VZ)
                ((MTIMES SIMP) $VY $VZ
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $X 2.))))
              ((MTIMES SIMP) $VY $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 4.))))
            ((MTIMES SIMP) 315. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $VY $VZ)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $VZ)
                ((MTIMES SIMP) $VY $VZ
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $Y 2.))))
              ((MTIMES SIMP) $VY $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 4.))))
            ((MTIMES SIMP) 315. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $VY $VZ)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 4.)
               $VY $VZ)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $VZ)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VX 2.)
                 $VY $VZ)))))
            ((MTIMES SIMP) 315. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $VZ $X)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 4.)
               $VZ $X)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ $X)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VY 2.)
                 $VZ $X)))))
            ((MTIMES SIMP) 315. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $VZ $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 4.)
               $VZ $Y)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ $Y)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VY 2.)
                 $VZ $Y)))))
            ((MTIMES SIMP) 315. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $VX $VZ)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 4.)
               $VZ)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VZ)
                ((MTIMES SIMP) $VX
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VY 2.)
                 $VZ)))))
            ((MTIMES SIMP) 315. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $X $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 4.)
               $X $Y)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $X $Y)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VZ 2.)
                 $X $Y)))))
            ((MTIMES SIMP) 315. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $VX $X)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 4.)
               $X)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $X)
                ((MTIMES SIMP) $VX
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VZ 2.)
                 $X)))))
            ((MTIMES SIMP) 315. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $VX $Y)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 4.)
               $Y)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $Y)
                ((MTIMES SIMP) $VX
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VZ 2.)
                 $Y)))))
            ((MTIMES SIMP) 315. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $VY $X)
              ((MTIMES SIMP) $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 4.)
               $X)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $X)
                ((MTIMES SIMP) $VY
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VZ 2.)
                 $X)))))
            ((MTIMES SIMP) 315. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $VY $Y)
              ((MTIMES SIMP) $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 4.)
               $Y)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $Y)
                ((MTIMES SIMP) $VY
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VZ 2.)
                 $Y)))))
            ((MTIMES SIMP) 315. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $VX $VY)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VY)
                ((MTIMES SIMP) $VX $VY
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VZ 2.))))
              ((MTIMES SIMP) $VX $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 4.))))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 7. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 9.) $VX $VY $VZ)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VY $VZ)
                ((MTIMES SIMP) $VX $VY $VZ
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $X 2.))))
              ((MTIMES SIMP) $VX $VY $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VY $VZ)
                ((MTIMES SIMP) $VX $VY $VZ
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $Y 2.))))))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 7. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 9.) $VY $VZ $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               $VY $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.)
               $Y)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $VZ $Y)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VX 2.)
                 $VY $VZ $Y)))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $VZ $Y)
                ((MTIMES SIMP) $VY $VZ
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $X 2.)
                 $Y)))))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 7. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 9.) $VY $VZ $X)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $VZ $X)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VX 2.)
                 $VY $VZ $X)))
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               $VY $VZ $X
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $VZ $X)
                ((MTIMES SIMP) $VY $VZ $X
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $Y 2.))))))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 7. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 9.) $VX $VZ $Y)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.)
               $Y)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VZ $Y)
                ((MTIMES SIMP) $VX
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VY 2.)
                 $VZ $Y)))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VZ $Y)
                ((MTIMES SIMP) $VX $VZ
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $X 2.)
                 $Y)))))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 7. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 9.) $VX $VZ $X)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VZ $X)
                ((MTIMES SIMP) $VX
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VY 2.)
                 $VZ $X)))
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               $VZ $X
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VZ $X)
                ((MTIMES SIMP) $VX $VZ $X
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $Y 2.))))))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 7. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 9.) $VZ $X $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               $VZ $X $Y)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ $X $Y)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VX 2.)
                 $VZ $X $Y)))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ $X $Y)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VY 2.)
                 $VZ $X $Y)))))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 7. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 9.) $VX $VY $Y)
              ((MTIMES SIMP) $VX $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 2.)
               $Y)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VY $Y)
                ((MTIMES SIMP) $VX $VY
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VZ 2.)
                 $Y)))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VY $Y)
                ((MTIMES SIMP) $VX $VY
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $X 2.)
                 $Y)))))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 7. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 9.) $VX $VY $X)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VY $X)
                ((MTIMES SIMP) $VX $VY
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VZ 2.)
                 $X)))
              ((MTIMES SIMP) $VX $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.)
               $X
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 2.))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VY $X)
                ((MTIMES SIMP) $VX $VY $X
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $Y 2.))))))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 7. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 9.) $VY $X $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 2.)
               $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.)
               $X $Y)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $X $Y)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VX 2.)
                 $VY $X $Y)))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $X $Y)
                ((MTIMES SIMP) $VY
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VZ 2.)
                 $X $Y)))))
            ((MTIMES SIMP) 5. ((MEXPT SIMP) 2. ((RAT SIMP) -9. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 7. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 9.) $VX $X $Y)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 2.)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 2.)
               $X $Y)
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $X $Y)
                ((MTIMES SIMP) $VX
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VY 2.)
                 $X $Y)))
              ((MTIMES SIMP) ((RAT SIMP) -1. 3.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $X $Y)
                ((MTIMES SIMP) $VX
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VZ 2.)
                 $X $Y)))))
            ((MTIMES SIMP) 45. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP)
              ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VY $VZ $X $Y)
              ((MTIMES SIMP) $VX $VY $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 3.)
               $Y)))
            ((MTIMES SIMP) 45. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP)
              ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VY $VZ $X $Y)
              ((MTIMES SIMP) $VX $VY $VZ $X
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 3.))))
            ((MTIMES SIMP) 45. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP)
              ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VY $VZ $X $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 3.)
               $VY $VZ $X $Y)))
            ((MTIMES SIMP) 45. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP)
              ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VY $VZ $X $Y)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 3.)
               $VZ $X $Y)))
            ((MTIMES SIMP) 45. ((MEXPT SIMP) 2. ((RAT SIMP) -7. 2.))
             ((MEXPT SIMP) 7. ((RAT SIMP) 1. 2.))
             ((MPLUS SIMP)
              ((MTIMES SIMP) ((RAT SIMP) -3. 5.) $VX $VY $VZ $X $Y)
              ((MTIMES SIMP) $VX $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 3.)
               $X $Y)))
            ((MTIMES SIMP) 35. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 5. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $VX $VY $Y)
              ((MTIMES SIMP) $VX $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 4.)
               $Y)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VY $Y)
                ((MTIMES SIMP) $VX $VY
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $X 2.)
                 $Y)))))
            ((MTIMES SIMP) 35. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 5. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $VX $VY $X)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VY $X)
                ((MTIMES SIMP) $VX $VY $X
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $Y 2.))))
              ((MTIMES SIMP) $VX $VY $X
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 4.))))
            ((MTIMES SIMP) 35. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 5. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $VY $X $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 4.)
               $VY $X $Y)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $X $Y)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VX 2.)
                 $VY $X $Y)))))
            ((MTIMES SIMP) 35. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 5. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $VX $X $Y)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 4.)
               $X $Y)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $X $Y)
                ((MTIMES SIMP) $VX
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VY 2.)
                 $X $Y)))))
            ((MTIMES SIMP) 35. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 5. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $VX $VZ $Y)
              ((MTIMES SIMP) $VX $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 4.)
               $Y)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VZ $Y)
                ((MTIMES SIMP) $VX $VZ
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $X 2.)
                 $Y)))))
            ((MTIMES SIMP) 35. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 5. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $VX $VZ $X)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VZ $X)
                ((MTIMES SIMP) $VX $VZ $X
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $Y 2.))))
              ((MTIMES SIMP) $VX $VZ $X
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 4.))))
            ((MTIMES SIMP) 35. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 5. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $VZ $X $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 4.)
               $VZ $X $Y)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ $X $Y)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VX 2.)
                 $VZ $X $Y)))))
            ((MTIMES SIMP) 35. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 5. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $VY $VZ $Y)
              ((MTIMES SIMP) $VY $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 4.)
               $Y)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $VZ $Y)
                ((MTIMES SIMP) $VY $VZ
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $X 2.)
                 $Y)))))
            ((MTIMES SIMP) 35. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 5. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $VY $VZ $X)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $VZ $X)
                ((MTIMES SIMP) $VY $VZ $X
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $Y 2.))))
              ((MTIMES SIMP) $VY $VZ $X
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 4.))))
            ((MTIMES SIMP) 35. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 5. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $VX $VY $VZ)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VY $VZ)
                ((MTIMES SIMP) $VX $VY $VZ
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $X 2.))))
              ((MTIMES SIMP) $VX $VY $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 4.))))
            ((MTIMES SIMP) 35. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 5. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $VX $VY $VZ)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VY $VZ)
                ((MTIMES SIMP) $VX $VY $VZ
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $Y 2.))))
              ((MTIMES SIMP) $VX $VY $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 4.))))
            ((MTIMES SIMP) 35. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 5. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $VY $VZ $X)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 4.)
               $VY $VZ $X)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $VZ $X)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VX 2.)
                 $VY $VZ $X)))))
            ((MTIMES SIMP) 35. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 5. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $VY $VZ $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 4.)
               $VY $VZ $Y)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $VZ $Y)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VX 2.)
                 $VY $VZ $Y)))))
            ((MTIMES SIMP) 35. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 5. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $VZ $X $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 4.)
               $VZ $X $Y)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VZ $X $Y)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VY 2.)
                 $VZ $X $Y)))))
            ((MTIMES SIMP) 35. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 5. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $VX $VZ $X)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 4.)
               $VZ $X)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VZ $X)
                ((MTIMES SIMP) $VX
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VY 2.)
                 $VZ $X)))))
            ((MTIMES SIMP) 35. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 5. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $VX $VZ $Y)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 4.)
               $VZ $Y)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VZ $Y)
                ((MTIMES SIMP) $VX
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VY 2.)
                 $VZ $Y)))))
            ((MTIMES SIMP) 35. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 5. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $VX $X $Y)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 4.)
               $X $Y)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $X $Y)
                ((MTIMES SIMP) $VX
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VZ 2.)
                 $X $Y)))))
            ((MTIMES SIMP) 35. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 5. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $VY $X $Y)
              ((MTIMES SIMP) $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 4.)
               $X $Y)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $X $Y)
                ((MTIMES SIMP) $VY
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VZ 2.)
                 $X $Y)))))
            ((MTIMES SIMP) 35. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 5. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $VX $VY $X)
              ((MTIMES SIMP) $VX $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 4.)
               $X)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VY $X)
                ((MTIMES SIMP) $VX $VY
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VZ 2.)
                 $X)))))
            ((MTIMES SIMP) 35. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MEXPT SIMP) 3. ((RAT SIMP) 5. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $VX $VY $Y)
              ((MTIMES SIMP) $VX $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 4.)
               $Y)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VY $Y)
                ((MTIMES SIMP) $VX $VY
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VZ 2.)
                 $Y)))))
            ((MTIMES SIMP) 945. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $VX $VY $VZ $Y)
              ((MTIMES SIMP) $VX $VY $VZ
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $X 4.)
               $Y)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VY $VZ $Y)
                ((MTIMES SIMP) $VX $VY $VZ
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $X 2.)
                 $Y)))))
            ((MTIMES SIMP) 945. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $VX $VY $VZ $X)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VY $VZ $X)
                ((MTIMES SIMP) $VX $VY $VZ $X
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $Y 2.))))
              ((MTIMES SIMP) $VX $VY $VZ $X
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $Y 4.))))
            ((MTIMES SIMP) 945. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $VY $VZ $X $Y)
              ((MTIMES SIMP)
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VX 4.)
               $VY $VZ $X $Y)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VY $VZ $X $Y)
                ((MTIMES SIMP)
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VX 2.)
                 $VY $VZ $X $Y)))))
            ((MTIMES SIMP) 945. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $VX $VZ $X $Y)
              ((MTIMES SIMP) $VX
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VY 4.)
               $VZ $X $Y)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VZ $X $Y)
                ((MTIMES SIMP) $VX
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VY 2.)
                 $VZ $X $Y)))))
            ((MTIMES SIMP) 945. ((MEXPT SIMP) 2. ((RAT SIMP) -11. 2.))
             ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 5.) $VX $VY $X $Y)
              ((MTIMES SIMP) $VX $VY
               ((MEXPT SIMP
                 (61.
                  "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                  SRC |$calcPowers| 61.))
                $VZ 4.)
               $X $Y)
              ((MTIMES SIMP) ((RAT SIMP) -6. 7.)
               ((MPLUS SIMP) ((MTIMES SIMP) ((RAT SIMP) -1. 3.) $VX $VY $X $Y)
                ((MTIMES SIMP) $VX $VY
                 ((MEXPT SIMP
                   (61.
                    "/Users/ahakim/research/gkyl-project/gkyl/cas-scripts/modal-basis.mac"
                    SRC |$calcPowers| 61.))
                  $VZ 2.)
                 $X $Y)))))))) 
(ADD2LNC '|$basisP| $VALUES) 
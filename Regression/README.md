# Regression Testing

Tests in this directory run whole simulations to test the App system. These simulations test comprehensive capabilities of the code, not just a single updater. Each test directory contains one or more input file for a particular system of interest.

# Ghost, Ghouls and Zombies

The Grand CEO of Gkeyll has proclaimed that all code shall be (a)
comprehensible, (b) tested with regression and/or unit tests, and (c)
used *somewhere*. To facilitate this we shall define:

- **Ghost** is code that does not have any regression and/or unit
  tests. Just like their non-virtual cousins such ghost code will not
  be deemed to exist.

- **Ghoul** is code that is completely incomprehensible, often even to
  the original author. Much of the CAS-generated kernels (and some
  code written by the Grand CEO Himself) are ghouls.
  
- **Zombie** is code that is not used anywhere and no one knows why it
  exists and if deleting it is safe.
  
The goal is to avoid ghost, ghouls and zombies as much as possible
using excellent software practices.
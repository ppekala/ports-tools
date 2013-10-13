FreeBSD ports tools
===================

FreeBSD developer's scripts


lib-bump-check
--------------

After major library ABI bumps sometimes there are packages that got omitted
and have it's PORTREVISION not increased. This script scans your installed
packages and tries to find those that need to be rebuilt and offers to do
it for you. Requires pkgNG.

mkpatch
-------

Makes patch from (all or pattern matched) modified files in WRKSRC directory.

pcheck
------

Check for various errors that portlint don't catch:
* misspellings in description files
* files with no final new lines
* leading articles in COMMENT, tabs in WWW lines
* not longer used make variables.

pclean
------

Keeps your ports svn repo tidy.

pcommit
-------

Wrapper for svn commit, removes and adds files, sets props, etc.

pdiff
-----

Does clean diff against main ports tree making sure there are no leftover
files and make clean is done.

pkg-cutter
----------

Leaf package remover with nice dialog interface, requires pkgNG.

pkg-lib-check
-------------

Script for detecting:
* unregistered library dependencies in your packages
* linking to non-existent library
* binaries in package linked to specific library
* minimal library dependencies.

Requires pkgNG.

plist-sort
----------

Smart plist sorter which understands PLIST_SUB substitutions and options
determined conditional files.

plogsend
--------

Easy way to send tinderbox build logs to your FreeBSD account by scp.

reinplace-check
---------------

Checks for files with stale REINPLACE_CMD actions or shows diff's of them.

tb-plist-update
---------------

Reads tinderbox build log and tries to update plist if there any files
left behind after build.

tbopt
-----
Sets port options in specific or all tinderbox builds.

tbuilder
--------

Wrapper that makes easier to queue multiple builds of one port, ports with
certain names, ports with Makefile containing phrase, etc.

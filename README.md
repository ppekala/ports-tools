FreeBSD ports tools
===================

FreeBSD developer's scripts


lib-bump-check
--------------

After major library ABI bumps sometimes there are packages that got omitted
and have it's PORTREVISION not increased. This script scans your installed
packages and tries to find those that need to be rebuilt and offers to do
it for you.

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

pfind
-----

Simple port's search wrapper 

pkg-cutter
----------

Leaf package remover with nice dialog interface.

pkg-lib-check
-------------

Script for detecting:
* unregistered library dependencies in your packages
* linking to non-existent library
* binaries in package linked to specific library
* minimal library dependencies.

plist-sort
----------

Smart plist sorter which understands PLIST_SUB substitutions and options
determined conditional files.

plist-update
---------------

Script utilizing check-plist port's framework target output for updating
outdated pkg-plist.

plog
--------

Easy way to send poudriere build logs to your FreeBSD account by scp or
view them on your computer.

reinplace-check
---------------

Checks for files with stale REINPLACE_CMD actions or shows diff's of them.

tbuilder
--------

Wrapper that makes easier to queue multiple builds of one port, ports with
certain names, ports with Makefile containing phrase, etc.

upgrade-base
------------

Helper script for upgrading FreeBSD base.

upgrade-ports
-------------

Helper script for updating ports tree and upgrading your ports.

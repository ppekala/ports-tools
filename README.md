Ports Tools
===========

Collection of scripts making things easier when working with FreeBSD ports tree.


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

Keeps your ports svn repo tidy, removes work directories, leftover files
and reverts any changes made.

pcommit
-------

Wrapper for svn commit, removes and adds files, sets props, etc.

pfind
-----

Simple port's search wrapper. Search parameters include build dependency,
category, name, maintainer, regexp pattern and slave ports.

pkg-deleaf
----------

Leaf package remover with nice dialog interface.

plist-sort
----------

Smart plist sorter which understands PLIST_SUB substitutions and options
determined conditional files.

plist-update
---------------

Script utilizing check-plist port's framework target output for updating
outdated pkg-plist, understands PLIST_SUB substitutions and sorts
final files list.

plog
--------

Easy way to send poudriere build logs to your FreeBSD account by scp or
view them on your computer.

reinplace-check
---------------

Checks for files with stale REINPLACE_CMD actions or shows diff's of them.

tbuilder
--------

Poudriere testport wrapper that makes easier to queue multiple builds of:
- specific port
- ports linking with certain library
- ports with certain names
- ports with Makefile matching regular expression
- slave ports etc.

upgrade-base
------------

Helper script for upgrading FreeBSD base. Detects and sets number of make
jobs possible. After upgrade rebuilds ports with kernel modules and offers
to remove old files using dialog inerface.

upgrade-ports
-------------

Helper script for updating ports tree and upgrading your ports. Combining
information gathered from UPDATING and MOVED files tries to provide upgrade
process as problem free as possible. This includes showing new UPDATING
entries since last upgrade, ports origin move tracking, simple conflict
resolution, removal of obsolete ports and sanity checking afterwards.
Before any change is made user is presented with summary of changes
intended similiar to pkg upgrade.

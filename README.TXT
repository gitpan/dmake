This is DMAKE version 4.3 compiled for Win32 using MS VC++ 6.

For information on how to use DMAKE, see man\dmake.nc.

DMAKE needs a set of startup files that are located in a subdirectory called
"startup" where DMAKE.EXE lives, or in a directory specified by a DMAKEROOT
environment variable.  So, to install it, just copy DMAKE.EXE and the startup
subdirectory to some location on your path.

You can change the default platform in the startup\config.mk file (the defaults,
despite appearances, are set up for MS VC++ 6 on Windows NT/2000/XP).  If you
change the defaults, you'll need to make sure the subdirectories you name in
startup\config.mk are populated with setup files (you can use the current
hierarchy as a model).

The default startup configuration can also be overridden by setting "OSRELEASE"
and "OSENVIRONMENT" in your environment (see the notes under "readme").  Note
that the startup files don't read the "OS" environment variable, despite what
the notes in the "readme" directory say.  In other words, you can only set "OS"
from the startup\config.mk file.

The original sources of DMAKE were available from:

    http://dmake.wticorp.com

but this site has not been reachable for some time.  The sources are now hosted
in the OpenOffice.org "tools" project, the home page for which is:

    http://tools.openoffice.org/

You can get the latest sources from:

    cvs -d :pserver:anoncvs@anoncvs.services.openoffice.org:/cvs co dmake

This version of DMAKE is compiled from sources taken from the above cvs address
on 07 Mar 2005.  The file PATCH.TXT contains the changes I had to make to get it
to build, plus a couple of other changes inspired by the changes made by
Gurusamy Sarathy in his DMAKE 4.1 build which is available from:

    ftp://ftp.linux.activestate.com/pub/staff/gsar/

Some of these changes have been submitted to the OpenOffice.org Issue Tracker
and can be viewed, with explanations, at:

    http://www.openoffice.org/issues/show_bug.cgi?id=43241
    http://www.openoffice.org/issues/show_bug.cgi?id=43252
    http://www.openoffice.org/issues/show_bug.cgi?id=43254

Enjoy!

Steve Hay
shay@cpan.org
07-Mar-2005

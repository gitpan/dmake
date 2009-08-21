#!/usr/bin/perl

# Przemek Czerkas <pczerkas@gmail.com> 2009-08-21 12:17:09 CEST
# 
#	Test script to play with dmake's parallel build facility
#
# See:
# 1. http://tools.openoffice.org/dmake/dmake_4.11.html
# 2. http://tools.openoffice.org/dmake/dmake_4.11.zip
# 3. http://svn.services.openoffice.org/ooo/trunk/dmake/
#
# 4. http://www.opensolaris.org/os/project/onnv/onnv_build/faster_builds/Observe/
#    http://www.opensolaris.org/os/project/onnv/onnv_build/faster_builds/
#
# 5. http://209.85.129.132/search?q=cache:8TZoNasNhkkJ:www.gfdl.noaa.gov/~vb/mkmf.html+mkmf.html
# 6. http://www.eng.hawaii.edu/Tutor/Make/1-1.html


use strict;
use warnings;

my $max_process=$ARGV[0] || 4;
my $dmake="dmake -s -P$max_process";
my $redir="1>> $0.log";

my @actions=(
  [ 'Preparing ... ', 'perl', 'Makefile.pl', ],
  [ 'Making ... ',    $dmake, ''             ],
  [ 'Testing ... ',   $dmake, 'test',        ],
  [ 'Cleaning ... ',  $dmake, 'clean',       ],
);

# my $old_fh=select(STDOUT); $|=1; select($old_fh);

print "\nMax processes = $max_process\n\n";

my $totm;
foreach my $action (@actions) {
	print "$action->[0]";
	my $tm=time;
	system('cmd.exe',"/c ($action->[1] $action->[2]) $redir");
  $tm=time-$tm;
  print "$tm secs\n";
	$totm+=$tm;
}
print "\nTotal: $totm secs with $max_process process(es).\n\n";

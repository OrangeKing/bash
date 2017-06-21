#!/usr/bin/env perl
use strict; 
use warnings;
use File::Find;

my $modRef = $ARGV[2];

find({ wanted => \&custom_find, no_chdir => 1 }, $ARGV[0]);

sub custom_find 
{
	my @modDate=localtime ((stat($modRef))[9]);
	my @d=localtime ((stat($_))[9]);
	
	if ( ((stat($modRef))[9]) > ((stat($_))[9]) )
	{
		if (-f $_)
		{
			print "\tFile: $_(created at: ";
		    printf "%4d-%02d-%02d %02d:%02d:%02d)\n", $d[5]+1900,$d[4]+1,$d[3],$d[2],$d[1],$d[0];
		} 
		else
		{
			print "Dir: $_(created at: ";
		    printf "%4d-%02d-%02d %02d:%02d:%02d)\n", $d[5]+1900,$d[4]+1,$d[3],$d[2],$d[1],$d[0];
	    }
	}
}


my $filename = $ARGV[1];
my $mode = (stat($filename))[2];
printf "\n$filename perm rwx: %o\n", $mode & 0777;


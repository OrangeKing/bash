#!/usr/bin/env perl
use strict; 
use warnings;
use diagnostics;

use File::Find;
use feature 'say';
use feature "switch";
use v5.16;
##############################
my $argc = @ARGV;

if($argc >= 1)
{
	my $input = $ARGV[0];

	#Both letters and digits
	if($input =~ /(?:\D.*\d|\d.*\D)/)
	{
		say "1. Both letter and digit detected";
		say "***********";
	}

	#At least three digits
	if($input =~ /(?:\d.?){2}\d/)
	{
		say "2. At least three digits detected";
		say "***********";
	}

	#Dollarsign
	if($input =~ /\$\w?/)
	{
		say "3. Literal dollarsign detected";
		say "***********";
	}

	#Change input to *
	(my $outputA = $input) =~ s/\s[a-zA-Z]+\s/ * /g;
	say "4. $outputA";
	say "***********";

	#Remove alphanum from input
	(my $outputB = $input) =~ s/\w//g;
	say "5. $outputB";
	say "***********";

	#Print 5th word
	if($input =~ /(?:\S+\s){4}(\S+)/)
	{
		say "6. 5th word printed: $1";
		say "***********";
	}


}
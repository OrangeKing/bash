#!/usr/bin/env perl

use strict;
use warnings;
use diagnostics;

use feature 'say';
use feature "switch";

use v5.16;

#########PARAMETERS#########
my $argc = @ARGV;
print "The script has \"$argc\" parameters:\n";

for(my $i = 0; $i < $argc; $i++)
{
  say $ARGV["$i"];
}
say "***";
#########IO/#########
if((defined $ARGV[0]) && (-f $ARGV[0]))
{
  my $filename = $ARGV[0];
  open(my $fh, '<:encoding(UTF-8)', $filename)
  	or die "Could not open '$filename' $!";
  
  my $line = 1;

  while (my $row = <$fh>) 
  {
    chomp $row;
    my $is_power = ($line & ($line -1));
    if($is_power == 0) 
    {
    	say "$line $row";	
    }
    #print "$line $row\n";
    $line++;
  }
  say "***\nDone\n";
}
else 
{
	die "Need file and dir";
}

#########DIRCOUNT#########
my $count;
opendir(my $dh, $ARGV[1]) or die "opendir($ARGV[1]): $!";
while (my $de = readdir($dh)) 
{
	#random order, array + sort?
	next if $de =~ /^\./;
	say "$ARGV[1]$de";
	if (-f $de) {
		say "file exists";
	}
	$count++;

}
say "$count files total in $ARGV[1]";
closedir($dh);

#########MATRIX_MULT#########
my @matrix1 = (
	[1, 2, 3],
	[4, 5, 6],
	[7, 8, 9]
);

my @matrix2 = (
	[2, 4, 6],
	[1, 3, 5],
	[7, 8, 9]
);

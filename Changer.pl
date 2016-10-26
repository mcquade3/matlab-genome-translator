#!/usr/local/bin/perl
# Mike McQuade
# Changer.pl
# Translates the genome in the function to a numeric state
# that MatLab can accept.

# Define the packages to use
use strict;
use warnings;

# Open the file to read
open(my $fh,"<changer.txt") or die $!;

# Read in the values from the file
while (my $line = <$fh>) {
	chomp($line);
	printLine($line);
}

# Close the file
close($fh) || die "Couldn't close file properly";



# Prints out a corresponding number for the appropriate letter
sub printLine {
	my @letters = split("", $_[0]);
	foreach my $letter (@letters) {
		if ($letter eq "A") {print "1 "}
		elsif ($letter eq "C") {print "2 "}
		elsif ($letter eq "G") {print "3 "}
		else {print "4 "}
	}
}
#!/usr/bin/perl

print "Type folder path: \n";
print "Example: /media/Files/Movies";
print "\n\n";

my $path = <stdin>;

chomp($path);

system("mencoder -oac copy -ovc lavc -sub ".$path.".srt -o ".$path."-final.avi ".$path.".avi");

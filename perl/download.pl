#!/usr/bin/perl
use LWP::Simple;
use strict;
use File::Path;
use File::Basename;

if (@ARGV !=2 ){
        print "Arguments Error\n";
        print "USAGE   : wget.pl URL Localfilepath/filename\n";
        print "EXAMPLE : wget.pl http://[server-ip]/images/rhel6.4.iso /tmp/rhel6.4.iso\n";
} else {
     print "starting...\n";
     my $file_path=dirname $ARGV[1];
     print "mkdir     :";
     print $file_path."\n";
     eval{mkpath($file_path)};
     print "URL file  :";
     print $ARGV[0]."\n";
     print "Local file:";
     print $ARGV[1]."\n";
     getstore($ARGV[0],$ARGV[1]) or die "fail";
}

if (-e $ARGV[1]) {
    print "Local File is not exist !!!";
} else {
    print "DownLoad Finish...\n";
}
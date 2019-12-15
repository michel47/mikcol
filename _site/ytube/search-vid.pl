#!/usr/bin/perl

my $root='fAqtI9XgQi';

my @alphab = ( '_', '-', 'a' .. 'z', 'A' .. 'Z', '0' .. '9' );

local *F;
open F,'>','search-vid.htm';
for my $a (@alphab) {
 print "$a";
 my $vid = $root.$a;
 printf F qq'<a href=https://youtu.be/%s><img title="%s" alt="%s" src="https://i.ytimg.com/vi/%s/hqdefault.jpg"></a>\n',$vid,$a,$vid,$vid;
}
close F;
print ".\n";


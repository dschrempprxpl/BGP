#!/usr/bin/perl  -d
use Data::Dumper;
use XML::XPath;

my $xp = XML::XPath->new ("bgproutes.xml");
my $router;
my $ip;
my @parts;
my @type;

print "digraph BGP{ \n";
print "layout=circo\n";
#print "size=\"20,20\"\n";

foreach my $route ($xp ->find('//route-table/rt-entry/') ->get_nodelist) 
{
    my $routeASPath = $route ->find('as-path') ->string_value;
    
    @asPath=split(/ /,$routeASPath);

}

print "\n}\n";

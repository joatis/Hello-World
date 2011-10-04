#/usr/bin/perl -w

use strict;
use Greeter;

# Three Guys walk into a bar...
my @customers = (

	new Greeter({
		'name'		=> 'Norm',
		'greeting' 	=> qq(Hey Sam, gimme a beer.)
	}),
	
	new Greeter({
		'name'		=> 'Cramer',
		'greeting' 	=> qq(Quick! Get me a beer before Lilith gets here!),
	}),
	
	new Greeter({
		'name'		=> 'Cliff',
		'greeting' 	=> qq(Hey there Sammy.),
	}),
	
);

foreach my $c (@customers){
	print $c->{'name'} . ': ' . $c->greet() . "\n";
}

# The bartender says...
my $Sam = new Greeter({
	'name'		=> 'Sam',
	'greeting' 	=> qq(Bar's closed!),
});



print qq(
...
),
$Sam->{'name'} . ': ' . $Sam->greet() . "\n";

exit;






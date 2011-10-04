package Greeter;
{
	
	
	sub new {
		my ($self, $attrs) = @_;
		my $g = {};
		foreach my $k( keys %$attrs){
			$g->{$k} = $attrs->{$k};
		}
		
		bless($g, "Greeter");
		return $g;
	}
	
	sub greet {
		my ($self) = @_;
		
		return qq("$self->{'greeting'}");
	}
}

1;

#!/usr/bin/env perl
sub f {
	my ($x, $func) = @_;
	return eval $func;
}

my @points;

sub getpoints {
	my $n = 0;
	while ($n < shift) {
		$_ = <STDIN>;
		unless (/^\d+,\d+$/) {
			print 'Please enter your points in the format #,#';
			next;
		}
		my ($x, $y) = split /,/;
		my $point = {
			x => $x,
			y => $y
		}
		$points[$n++] = $point;
	}
}

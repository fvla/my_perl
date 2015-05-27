#!/usr/bin/env perl
sub f {
	my ($x, $func) = @_;
	return eval $func;
}

my @points;

sub getpoints {
	my $n = 0;
	my $pnum = shift;
	while ($n < $pnum) {
		$_ = <STDIN>;
		unless (/^\d+,\d+$/) {
			print "Please enter your points in the format #,#\n";
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

sub getquadr {
        my $a,$b,$c;
        for ($i=0;$i<@points;$i++) {
                for ($j=$i+1;j<@points;$j++) {
                        ($points[$i]->{"x"} != $points[$j]->{"x"}) || die "Points must have distinct x-values";
                }
        }
}

print "Enter three points in the format #,#\n";
getpoints 3;

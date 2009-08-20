use v6;

BEGIN { @*INC.push: '../svg/lib', 'lib' }

use SVG;
use SVG::Plot;

my @data1   = 5, 6, 4, 3, 8, 12, 0, 0, 3, 7;
my @data2   = @data1.map: * + 2;
my @labels  = <the quick brown fox jumps over the lazy red dog>;
my $svg = SVG::Plot.new(
            width      => 300,
            height     => 250,
            values     => ([@data1], [@data2]),
            :@labels,
            links => <http://en.wikipedia.org/wiki/The_quick_brown_fox_jumps_over_the_lazy_dog>,
        ).plot(:stacked);

say SVG.serialize($svg);


# vim: ft=perl6 sw=4 ts=4 expandtab

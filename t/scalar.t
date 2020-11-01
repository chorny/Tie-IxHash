use strict;
use Test::More tests=>8;
use Tie::IxHash;

{
    tie my %nonempty, 'Tie::IxHash', (a => 1, b => 2, c => 3, d => 4, e => 5);
    ok %nonempty, 'non-empty hash';
    is scalar(%nonempty), 1, 'non-empty hash (implementation detail)';
}

{
    tie my %empty, 'Tie::IxHash', ();
    ok !%empty, 'empty hash (implementation detail)';
    is scalar(%empty), '', 'empty hash';
}

{
    tie my %nonempty, 'Tie::IxHash', (a => 1, b => 2);
    my $k = each %nonempty;
    ok %nonempty, 'non-empty hash in iteration';
    is scalar(%nonempty), 1, 'non-empty hash in iteration (implementation detail)';
}

{
    tie my %h, 'Tie::IxHash', (a => 1);
    delete $h{a};
    ok !%h, 'previously non-empty hash';
    is scalar(%h), '', 'previously non-empty hash (implementation detail)';
}

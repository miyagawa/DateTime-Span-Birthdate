use strict;
use t::TestBase;
use DateTime::Span::Birth;

plan tests => 1 * blocks;

run {
    my $block = shift;
    eval {
        my $span =
            $block->age  ? DateTime::Span::Birth->new(age => $block->age, on => $block->on)
          : $block->from ? DateTime::Span::Birth->new(from => $block->from, to => $block->to, on => $block->on)
          :                DateTime::Span::Birth->new(on => $block->on);
    };
    like $@, $block->expected;
};

__END__

===
--- on: 2006-10-26
--- expected: requires from, to or age

===
--- from: 20
--- to: 18
--- on: 2006-01-12
--- expected: Span cannot start after

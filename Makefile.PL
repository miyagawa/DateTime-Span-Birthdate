use inc::Module::Install;
name 'DateTime-Span-Birth';
all_from 'lib/DateTime/Span/Birth.pm';

requires 'DateTime';
requires 'DateTime::Span';

build_requires 'Test::More';
use_test_base;
auto_include;
WriteAll;

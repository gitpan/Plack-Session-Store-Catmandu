use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name => 'Plack::Session::Store::Catmandu',
    license => 'perl',
    dist_author => [
        'Nicolas Steenlant <nicolas.steenlant@ugent.be>',
    ],
    build_requires => {
        'Software::License' => 0,
        'Test::Exception' => 0,
        'Test::More' => 0,
    },
    requires => {
        'perl' => '5.10.1',
        'Catmandu' => '0.03',
        'Plack::Session::Store' => '0.15',
    },
    add_to_cleanup => [qw(
        Plack-Session-Store-Catmandu-*
    )],
    create_makefile_pl => 'traditional',
    create_license => 1,
);

$builder->create_build_script;

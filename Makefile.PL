use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Games::FlipCoin',
    AUTHOR              => 'Troy Denkinger <tdenkinger@gmail.com>',
    VERSION_FROM        => 'lib/Games/FlipCoin.pm',
    ABSTRACT_FROM       => 'lib/Games/FlipCoin.pm',
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Games-FlipCoin-*' },
);

use ExtUtils::MakeMaker;
WriteMakefile(
              NAME => "Tie::IxHash",
              VERSION_FROM => 'lib/Tie/IxHash.pm',
              SKIP => [qw(static dynamic)],
              'linkext' => {LINKTYPE => '' },
              'dist' => {COMPRESS=>'gzip -9f', SUFFIX => 'gz'}
             );

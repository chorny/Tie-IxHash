use ExtUtils::MakeMaker;
WriteMakefile(
              NAME => "Tie::IxHash",
              VERSION => '1.2',
              SKIP => [qw(static dynamic)],
              'linkext' => {LINKTYPE => '' },
              'dist' => {COMPRESS=>'gzip -9f', SUFFIX => 'gz'}
             );

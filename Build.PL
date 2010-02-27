use strict;
use Module::Build;
#created by eumm-migrate.pl

my $build = Module::Build->new(
  'auto_configure_requires' => 0,
  'module_name' => 'Tie::IxHash',
  'requires' => {
    'perl' => '5.003'
  },
  'meta_merge' => {
    'resources' => {
      'repository' => 'git://github.com/chorny/Tie-IxHash.git'
    }
  },
  'license' => 'perl',
  'dist_version_from' => 'lib/Tie/IxHash.pm'
);

$build->create_build_script();

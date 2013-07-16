use inc::Module::Install;

name 'npc-config';
all_from 'lib/npc/config.pm';

requires 'Config::JFDI';
requires 'Cwd';
requires 'ExtUtils::MakeMaker';
requires 'Moose';
requires 'Data::Dumper';
requires 'Exporter';
requires 'YAML::XS';

install_script glob('bin/*');
auto_install;

WriteAll;

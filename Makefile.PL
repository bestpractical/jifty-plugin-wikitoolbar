use inc::Module::Install;

name           'Jifty-Plugin-WikiToolbar';
all_from       'lib/Jifty/Plugin/WikiToolbar.pm';

build_requires 'Test::More';
requires('Jifty' => '0.70416');

install_share;

tests('t/*.t');
auto_install;
WriteAll;


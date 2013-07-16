package npc::config;

use strict;
use warnings;
use Config::JFDI;
use Cwd;
use Moose;

our $VERSION = '0.01';

=head1 NAME
npc::config

=head1 DESCRIPTION
shared configuration point for related projects

=cut

sub get_config {
    my ($self, $config_name) = @_;
    
    $config_name = 'test' if (!defined($config_name));
    my $dir = getcwd;
    
    # called from external by 'use'
##    if ($dir !~ /npc-config$/) {
##        $dir .= "/../npc-config";
##    } 
    
    
    print "Get config '$config_name' @ $dir \n";
    
    my $config = Config::JFDI->new(name => $config_name, path => "$dir/etc");
    my $config_hash = $config->get;
    
    return $config_hash;
}

1;

__END__

=head1 AUTHOR

Natapone Charsombut <<natapone@gmail.com>>

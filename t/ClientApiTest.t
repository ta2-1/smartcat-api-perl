=begin comment

Smartcat Integration API

No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end comment

=cut

#
# NOTE: This class is auto generated by Swagger Codegen
# Please update the test cases below to test the API endpoints.
# Ref: https://github.com/swagger-api/swagger-codegen
#
use Test::More tests => 1; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use_ok('Smartcat::Client::ClientApi');

my $api = Smartcat::Client::ClientApi->new();
isa_ok($api, 'Smartcat::Client::ClientApi');

#
# client_create_client test
#
{
    my $name = undef; # replace NULL with a proper value
    my $result = $api->client_create_client(name => $name);
}

#
# client_get_client test
#
{
    my $client_id = undef; # replace NULL with a proper value
    my $result = $api->client_get_client(client_id => $client_id);
}

#
# client_set_client_net_rate test
#
{
    my $client_id = undef; # replace NULL with a proper value
    my $net_rate_id = undef; # replace NULL with a proper value
    my $result = $api->client_set_client_net_rate(client_id => $client_id, net_rate_id => $net_rate_id);
}


1;
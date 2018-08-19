
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
use Test::More tests => 1;    #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use_ok('Smartcat::Client::GlossaryApi');

my $api = Smartcat::Client::GlossaryApi->new();
isa_ok( $api, 'Smartcat::Client::GlossaryApi' );

#
# glossary_get_glossaries test
#
{
    my $result = $api->glossary_get_glossaries();
}

1;

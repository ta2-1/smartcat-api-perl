
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
use Test::More tests => 2;    #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use_ok('Smartcat::Client::AccountApi');

my $api = Smartcat::Client::AccountApi->new();
isa_ok( $api, 'Smartcat::Client::AccountApi' );

#
# account_add_inhouse_translator test
#
#{
#    my $model = undef;    # replace NULL with a proper value
#    my $result = $api->account_add_inhouse_translator( model => $model );
#}

#
# account_get_account_info test
#
#{
#    my $result = $api->account_get_account_info();
#}

#
# account_get_lsp_services test
#
#{
#    my $source_language = undef;    # replace NULL with a proper value
#    my $target_language = undef;    # replace NULL with a proper value
#    my $result = $api->account_get_lsp_services(
#        source_language => $source_language,
#        target_language => $target_language
#    );
#}

#
# account_get_mt_engines_for_account test
#
#{
#    my $result = $api->account_get_mt_engines_for_account();
#}

#
# account_get_my_team_member_by_external_id test
#
#{
#    my $external_id = undef;    # replace NULL with a proper value
#    my $result = $api->account_get_my_team_member_by_external_id(
#        external_id => $external_id );
#}

#
# account_get_my_team_member_by_id test
#
#{
#    my $user_id = undef;    # replace NULL with a proper value
#    my $result = $api->account_get_my_team_member_by_id( user_id => $user_id );
#}

#
# account_remove_user_from_my_team test
#
#{
#    my $user_id = undef;    # replace NULL with a proper value
#    my $result = $api->account_remove_user_from_my_team( user_id => $user_id );
#}

#
# account_search_my_team test
#
#{
#    my $request_model = undef;    # replace NULL with a proper value
#    my $result =
#      $api->account_search_my_team( request_model => $request_model );
#}

1;


=begin comment

Smartcat Integration API

No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end comment

=cut

#
# NOTE: This class is auto generated by the swagger code generator program.
# Do not edit the class manually.
# Ref: https://github.com/swagger-api/swagger-codegen
#
package Smartcat::Client::AccountApi;

require 5.6.0;
use strict;
use warnings;
use utf8;
use Exporter;
use Carp qw( croak );
use Log::Any qw($log);

use Smartcat::Client::ApiClient;

use base "Class::Data::Inheritable";

__PACKAGE__->mk_classdata( 'method_documentation' => {} );

sub new {
    my $class = shift;
    my $api_client;

    if ( $_[0] && ref $_[0] && ref $_[0] eq 'Smartcat::Client::ApiClient' ) {
        $api_client = $_[0];
    }
    else {
        $api_client = Smartcat::Client::ApiClient->new(@_);
    }

    bless { api_client => $api_client }, $class;

}

#
# account_add_inhouse_translator
#
#
#
# @param InhouseTranslatorCreationModel $model  (required)
{
    my $params = {
        'model' => {
            data_type   => 'InhouseTranslatorCreationModel',
            description => '',
            required    => '1',
        },
    };
    __PACKAGE__->method_documentation->{'account_add_inhouse_translator'} = {
        summary => '',
        params  => $params,
        returns => 'MyTeamMemberModel',
    };
}

# @return MyTeamMemberModel
#
sub account_add_inhouse_translator {
    my ( $self, %args ) = @_;

    # verify the required parameter 'model' is set
    unless ( exists $args{'model'} ) {
        croak(
"Missing the required parameter 'model' when calling account_add_inhouse_translator"
        );
    }

    # parse inputs
    my $_resource_path = '/api/integration/v1/account/myTeam';

    my $_method       = 'POST';
    my $query_params  = {};
    my $header_params = {};
    my $form_params   = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}
      ->select_header_accept( 'application/json', 'text/json' );
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}
      ->select_header_content_type( 'application/json', 'text/json' );

    my $_body_data;

    # body params
    if ( exists $args{'model'} ) {
        $_body_data = $args{'model'};
    }

    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api(
        $_resource_path, $_method,    $query_params, $form_params,
        $header_params,  $_body_data, $auth_settings
    );
    if ( !$response ) {
        return;
    }
    my $_response_object =
      $self->{api_client}->deserialize( 'MyTeamMemberModel', $response );
    return $_response_object;
}

#
# account_get_account_info
#
# Receiving the account details
#
{
    my $params = {};
    __PACKAGE__->method_documentation->{'account_get_account_info'} = {
        summary => 'Receiving the account details',
        params  => $params,
        returns => 'AccountModel',
    };
}

# @return AccountModel
#
sub account_get_account_info {
    my ( $self, %args ) = @_;

    # parse inputs
    my $_resource_path = '/api/integration/v1/account';

    my $_method       = 'GET';
    my $query_params  = {};
    my $header_params = {};
    my $form_params   = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}
      ->select_header_accept( 'application/json', 'text/json' );
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} =
      $self->{api_client}->select_header_content_type();

    my $_body_data;

    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api(
        $_resource_path, $_method,    $query_params, $form_params,
        $header_params,  $_body_data, $auth_settings
    );
    if ( !$response ) {
        return;
    }
    my $_response_object =
      $self->{api_client}->deserialize( 'AccountModel', $response );
    return $_response_object;
}

#
# account_get_lsp_services
#
#
#
# @param string $source_language  (optional)
# @param string $target_language  (optional)
{
    my $params = {
        'source_language' => {
            data_type   => 'string',
            description => '',
            required    => '0',
        },
        'target_language' => {
            data_type   => 'string',
            description => '',
            required    => '0',
        },
    };
    __PACKAGE__->method_documentation->{'account_get_lsp_services'} = {
        summary => '',
        params  => $params,
        returns => 'ARRAY[LspServiceModel]',
    };
}

# @return ARRAY[LspServiceModel]
#
sub account_get_lsp_services {
    my ( $self, %args ) = @_;

    # parse inputs
    my $_resource_path = '/api/integration/v1/account/lsp/services';

    my $_method       = 'GET';
    my $query_params  = {};
    my $header_params = {};
    my $form_params   = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}
      ->select_header_accept( 'application/json', 'text/json' );
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} =
      $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'source_language'} ) {
        $query_params->{'sourceLanguage'} =
          $self->{api_client}->to_query_value( $args{'source_language'} );
    }

    # query params
    if ( exists $args{'target_language'} ) {
        $query_params->{'targetLanguage'} =
          $self->{api_client}->to_query_value( $args{'target_language'} );
    }

    my $_body_data;

    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api(
        $_resource_path, $_method,    $query_params, $form_params,
        $header_params,  $_body_data, $auth_settings
    );
    if ( !$response ) {
        return;
    }
    my $_response_object =
      $self->{api_client}->deserialize( 'ARRAY[LspServiceModel]', $response );
    return $_response_object;
}

#
# account_get_mt_engines_for_account
#
# Receiving MT engines available for the account
#
{
    my $params = {};
    __PACKAGE__->method_documentation->{'account_get_mt_engines_for_account'} =
      {
        summary => 'Receiving MT engines available for the account',
        params  => $params,
        returns => 'ARRAY[MTEngineModel]',
      };
}

# @return ARRAY[MTEngineModel]
#
sub account_get_mt_engines_for_account {
    my ( $self, %args ) = @_;

    # parse inputs
    my $_resource_path = '/api/integration/v1/account/mtengines';

    my $_method       = 'GET';
    my $query_params  = {};
    my $header_params = {};
    my $form_params   = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}
      ->select_header_accept( 'application/json', 'text/json' );
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} =
      $self->{api_client}->select_header_content_type();

    my $_body_data;

    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api(
        $_resource_path, $_method,    $query_params, $form_params,
        $header_params,  $_body_data, $auth_settings
    );
    if ( !$response ) {
        return;
    }
    my $_response_object =
      $self->{api_client}->deserialize( 'ARRAY[MTEngineModel]', $response );
    return $_response_object;
}

#
# account_get_my_team_member_by_external_id
#
#
#
# @param string $external_id  (required)
{
    my $params = {
        'external_id' => {
            data_type   => 'string',
            description => '',
            required    => '1',
        },
    };
    __PACKAGE__->method_documentation->{
        'account_get_my_team_member_by_external_id'} = {
        summary => '',
        params  => $params,
        returns => 'MyTeamMemberModel',
        };
}

# @return MyTeamMemberModel
#
sub account_get_my_team_member_by_external_id {
    my ( $self, %args ) = @_;

    # verify the required parameter 'external_id' is set
    unless ( exists $args{'external_id'} ) {
        croak(
"Missing the required parameter 'external_id' when calling account_get_my_team_member_by_external_id"
        );
    }

    # parse inputs
    my $_resource_path = '/api/integration/v1/account/myTeam';

    my $_method       = 'GET';
    my $query_params  = {};
    my $header_params = {};
    my $form_params   = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}
      ->select_header_accept( 'application/json', 'text/json' );
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} =
      $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'external_id'} ) {
        $query_params->{'externalId'} =
          $self->{api_client}->to_query_value( $args{'external_id'} );
    }

    my $_body_data;

    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api(
        $_resource_path, $_method,    $query_params, $form_params,
        $header_params,  $_body_data, $auth_settings
    );
    if ( !$response ) {
        return;
    }
    my $_response_object =
      $self->{api_client}->deserialize( 'MyTeamMemberModel', $response );
    return $_response_object;
}

#
# account_get_my_team_member_by_id
#
#
#
# @param string $user_id  (required)
{
    my $params = {
        'user_id' => {
            data_type   => 'string',
            description => '',
            required    => '1',
        },
    };
    __PACKAGE__->method_documentation->{'account_get_my_team_member_by_id'} = {
        summary => '',
        params  => $params,
        returns => 'MyTeamMemberModel',
    };
}

# @return MyTeamMemberModel
#
sub account_get_my_team_member_by_id {
    my ( $self, %args ) = @_;

    # verify the required parameter 'user_id' is set
    unless ( exists $args{'user_id'} ) {
        croak(
"Missing the required parameter 'user_id' when calling account_get_my_team_member_by_id"
        );
    }

    # parse inputs
    my $_resource_path = '/api/integration/v1/account/myTeam/{userId}';

    my $_method       = 'GET';
    my $query_params  = {};
    my $header_params = {};
    my $form_params   = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}
      ->select_header_accept( 'application/json', 'text/json' );
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} =
      $self->{api_client}->select_header_content_type();

    # path params
    if ( exists $args{'user_id'} ) {
        my $_base_variable = "{" . "userId" . "}";
        my $_base_value =
          $self->{api_client}->to_path_value( $args{'user_id'} );
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;

    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api(
        $_resource_path, $_method,    $query_params, $form_params,
        $header_params,  $_body_data, $auth_settings
    );
    if ( !$response ) {
        return;
    }
    my $_response_object =
      $self->{api_client}->deserialize( 'MyTeamMemberModel', $response );
    return $_response_object;
}

#
# account_remove_user_from_my_team
#
#
#
# @param string $user_id  (required)
{
    my $params = {
        'user_id' => {
            data_type   => 'string',
            description => '',
            required    => '1',
        },
    };
    __PACKAGE__->method_documentation->{'account_remove_user_from_my_team'} = {
        summary => '',
        params  => $params,
        returns => undef,
    };
}

# @return void
#
sub account_remove_user_from_my_team {
    my ( $self, %args ) = @_;

    # verify the required parameter 'user_id' is set
    unless ( exists $args{'user_id'} ) {
        croak(
"Missing the required parameter 'user_id' when calling account_remove_user_from_my_team"
        );
    }

    # parse inputs
    my $_resource_path = '/api/integration/v1/account/myTeam/{userId}';

    my $_method       = 'DELETE';
    my $query_params  = {};
    my $header_params = {};
    my $form_params   = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept();
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} =
      $self->{api_client}->select_header_content_type();

    # path params
    if ( exists $args{'user_id'} ) {
        my $_base_variable = "{" . "userId" . "}";
        my $_base_value =
          $self->{api_client}->to_path_value( $args{'user_id'} );
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;

    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    $self->{api_client}->call_api(
        $_resource_path, $_method,    $query_params, $form_params,
        $header_params,  $_body_data, $auth_settings
    );
    return;
}

#
# account_search_my_team
#
#
#
# @param MyTeamSearchRequestModel $request_model  (required)
{
    my $params = {
        'request_model' => {
            data_type   => 'MyTeamSearchRequestModel',
            description => '',
            required    => '1',
        },
    };
    __PACKAGE__->method_documentation->{'account_search_my_team'} = {
        summary => '',
        params  => $params,
        returns => 'ARRAY[MyTeamMemberModel]',
    };
}

# @return ARRAY[MyTeamMemberModel]
#
sub account_search_my_team {
    my ( $self, %args ) = @_;

    # verify the required parameter 'request_model' is set
    unless ( exists $args{'request_model'} ) {
        croak(
"Missing the required parameter 'request_model' when calling account_search_my_team"
        );
    }

    # parse inputs
    my $_resource_path = '/api/integration/v1/account/searchMyTeam';

    my $_method       = 'POST';
    my $query_params  = {};
    my $header_params = {};
    my $form_params   = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}
      ->select_header_accept( 'application/json', 'text/json' );
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}
      ->select_header_content_type( 'application/json', 'text/json' );

    my $_body_data;

    # body params
    if ( exists $args{'request_model'} ) {
        $_body_data = $args{'request_model'};
    }

    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api(
        $_resource_path, $_method,    $query_params, $form_params,
        $header_params,  $_body_data, $auth_settings
    );
    if ( !$response ) {
        return;
    }
    my $_response_object =
      $self->{api_client}->deserialize( 'ARRAY[MyTeamMemberModel]', $response );
    return $_response_object;
}

1;

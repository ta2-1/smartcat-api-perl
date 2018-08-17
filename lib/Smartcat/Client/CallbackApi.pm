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
package Smartcat::Client::CallbackApi;

require 5.6.0;
use strict;
use warnings;
use utf8; 
use Exporter;
use Carp qw( croak );
use Log::Any qw($log);

use Smartcat::Client::ApiClient;

use base "Class::Data::Inheritable";

__PACKAGE__->mk_classdata('method_documentation' => {});

sub new {
    my $class = shift;
    my $api_client;

    if ($_[0] && ref $_[0] && ref $_[0] eq 'Smartcat::Client::ApiClient' ) {
        $api_client = $_[0];
    } else {
        $api_client = Smartcat::Client::ApiClient->new(@_);
    }

    bless { api_client => $api_client }, $class;

}


#
# callback_delete
#
# Resetting the configuration of notifications reception
# 
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'callback_delete' } = { 
    	summary => 'Resetting the configuration of notifications reception',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub callback_delete {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/api/integration/v1/callback';

    my $_method = 'DELETE';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept();
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# callback_get
#
# Reading configurations of notifications reception of the account
# 
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'callback_get' } = { 
    	summary => 'Reading configurations of notifications reception of the account',
        params => $params,
        returns => 'CallbackPropertyModel',
        };
}
# @return CallbackPropertyModel
#
sub callback_get {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/api/integration/v1/callback';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json', 'text/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('CallbackPropertyModel', $response);
    return $_response_object;
}

#
# callback_get_last_errors
#
# Reading the recent sending errors
# 
# @param int $limit Limit on the number of returned errors (no more than 100) (optional)
{
    my $params = {
    'limit' => {
        data_type => 'int',
        description => 'Limit on the number of returned errors (no more than 100)',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'callback_get_last_errors' } = { 
    	summary => 'Reading the recent sending errors',
        params => $params,
        returns => 'ARRAY[CallbackErrorModel]',
        };
}
# @return ARRAY[CallbackErrorModel]
#
sub callback_get_last_errors {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/api/integration/v1/callback/lastErrors';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json', 'text/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'limit'}) {
        $query_params->{'limit'} = $self->{api_client}->to_query_value($args{'limit'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('ARRAY[CallbackErrorModel]', $response);
    return $_response_object;
}

#
# callback_update
#
# 
# 
# @param CallbackPropertyModel $callback_property  (required)
{
    my $params = {
    'callback_property' => {
        data_type => 'CallbackPropertyModel',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'callback_update' } = { 
    	summary => '',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub callback_update {
    my ($self, %args) = @_;

    # verify the required parameter 'callback_property' is set
    unless (exists $args{'callback_property'}) {
      croak("Missing the required parameter 'callback_property' when calling callback_update");
    }

    # parse inputs
    my $_resource_path = '/api/integration/v1/callback';

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept();
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json', 'text/json');

    my $_body_data;
    # body params
    if ( exists $args{'callback_property'}) {
        $_body_data = $args{'callback_property'};
    }

    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

1;
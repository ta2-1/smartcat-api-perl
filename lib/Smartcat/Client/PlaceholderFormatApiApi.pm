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
package Smartcat::Client::PlaceholderFormatApiApi;

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
# placeholder_format_api_get_placeholder_formats
#
# 
# 
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'placeholder_format_api_get_placeholder_formats' } = { 
    	summary => '',
        params => $params,
        returns => 'ARRAY[PlaceholderFormatModel]',
        };
}
# @return ARRAY[PlaceholderFormatModel]
#
sub placeholder_format_api_get_placeholder_formats {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/api/integration/v1/placeholders';

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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[PlaceholderFormatModel]', $response);
    return $_response_object;
}

#
# placeholder_format_api_update_placeholder_formats
#
# 
# 
# @param ARRAY[PlaceholderFormatModel] $formats  (required)
{
    my $params = {
    'formats' => {
        data_type => 'ARRAY[PlaceholderFormatModel]',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'placeholder_format_api_update_placeholder_formats' } = { 
    	summary => '',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub placeholder_format_api_update_placeholder_formats {
    my ($self, %args) = @_;

    # verify the required parameter 'formats' is set
    unless (exists $args{'formats'}) {
      croak("Missing the required parameter 'formats' when calling placeholder_format_api_update_placeholder_formats");
    }

    # parse inputs
    my $_resource_path = '/api/integration/v1/placeholders';

    my $_method = 'PUT';
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
    if ( exists $args{'formats'}) {
        $_body_data = $args{'formats'};
    }

    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# placeholder_format_api_validate_placeholder_format
#
# 
# 
# @param string $format  (required)
{
    my $params = {
    'format' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'placeholder_format_api_validate_placeholder_format' } = { 
    	summary => '',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub placeholder_format_api_validate_placeholder_format {
    my ($self, %args) = @_;

    # verify the required parameter 'format' is set
    unless (exists $args{'format'}) {
      croak("Missing the required parameter 'format' when calling placeholder_format_api_validate_placeholder_format");
    }

    # parse inputs
    my $_resource_path = '/api/integration/v1/placeholders/validate';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept();
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'format'}) {
        $query_params->{'format'} = $self->{api_client}->to_query_value($args{'format'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

1;

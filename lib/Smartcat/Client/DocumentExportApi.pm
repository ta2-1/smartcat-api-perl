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
package Smartcat::Client::DocumentExportApi;

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
# document_export_download_export_result
#
# Download the results of export
# 
# @param string $task_id Export task ID (required)
{
    my $params = {
    'task_id' => {
        data_type => 'string',
        description => 'Export task ID',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'document_export_download_export_result' } = { 
    	summary => 'Download the results of export',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub document_export_download_export_result {
    my ($self, %args) = @_;

    # verify the required parameter 'task_id' is set
    unless (exists $args{'task_id'}) {
      croak("Missing the required parameter 'task_id' when calling document_export_download_export_result");
    }

    # parse inputs
    my $_resource_path = '/api/integration/v1/document/export/{taskId}';

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

    # path params
    if ( exists $args{'task_id'}) {
        my $_base_variable = "{" . "taskId" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'task_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
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

#
# document_export_request_export
#
# 
# 
# @param ARRAY[string] $document_ids  (required)
# @param string $type  (optional)
# @param int $stage_number  (optional)
{
    my $params = {
    'document_ids' => {
        data_type => 'ARRAY[string]',
        description => '',
        required => '1',
    },
    'type' => {
        data_type => 'string',
        description => '',
        required => '0',
    },
    'stage_number' => {
        data_type => 'int',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'document_export_request_export' } = { 
    	summary => '',
        params => $params,
        returns => 'ExportDocumentTaskModel',
        };
}
# @return ExportDocumentTaskModel
#
sub document_export_request_export {
    my ($self, %args) = @_;

    # verify the required parameter 'document_ids' is set
    unless (exists $args{'document_ids'}) {
      croak("Missing the required parameter 'document_ids' when calling document_export_request_export");
    }

    # parse inputs
    my $_resource_path = '/api/integration/v1/document/export';

    my $_method = 'POST';
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
    if ( exists $args{'document_ids'}) {
        $query_params->{'documentIds'} = $self->{api_client}->to_query_value($args{'document_ids'});
    }

    # query params
    if ( exists $args{'type'}) {
        $query_params->{'type'} = $self->{api_client}->to_query_value($args{'type'});
    }

    # query params
    if ( exists $args{'stage_number'}) {
        $query_params->{'stageNumber'} = $self->{api_client}->to_query_value($args{'stage_number'});
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
    my $_response_object = $self->{api_client}->deserialize('ExportDocumentTaskModel', $response);
    return $_response_object;
}

1;

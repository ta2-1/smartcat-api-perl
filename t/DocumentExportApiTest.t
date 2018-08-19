
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

use_ok('Smartcat::Client::DocumentExportApi');

my $api = Smartcat::Client::DocumentExportApi->new();
isa_ok( $api, 'Smartcat::Client::DocumentExportApi' );

#
# document_export_download_export_result test
#
{
    my $task_id = undef;    # replace NULL with a proper value
    my $result =
      $api->document_export_download_export_result( task_id => $task_id );
}

#
# document_export_request_export test
#
{
    my $document_ids = undef;    # replace NULL with a proper value
    my $type         = undef;    # replace NULL with a proper value
    my $stage_number = undef;    # replace NULL with a proper value
    my $result = $api->document_export_request_export(
        document_ids => $document_ids,
        type         => $type,
        stage_number => $stage_number
    );
}

1;

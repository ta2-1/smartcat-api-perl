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

use_ok('Smartcat::Client::DocumentApi');

my $api = Smartcat::Client::DocumentApi->new();
isa_ok($api, 'Smartcat::Client::DocumentApi');

#
# document_assign_executives test
#
{
    my $document_id = undef; # replace NULL with a proper value
    my $stage_number = undef; # replace NULL with a proper value
    my $request = undef; # replace NULL with a proper value
    my $result = $api->document_assign_executives(document_id => $document_id, stage_number => $stage_number, request => $request);
}

#
# document_assign_freelancers_to_document test
#
{
    my $document_id = undef; # replace NULL with a proper value
    my $stage_number = undef; # replace NULL with a proper value
    my $freelancer_user_ids = undef; # replace NULL with a proper value
    my $result = $api->document_assign_freelancers_to_document(document_id => $document_id, stage_number => $stage_number, freelancer_user_ids => $freelancer_user_ids);
}

#
# document_assign_my_team_executives test
#
{
    my $request_model = undef; # replace NULL with a proper value
    my $result = $api->document_assign_my_team_executives(request_model => $request_model);
}

#
# document_delete test
#
{
    my $document_ids = undef; # replace NULL with a proper value
    my $result = $api->document_delete(document_ids => $document_ids);
}

#
# document_get test
#
{
    my $document_id = undef; # replace NULL with a proper value
    my $result = $api->document_get(document_id => $document_id);
}

#
# document_get_auth_url test
#
{
    my $user_id = undef; # replace NULL with a proper value
    my $document_id = undef; # replace NULL with a proper value
    my $result = $api->document_get_auth_url(user_id => $user_id, document_id => $document_id);
}

#
# document_get_statistics test
#
{
    my $document_id = undef; # replace NULL with a proper value
    my $only_exact_matches = undef; # replace NULL with a proper value
    my $result = $api->document_get_statistics(document_id => $document_id, only_exact_matches => $only_exact_matches);
}

#
# document_get_translation_status test
#
{
    my $document_id = undef; # replace NULL with a proper value
    my $result = $api->document_get_translation_status(document_id => $document_id);
}

#
# document_get_translations_import_result test
#
{
    my $document_id = undef; # replace NULL with a proper value
    my $result = $api->document_get_translations_import_result(document_id => $document_id);
}

#
# document_rename test
#
{
    my $document_id = undef; # replace NULL with a proper value
    my $name = undef; # replace NULL with a proper value
    my $result = $api->document_rename(document_id => $document_id, name => $name);
}

#
# document_translate test
#
{
    my $document_id = undef; # replace NULL with a proper value
    my $translation_file = undef; # replace NULL with a proper value
    my $overwrite = undef; # replace NULL with a proper value
    my $confirm_translation = undef; # replace NULL with a proper value
    my $result = $api->document_translate(document_id => $document_id, translation_file => $translation_file, overwrite => $overwrite, confirm_translation => $confirm_translation);
}

#
# document_translate_with_xliff test
#
{
    my $document_id = undef; # replace NULL with a proper value
    my $confirm_translation = undef; # replace NULL with a proper value
    my $overwrite_updated_segments = undef; # replace NULL with a proper value
    my $translation_file = undef; # replace NULL with a proper value
    my $result = $api->document_translate_with_xliff(document_id => $document_id, confirm_translation => $confirm_translation, overwrite_updated_segments => $overwrite_updated_segments, translation_file => $translation_file);
}

#
# document_update test
#
{
    my $document_id = undef; # replace NULL with a proper value
    my $update_document_model = undef; # replace NULL with a proper value
    my $disassemble_algorithm_name = undef; # replace NULL with a proper value
    my $result = $api->document_update(document_id => $document_id, update_document_model => $update_document_model, disassemble_algorithm_name => $disassemble_algorithm_name);
}


1;
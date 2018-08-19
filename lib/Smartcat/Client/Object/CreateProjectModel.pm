
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
package Smartcat::Client::Object::CreateProjectModel;

require 5.6.0;
use strict;
use warnings;
use utf8;
use JSON qw(decode_json);
use Data::Dumper;
use Module::Runtime qw(use_module);
use Log::Any qw($log);
use Date::Parse;
use DateTime;

use Smartcat::Client::Object::CreateDocumentPropertyModel;

use base ( "Class::Accessor", "Class::Data::Inheritable" );

#
#
#
# NOTE: This class is auto generated by the swagger code generator program. Do not edit the class manually.
# REF: https://github.com/swagger-api/swagger-codegen
#

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
__PACKAGE__->mk_classdata( 'attribute_map'        => {} );
__PACKAGE__->mk_classdata( 'swagger_types'        => {} );
__PACKAGE__->mk_classdata( 'method_documentation' => {} );
__PACKAGE__->mk_classdata( 'class_documentation'  => {} );

# new object
sub new {
    my ( $class, %args ) = @_;

    my $self = bless {}, $class;

    foreach my $attribute ( keys %{ $class->attribute_map } ) {
        my $args_key = $class->attribute_map->{$attribute};
        $self->$attribute( $args{$args_key} );
    }

    return $self;
}

# return perl hash
sub to_hash {
    return decode_json( JSON->new->convert_blessed->encode(shift) );
}

# used by JSON for serialization
sub TO_JSON {
    my $self  = shift;
    my $_data = {};
    foreach my $_key ( keys %{ $self->attribute_map } ) {
        if ( defined $self->{$_key} ) {
            $_data->{ $self->attribute_map->{$_key} } = $self->{$_key};
        }
    }
    return $_data;
}

# from Perl hashref
sub from_hash {
    my ( $self, $hash ) = @_;

    # loop through attributes and use swagger_types to deserialize the data
    while ( my ( $_key, $_type ) = each %{ $self->swagger_types } ) {
        my $_json_attribute = $self->attribute_map->{$_key};
        if ( $_type =~ /^array\[/i ) {    # array
            my $_subclass = substr( $_type, 6, -1 );
            my @_array = ();
            foreach my $_element ( @{ $hash->{$_json_attribute} } ) {
                push @_array, $self->_deserialize( $_subclass, $_element );
            }
            $self->{$_key} = \@_array;
        }
        elsif ( exists $hash->{$_json_attribute} )
        {                                 #hash(model), primitive, datetime
            $self->{$_key} =
              $self->_deserialize( $_type, $hash->{$_json_attribute} );
        }
        else {
            $log->debugf( "Warning: %s (%s) does not exist in input hash\n",
                $_key, $_json_attribute );
        }
    }

    return $self;
}

# deserialize non-array data
sub _deserialize {
    my ( $self, $type, $data ) = @_;
    $log->debugf( "deserializing %s with %s", Dumper($data), $type );

    if ( $type eq 'DateTime' ) {
        return DateTime->from_epoch( epoch => str2time($data) );
    }
    elsif ( grep( /^$type$/, ( 'int', 'double', 'string', 'boolean' ) ) ) {
        return $data;
    }
    else {    # hash(model)
        my $_instance = eval "Smartcat::Client::Object::$type->new()";
        return $_instance->from_hash($data);
    }
}

__PACKAGE__->class_documentation(
    {
        description => '',
        class       => 'CreateProjectModel',
        required    => [],                     # TODO
    }
);

__PACKAGE__->method_documentation(
    {
        'name' => {
            datatype    => 'string',
            base_name   => 'name',
            description => '',
            format      => '',
            read_only   => '',
        },
        'description' => {
            datatype    => 'string',
            base_name   => 'description',
            description => '',
            format      => '',
            read_only   => '',
        },
        'deadline' => {
            datatype    => 'DateTime',
            base_name   => 'deadline',
            description => '',
            format      => '',
            read_only   => '',
        },
        'source_language' => {
            datatype    => 'string',
            base_name   => 'sourceLanguage',
            description => '',
            format      => '',
            read_only   => '',
        },
        'target_languages' => {
            datatype    => 'ARRAY[string]',
            base_name   => 'targetLanguages',
            description => '',
            format      => '',
            read_only   => '',
        },
        'domain_id' => {
            datatype    => 'int',
            base_name   => 'domainId',
            description => '',
            format      => '',
            read_only   => '',
        },
        'client_id' => {
            datatype    => 'string',
            base_name   => 'clientId',
            description => '',
            format      => '',
            read_only   => '',
        },
        'vendor_account_id' => {
            datatype    => 'string',
            base_name   => 'vendorAccountId',
            description => '',
            format      => '',
            read_only   => '',
        },
        'assign_to_vendor' => {
            datatype    => 'boolean',
            base_name   => 'assignToVendor',
            description => '',
            format      => '',
            read_only   => '',
        },
        'use_mt' => {
            datatype    => 'boolean',
            base_name   => 'useMT',
            description => '',
            format      => '',
            read_only   => '',
        },
        'pretranslate' => {
            datatype    => 'boolean',
            base_name   => 'pretranslate',
            description => '',
            format      => '',
            read_only   => '',
        },
        'translation_memory_name' => {
            datatype    => 'string',
            base_name   => 'translationMemoryName',
            description => '',
            format      => '',
            read_only   => '',
        },
        'use_translation_memory' => {
            datatype    => 'boolean',
            base_name   => 'useTranslationMemory',
            description => '',
            format      => '',
            read_only   => '',
        },
        'auto_propagate_repetitions' => {
            datatype    => 'boolean',
            base_name   => 'autoPropagateRepetitions',
            description => '',
            format      => '',
            read_only   => '',
        },
        'document_properties' => {
            datatype    => 'ARRAY[CreateDocumentPropertyModel]',
            base_name   => 'documentProperties',
            description => '',
            format      => '',
            read_only   => '',
        },
        'workflow_stages' => {
            datatype    => 'ARRAY[string]',
            base_name   => 'workflowStages',
            description => '',
            format      => '',
            read_only   => '',
        },
        'is_for_testing' => {
            datatype    => 'boolean',
            base_name   => 'isForTesting',
            description => '',
            format      => '',
            read_only   => '',
        },
        'external_tag' => {
            datatype    => 'string',
            base_name   => 'externalTag',
            description => '',
            format      => '',
            read_only   => '',
        },
    }
);

__PACKAGE__->swagger_types(
    {
        'name'                       => 'string',
        'description'                => 'string',
        'deadline'                   => 'DateTime',
        'source_language'            => 'string',
        'target_languages'           => 'ARRAY[string]',
        'domain_id'                  => 'int',
        'client_id'                  => 'string',
        'vendor_account_id'          => 'string',
        'assign_to_vendor'           => 'boolean',
        'use_mt'                     => 'boolean',
        'pretranslate'               => 'boolean',
        'translation_memory_name'    => 'string',
        'use_translation_memory'     => 'boolean',
        'auto_propagate_repetitions' => 'boolean',
        'document_properties'        => 'ARRAY[CreateDocumentPropertyModel]',
        'workflow_stages'            => 'ARRAY[string]',
        'is_for_testing'             => 'boolean',
        'external_tag'               => 'string'
    }
);

__PACKAGE__->attribute_map(
    {
        'name'                       => 'name',
        'description'                => 'description',
        'deadline'                   => 'deadline',
        'source_language'            => 'sourceLanguage',
        'target_languages'           => 'targetLanguages',
        'domain_id'                  => 'domainId',
        'client_id'                  => 'clientId',
        'vendor_account_id'          => 'vendorAccountId',
        'assign_to_vendor'           => 'assignToVendor',
        'use_mt'                     => 'useMT',
        'pretranslate'               => 'pretranslate',
        'translation_memory_name'    => 'translationMemoryName',
        'use_translation_memory'     => 'useTranslationMemory',
        'auto_propagate_repetitions' => 'autoPropagateRepetitions',
        'document_properties'        => 'documentProperties',
        'workflow_stages'            => 'workflowStages',
        'is_for_testing'             => 'isForTesting',
        'external_tag'               => 'externalTag'
    }
);

__PACKAGE__->mk_accessors( keys %{ __PACKAGE__->attribute_map } );

1;

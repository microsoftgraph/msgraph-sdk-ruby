require 'microsoft_kiota_abstractions'
require_relative '../../../../../../microsoft_graph'
require_relative '../../../../../../models/synchronization_secret_key_string_value_pair'
require_relative '../../../../../applications'
require_relative '../../../../item'
require_relative '../../../synchronization'
require_relative '../../jobs'
require_relative '../item'
require_relative './validate_credentials'

module MicrosoftGraph
    module Applications
        module Item
            module Synchronization
                module Jobs
                    module Item
                        module ValidateCredentials
                            class ValidateCredentialsPostRequestBody
                                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                ## 
                                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                @additional_data
                                ## 
                                # The applicationIdentifier property
                                @application_identifier
                                ## 
                                # The credentials property
                                @credentials
                                ## 
                                # The templateId property
                                @template_id
                                ## 
                                # The useSavedCredentials property
                                @use_saved_credentials
                                ## 
                                ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                ## @return a i_dictionary
                                ## 
                                def additional_data
                                    return @additional_data
                                end
                                ## 
                                ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                ## @param value Value to set for the AdditionalData property.
                                ## @return a void
                                ## 
                                def additional_data=(value)
                                    @additional_data = value
                                end
                                ## 
                                ## Gets the applicationIdentifier property value. The applicationIdentifier property
                                ## @return a string
                                ## 
                                def application_identifier
                                    return @application_identifier
                                end
                                ## 
                                ## Sets the applicationIdentifier property value. The applicationIdentifier property
                                ## @param value Value to set for the applicationIdentifier property.
                                ## @return a void
                                ## 
                                def application_identifier=(value)
                                    @application_identifier = value
                                end
                                ## 
                                ## Instantiates a new validateCredentialsPostRequestBody and sets the default values.
                                ## @return a void
                                ## 
                                def initialize()
                                    @additional_data = Hash.new
                                end
                                ## 
                                ## Creates a new instance of the appropriate class based on discriminator value
                                ## @param parse_node The parse node to use to read the discriminator value and create the object
                                ## @return a validate_credentials_post_request_body
                                ## 
                                def self.create_from_discriminator_value(parse_node)
                                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                    return ValidateCredentialsPostRequestBody.new
                                end
                                ## 
                                ## Gets the credentials property value. The credentials property
                                ## @return a synchronization_secret_key_string_value_pair
                                ## 
                                def credentials
                                    return @credentials
                                end
                                ## 
                                ## Sets the credentials property value. The credentials property
                                ## @param value Value to set for the credentials property.
                                ## @return a void
                                ## 
                                def credentials=(value)
                                    @credentials = value
                                end
                                ## 
                                ## The deserialization information for the current model
                                ## @return a i_dictionary
                                ## 
                                def get_field_deserializers()
                                    return {
                                        "applicationIdentifier" => lambda {|n| @application_identifier = n.get_string_value() },
                                        "credentials" => lambda {|n| @credentials = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SynchronizationSecretKeyStringValuePair.create_from_discriminator_value(pn) }) },
                                        "templateId" => lambda {|n| @template_id = n.get_string_value() },
                                        "useSavedCredentials" => lambda {|n| @use_saved_credentials = n.get_boolean_value() },
                                    }
                                end
                                ## 
                                ## Serializes information the current object
                                ## @param writer Serialization writer to use to serialize this model
                                ## @return a void
                                ## 
                                def serialize(writer)
                                    raise StandardError, 'writer cannot be null' if writer.nil?
                                    writer.write_string_value("applicationIdentifier", @application_identifier)
                                    writer.write_collection_of_object_values("credentials", @credentials)
                                    writer.write_string_value("templateId", @template_id)
                                    writer.write_boolean_value("useSavedCredentials", @use_saved_credentials)
                                    writer.write_additional_data(@additional_data)
                                end
                                ## 
                                ## Gets the templateId property value. The templateId property
                                ## @return a string
                                ## 
                                def template_id
                                    return @template_id
                                end
                                ## 
                                ## Sets the templateId property value. The templateId property
                                ## @param value Value to set for the templateId property.
                                ## @return a void
                                ## 
                                def template_id=(value)
                                    @template_id = value
                                end
                                ## 
                                ## Gets the useSavedCredentials property value. The useSavedCredentials property
                                ## @return a boolean
                                ## 
                                def use_saved_credentials
                                    return @use_saved_credentials
                                end
                                ## 
                                ## Sets the useSavedCredentials property value. The useSavedCredentials property
                                ## @param value Value to set for the useSavedCredentials property.
                                ## @return a void
                                ## 
                                def use_saved_credentials=(value)
                                    @use_saved_credentials = value
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end

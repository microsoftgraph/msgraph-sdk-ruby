require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph'
require_relative '../../../models/custom_extension_authentication_configuration'
require_relative '../../../models/custom_extension_endpoint_configuration'
require_relative '../../identity'
require_relative '../custom_authentication_extensions'
require_relative './validate_authentication_configuration'

module MicrosoftGraph
    module Identity
        module CustomAuthenticationExtensions
            module ValidateAuthenticationConfiguration
                class ValidateAuthenticationConfigurationPostRequestBody
                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                    @additional_data
                    ## 
                    # The authenticationConfiguration property
                    @authentication_configuration
                    ## 
                    # The endpointConfiguration property
                    @endpoint_configuration
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
                    ## Gets the authenticationConfiguration property value. The authenticationConfiguration property
                    ## @return a custom_extension_authentication_configuration
                    ## 
                    def authentication_configuration
                        return @authentication_configuration
                    end
                    ## 
                    ## Sets the authenticationConfiguration property value. The authenticationConfiguration property
                    ## @param value Value to set for the authenticationConfiguration property.
                    ## @return a void
                    ## 
                    def authentication_configuration=(value)
                        @authentication_configuration = value
                    end
                    ## 
                    ## Instantiates a new ValidateAuthenticationConfigurationPostRequestBody and sets the default values.
                    ## @return a void
                    ## 
                    def initialize()
                        @additional_data = Hash.new
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a validate_authentication_configuration_post_request_body
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ValidateAuthenticationConfigurationPostRequestBody.new
                    end
                    ## 
                    ## Gets the endpointConfiguration property value. The endpointConfiguration property
                    ## @return a custom_extension_endpoint_configuration
                    ## 
                    def endpoint_configuration
                        return @endpoint_configuration
                    end
                    ## 
                    ## Sets the endpointConfiguration property value. The endpointConfiguration property
                    ## @param value Value to set for the endpointConfiguration property.
                    ## @return a void
                    ## 
                    def endpoint_configuration=(value)
                        @endpoint_configuration = value
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "authenticationConfiguration" => lambda {|n| @authentication_configuration = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::CustomExtensionAuthenticationConfiguration.create_from_discriminator_value(pn) }) },
                            "endpointConfiguration" => lambda {|n| @endpoint_configuration = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::CustomExtensionEndpointConfiguration.create_from_discriminator_value(pn) }) },
                        }
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_object_value("authenticationConfiguration", @authentication_configuration)
                        writer.write_object_value("endpointConfiguration", @endpoint_configuration)
                        writer.write_additional_data(@additional_data)
                    end
                end
            end
        end
    end
end

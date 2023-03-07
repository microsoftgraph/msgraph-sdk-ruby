require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph'
require_relative '../../application_templates'
require_relative '../item'
require_relative './instantiate'

module MicrosoftGraph
    module ApplicationTemplates
        module Item
            module Instantiate
                class InstantiatePostRequestBody
                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                    @additional_data
                    ## 
                    # The displayName property
                    @display_name
                    ## 
                    ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                    ## @return a i_dictionary
                    ## 
                    def additional_data
                        return @additional_data
                    end
                    ## 
                    ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                    ## @param value Value to set for the AdditionalData property.
                    ## @return a void
                    ## 
                    def additional_data=(value)
                        @additional_data = value
                    end
                    ## 
                    ## Instantiates a new instantiatePostRequestBody and sets the default values.
                    ## @return a void
                    ## 
                    def initialize()
                        @additional_data = Hash.new
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parseNode The parse node to use to read the discriminator value and create the object
                    ## @return a instantiate_post_request_body
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return InstantiatePostRequestBody.new
                    end
                    ## 
                    ## Gets the displayName property value. The displayName property
                    ## @return a string
                    ## 
                    def display_name
                        return @display_name
                    end
                    ## 
                    ## Sets the displayName property value. The displayName property
                    ## @param value Value to set for the display_name property.
                    ## @return a void
                    ## 
                    def display_name=(value)
                        @display_name = value
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "displayName" => lambda {|n| @display_name = n.get_string_value() },
                        }
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_string_value("displayName", @display_name)
                        writer.write_additional_data(@additional_data)
                    end
                end
            end
        end
    end
end

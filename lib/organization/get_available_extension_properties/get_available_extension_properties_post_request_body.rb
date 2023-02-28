require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../organization'
require_relative './get_available_extension_properties'

module MicrosoftGraph
    module Organization
        module GetAvailableExtensionProperties
            class GetAvailableExtensionPropertiesPostRequestBody
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The isSyncedFromOnPremises property
                @is_synced_from_on_premises
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
                ## Instantiates a new getAvailableExtensionPropertiesPostRequestBody and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a get_available_extension_properties_post_request_body
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return GetAvailableExtensionPropertiesPostRequestBody.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "isSyncedFromOnPremises" => lambda {|n| @is_synced_from_on_premises = n.get_boolean_value() },
                    }
                end
                ## 
                ## Gets the isSyncedFromOnPremises property value. The isSyncedFromOnPremises property
                ## @return a boolean
                ## 
                def is_synced_from_on_premises
                    return @is_synced_from_on_premises
                end
                ## 
                ## Sets the isSyncedFromOnPremises property value. The isSyncedFromOnPremises property
                ## @param value Value to set for the is_synced_from_on_premises property.
                ## @return a void
                ## 
                def is_synced_from_on_premises=(value)
                    @is_synced_from_on_premises = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_boolean_value("isSyncedFromOnPremises", @is_synced_from_on_premises)
                    writer.write_additional_data(@additional_data)
                end
            end
        end
    end
end

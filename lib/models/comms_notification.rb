require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class CommsNotification
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The changeType property
            @change_type
            ## 
            # The OdataType property
            @odata_type
            ## 
            # URI of the resource that was changed.
            @resource_url
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
            ## Gets the changeType property value. The changeType property
            ## @return a change_type
            ## 
            def change_type
                return @change_type
            end
            ## 
            ## Sets the changeType property value. The changeType property
            ## @param value Value to set for the change_type property.
            ## @return a void
            ## 
            def change_type=(value)
                @change_type = value
            end
            ## 
            ## Instantiates a new commsNotification and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a comms_notification
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CommsNotification.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "changeType" => lambda {|n| @change_type = n.get_enum_value(MicrosoftGraph::Models::ChangeType) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "resourceUrl" => lambda {|n| @resource_url = n.get_string_value() },
                }
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the resourceUrl property value. URI of the resource that was changed.
            ## @return a string
            ## 
            def resource_url
                return @resource_url
            end
            ## 
            ## Sets the resourceUrl property value. URI of the resource that was changed.
            ## @param value Value to set for the resource_url property.
            ## @return a void
            ## 
            def resource_url=(value)
                @resource_url = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_enum_value("changeType", @change_type)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("resourceUrl", @resource_url)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end

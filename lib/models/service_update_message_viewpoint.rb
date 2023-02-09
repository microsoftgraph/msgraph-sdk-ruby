require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ServiceUpdateMessageViewpoint
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Indicates whether the user archived the message.
            @is_archived
            ## 
            # Indicates whether the user marked the message as favorite.
            @is_favorited
            ## 
            # Indicates whether the user read the message.
            @is_read
            ## 
            # The OdataType property
            @odata_type
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
            ## Instantiates a new serviceUpdateMessageViewpoint and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a service_update_message_viewpoint
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ServiceUpdateMessageViewpoint.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "isArchived" => lambda {|n| @is_archived = n.get_boolean_value() },
                    "isFavorited" => lambda {|n| @is_favorited = n.get_boolean_value() },
                    "isRead" => lambda {|n| @is_read = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the isArchived property value. Indicates whether the user archived the message.
            ## @return a boolean
            ## 
            def is_archived
                return @is_archived
            end
            ## 
            ## Sets the isArchived property value. Indicates whether the user archived the message.
            ## @param value Value to set for the is_archived property.
            ## @return a void
            ## 
            def is_archived=(value)
                @is_archived = value
            end
            ## 
            ## Gets the isFavorited property value. Indicates whether the user marked the message as favorite.
            ## @return a boolean
            ## 
            def is_favorited
                return @is_favorited
            end
            ## 
            ## Sets the isFavorited property value. Indicates whether the user marked the message as favorite.
            ## @param value Value to set for the is_favorited property.
            ## @return a void
            ## 
            def is_favorited=(value)
                @is_favorited = value
            end
            ## 
            ## Gets the isRead property value. Indicates whether the user read the message.
            ## @return a boolean
            ## 
            def is_read
                return @is_read
            end
            ## 
            ## Sets the isRead property value. Indicates whether the user read the message.
            ## @param value Value to set for the is_read property.
            ## @return a void
            ## 
            def is_read=(value)
                @is_read = value
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_boolean_value("isArchived", @is_archived)
                writer.write_boolean_value("isFavorited", @is_favorited)
                writer.write_boolean_value("isRead", @is_read)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end

require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class PresenceStatusMessage
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The expiryDateTime property
            @expiry_date_time
            ## 
            # The message property
            @message
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The publishedDateTime property
            @published_date_time
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the additionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new presenceStatusMessage and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a presence_status_message
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PresenceStatusMessage.new
            end
            ## 
            ## Gets the expiryDateTime property value. The expiryDateTime property
            ## @return a date_time_time_zone
            ## 
            def expiry_date_time
                return @expiry_date_time
            end
            ## 
            ## Sets the expiryDateTime property value. The expiryDateTime property
            ## @param value Value to set for the expiryDateTime property.
            ## @return a void
            ## 
            def expiry_date_time=(value)
                @expiry_date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "expiryDateTime" => lambda {|n| @expiry_date_time = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DateTimeTimeZone.create_from_discriminator_value(pn) }) },
                    "message" => lambda {|n| @message = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ItemBody.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "publishedDateTime" => lambda {|n| @published_date_time = n.get_date_time_value() },
                }
            end
            ## 
            ## Gets the message property value. The message property
            ## @return a item_body
            ## 
            def message
                return @message
            end
            ## 
            ## Sets the message property value. The message property
            ## @param value Value to set for the message property.
            ## @return a void
            ## 
            def message=(value)
                @message = value
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
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the publishedDateTime property value. The publishedDateTime property
            ## @return a date_time
            ## 
            def published_date_time
                return @published_date_time
            end
            ## 
            ## Sets the publishedDateTime property value. The publishedDateTime property
            ## @param value Value to set for the publishedDateTime property.
            ## @return a void
            ## 
            def published_date_time=(value)
                @published_date_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("expiryDateTime", @expiry_date_time)
                writer.write_object_value("message", @message)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_date_time_value("publishedDateTime", @published_date_time)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end

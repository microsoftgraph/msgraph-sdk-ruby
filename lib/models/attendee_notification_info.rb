require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AttendeeNotificationInfo
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The phone number of the external attendee. Required.
            @phone_number
            ## 
            # The time zone of the external attendee. The timeZone property can be set to any of the time zones currently supported by Windows. Required.
            @time_zone
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
            ## Instantiates a new AttendeeNotificationInfo and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a attendee_notification_info
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AttendeeNotificationInfo.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "phoneNumber" => lambda {|n| @phone_number = n.get_string_value() },
                    "timeZone" => lambda {|n| @time_zone = n.get_string_value() },
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
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the phoneNumber property value. The phone number of the external attendee. Required.
            ## @return a string
            ## 
            def phone_number
                return @phone_number
            end
            ## 
            ## Sets the phoneNumber property value. The phone number of the external attendee. Required.
            ## @param value Value to set for the phoneNumber property.
            ## @return a void
            ## 
            def phone_number=(value)
                @phone_number = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("phoneNumber", @phone_number)
                writer.write_string_value("timeZone", @time_zone)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the timeZone property value. The time zone of the external attendee. The timeZone property can be set to any of the time zones currently supported by Windows. Required.
            ## @return a string
            ## 
            def time_zone
                return @time_zone
            end
            ## 
            ## Sets the timeZone property value. The time zone of the external attendee. The timeZone property can be set to any of the time zones currently supported by Windows. Required.
            ## @param value Value to set for the timeZone property.
            ## @return a void
            ## 
            def time_zone=(value)
                @time_zone = value
            end
        end
    end
end

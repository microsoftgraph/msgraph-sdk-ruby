require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph::Models
    class DateTimeTimeZone
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # A single point of time in a combined date and time representation ({date}T{time}; for example, 2017-08-29T04:00:00.0000000).
        @date_time
        ## 
        # The OdataType property
        @odata_type
        ## 
        # Represents a time zone, for example, 'Pacific Standard Time'. See below for more possible values.
        @time_zone
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
        ## Instantiates a new dateTimeTimeZone and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a date_time_time_zone
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return DateTimeTimeZone.new
        end
        ## 
        ## Gets the dateTime property value. A single point of time in a combined date and time representation ({date}T{time}; for example, 2017-08-29T04:00:00.0000000).
        ## @return a string
        ## 
        def date_time
            return @date_time
        end
        ## 
        ## Sets the dateTime property value. A single point of time in a combined date and time representation ({date}T{time}; for example, 2017-08-29T04:00:00.0000000).
        ## @param value Value to set for the date_time property.
        ## @return a void
        ## 
        def date_time=(value)
            @date_time = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "dateTime" => lambda {|n| @date_time = n.get_string_value() },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
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
            writer.write_string_value("dateTime", @date_time)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_string_value("timeZone", @time_zone)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the timeZone property value. Represents a time zone, for example, 'Pacific Standard Time'. See below for more possible values.
        ## @return a string
        ## 
        def time_zone
            return @time_zone
        end
        ## 
        ## Sets the timeZone property value. Represents a time zone, for example, 'Pacific Standard Time'. See below for more possible values.
        ## @param value Value to set for the time_zone property.
        ## @return a void
        ## 
        def time_zone=(value)
            @time_zone = value
        end
    end
end

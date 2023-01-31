require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph'
require_relative '../../../../../../../models/json'
require_relative '../../../../../../drives'
require_relative '../../../../../item'
require_relative '../../../../items'
require_relative '../../../item'
require_relative '../../workbook'
require_relative '../functions'
require_relative './microsoft_graph_weekday'

module MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphWeekday
    class WeekdayPostRequestBody
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        @return_type
        @serial_number
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
        ## Instantiates a new weekdayPostRequestBody and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a weekday_post_request_body
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return WeekdayPostRequestBody.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "returnType" => lambda {|n| @return_type = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                "serialNumber" => lambda {|n| @serial_number = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
            }
        end
        ## 
        ## Gets the returnType property value. 
        ## @return a json
        ## 
        def return_type
            return @return_type
        end
        ## 
        ## Sets the returnType property value. 
        ## @param value Value to set for the returnType property.
        ## @return a void
        ## 
        def return_type=(value)
            @return_type = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_object_value("returnType", @return_type)
            writer.write_object_value("serialNumber", @serial_number)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the serialNumber property value. 
        ## @return a json
        ## 
        def serial_number
            return @serial_number
        end
        ## 
        ## Sets the serialNumber property value. 
        ## @param value Value to set for the serialNumber property.
        ## @return a void
        ## 
        def serial_number=(value)
            @serial_number = value
        end
    end
end
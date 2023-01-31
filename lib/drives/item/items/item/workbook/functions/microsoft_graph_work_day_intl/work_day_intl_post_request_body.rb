require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph'
require_relative '../../../../../../../models/json'
require_relative '../../../../../../drives'
require_relative '../../../../../item'
require_relative '../../../../items'
require_relative '../../../item'
require_relative '../../workbook'
require_relative '../functions'
require_relative './microsoft_graph_work_day_intl'

module MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphWorkDay_Intl
    class WorkDay_IntlPostRequestBody
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        @days
        @holidays
        @start_date
        @weekend
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
        ## Instantiates a new workDay_IntlPostRequestBody and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a work_day_intl_post_request_body
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return WorkDay_IntlPostRequestBody.new
        end
        ## 
        ## Gets the days property value. 
        ## @return a json
        ## 
        def days
            return @days
        end
        ## 
        ## Sets the days property value. 
        ## @param value Value to set for the days property.
        ## @return a void
        ## 
        def days=(value)
            @days = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "days" => lambda {|n| @days = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                "holidays" => lambda {|n| @holidays = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                "startDate" => lambda {|n| @start_date = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                "weekend" => lambda {|n| @weekend = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
            }
        end
        ## 
        ## Gets the holidays property value. 
        ## @return a json
        ## 
        def holidays
            return @holidays
        end
        ## 
        ## Sets the holidays property value. 
        ## @param value Value to set for the holidays property.
        ## @return a void
        ## 
        def holidays=(value)
            @holidays = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_object_value("days", @days)
            writer.write_object_value("holidays", @holidays)
            writer.write_object_value("startDate", @start_date)
            writer.write_object_value("weekend", @weekend)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the startDate property value. 
        ## @return a json
        ## 
        def start_date
            return @start_date
        end
        ## 
        ## Sets the startDate property value. 
        ## @param value Value to set for the startDate property.
        ## @return a void
        ## 
        def start_date=(value)
            @start_date = value
        end
        ## 
        ## Gets the weekend property value. 
        ## @return a json
        ## 
        def weekend
            return @weekend
        end
        ## 
        ## Sets the weekend property value. 
        ## @param value Value to set for the weekend property.
        ## @return a void
        ## 
        def weekend=(value)
            @weekend = value
        end
    end
end

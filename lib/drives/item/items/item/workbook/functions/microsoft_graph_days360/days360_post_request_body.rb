require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph'
require_relative '../../../../../../../models/json'
require_relative '../../../../../../drives'
require_relative '../../../../../item'
require_relative '../../../../items'
require_relative '../../../item'
require_relative '../../workbook'
require_relative '../functions'
require_relative './microsoft_graph_days360'

module MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphDays360
    class Days360PostRequestBody
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The endDate property
        @end_date
        ## 
        # The method property
        @method
        ## 
        # The startDate property
        @start_date
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
        ## Instantiates a new days360PostRequestBody and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a days360_post_request_body
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return Days360PostRequestBody.new
        end
        ## 
        ## Gets the endDate property value. The endDate property
        ## @return a json
        ## 
        def end_date
            return @end_date
        end
        ## 
        ## Sets the endDate property value. The endDate property
        ## @param value Value to set for the end_date property.
        ## @return a void
        ## 
        def end_date=(value)
            @end_date = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "endDate" => lambda {|n| @end_date = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                "method" => lambda {|n| @method = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                "startDate" => lambda {|n| @start_date = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
            }
        end
        ## 
        ## Gets the method property value. The method property
        ## @return a json
        ## 
        def method
            return @method
        end
        ## 
        ## Sets the method property value. The method property
        ## @param value Value to set for the method property.
        ## @return a void
        ## 
        def method=(value)
            @method = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_object_value("endDate", @end_date)
            writer.write_object_value("method", @method)
            writer.write_object_value("startDate", @start_date)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the startDate property value. The startDate property
        ## @return a json
        ## 
        def start_date
            return @start_date
        end
        ## 
        ## Sets the startDate property value. The startDate property
        ## @param value Value to set for the start_date property.
        ## @return a void
        ## 
        def start_date=(value)
            @start_date = value
        end
    end
end

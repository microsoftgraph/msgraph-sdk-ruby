require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph'
require_relative '../../../../../../../models/json'
require_relative '../../../../../../drives'
require_relative '../../../../../item'
require_relative '../../../../items'
require_relative '../../../item'
require_relative '../../workbook'
require_relative '../functions'
require_relative './date'

module MicrosoftGraph
    module Drives
        module Item
            module Items
                module Item
                    module Workbook
                        module Functions
                            module Date
                                class DatePostRequestBody
                                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                    ## 
                                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                    @additional_data
                                    ## 
                                    # The day property
                                    @day
                                    ## 
                                    # The month property
                                    @month
                                    ## 
                                    # The year property
                                    @year
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
                                    ## Instantiates a new datePostRequestBody and sets the default values.
                                    ## @return a void
                                    ## 
                                    def initialize()
                                        @additional_data = Hash.new
                                    end
                                    ## 
                                    ## Creates a new instance of the appropriate class based on discriminator value
                                    ## @param parseNode The parse node to use to read the discriminator value and create the object
                                    ## @return a date_post_request_body
                                    ## 
                                    def self.create_from_discriminator_value(parse_node)
                                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                        return DatePostRequestBody.new
                                    end
                                    ## 
                                    ## Gets the day property value. The day property
                                    ## @return a json
                                    ## 
                                    def day
                                        return @day
                                    end
                                    ## 
                                    ## Sets the day property value. The day property
                                    ## @param value Value to set for the day property.
                                    ## @return a void
                                    ## 
                                    def day=(value)
                                        @day = value
                                    end
                                    ## 
                                    ## The deserialization information for the current model
                                    ## @return a i_dictionary
                                    ## 
                                    def get_field_deserializers()
                                        return {
                                            "day" => lambda {|n| @day = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "month" => lambda {|n| @month = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "year" => lambda {|n| @year = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                        }
                                    end
                                    ## 
                                    ## Gets the month property value. The month property
                                    ## @return a json
                                    ## 
                                    def month
                                        return @month
                                    end
                                    ## 
                                    ## Sets the month property value. The month property
                                    ## @param value Value to set for the month property.
                                    ## @return a void
                                    ## 
                                    def month=(value)
                                        @month = value
                                    end
                                    ## 
                                    ## Serializes information the current object
                                    ## @param writer Serialization writer to use to serialize this model
                                    ## @return a void
                                    ## 
                                    def serialize(writer)
                                        raise StandardError, 'writer cannot be null' if writer.nil?
                                        writer.write_object_value("day", @day)
                                        writer.write_object_value("month", @month)
                                        writer.write_object_value("year", @year)
                                        writer.write_additional_data(@additional_data)
                                    end
                                    ## 
                                    ## Gets the year property value. The year property
                                    ## @return a json
                                    ## 
                                    def year
                                        return @year
                                    end
                                    ## 
                                    ## Sets the year property value. The year property
                                    ## @param value Value to set for the year property.
                                    ## @return a void
                                    ## 
                                    def year=(value)
                                        @year = value
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end

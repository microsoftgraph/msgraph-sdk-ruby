require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph'
require_relative '../../../../../../../models/json'
require_relative '../../../../../../drives'
require_relative '../../../../../item'
require_relative '../../../../items'
require_relative '../../../item'
require_relative '../../workbook'
require_relative '../functions'
require_relative './work_day_intl'

module MicrosoftGraph
    module Drives
        module Item
            module Items
                module Item
                    module Workbook
                        module Functions
                            module WorkDay_Intl
                                class WorkDayIntlPostRequestBody
                                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                    ## 
                                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                    @additional_data
                                    ## 
                                    # The days property
                                    @days
                                    ## 
                                    # The holidays property
                                    @holidays
                                    ## 
                                    # The startDate property
                                    @start_date
                                    ## 
                                    # The weekend property
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
                                    ## Instantiates a new WorkDayIntlPostRequestBody and sets the default values.
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
                                        return WorkDayIntlPostRequestBody.new
                                    end
                                    ## 
                                    ## Gets the days property value. The days property
                                    ## @return a json
                                    ## 
                                    def days
                                        return @days
                                    end
                                    ## 
                                    ## Sets the days property value. The days property
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
                                    ## Gets the holidays property value. The holidays property
                                    ## @return a json
                                    ## 
                                    def holidays
                                        return @holidays
                                    end
                                    ## 
                                    ## Sets the holidays property value. The holidays property
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
                                    ## 
                                    ## Gets the weekend property value. The weekend property
                                    ## @return a json
                                    ## 
                                    def weekend
                                        return @weekend
                                    end
                                    ## 
                                    ## Sets the weekend property value. The weekend property
                                    ## @param value Value to set for the weekend property.
                                    ## @return a void
                                    ## 
                                    def weekend=(value)
                                        @weekend = value
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

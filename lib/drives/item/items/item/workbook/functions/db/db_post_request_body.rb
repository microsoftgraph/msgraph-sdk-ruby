require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph'
require_relative '../../../../../../../models/json'
require_relative '../../../../../../drives'
require_relative '../../../../../item'
require_relative '../../../../items'
require_relative '../../../item'
require_relative '../../workbook'
require_relative '../functions'
require_relative './db'

module MicrosoftGraph
    module Drives
        module Item
            module Items
                module Item
                    module Workbook
                        module Functions
                            module Db
                                class DbPostRequestBody
                                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                    ## 
                                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                    @additional_data
                                    ## 
                                    # The cost property
                                    @cost
                                    ## 
                                    # The life property
                                    @life
                                    ## 
                                    # The month property
                                    @month
                                    ## 
                                    # The period property
                                    @period
                                    ## 
                                    # The salvage property
                                    @salvage
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
                                    ## Instantiates a new dbPostRequestBody and sets the default values.
                                    ## @return a void
                                    ## 
                                    def initialize()
                                        @additional_data = Hash.new
                                    end
                                    ## 
                                    ## Gets the cost property value. The cost property
                                    ## @return a json
                                    ## 
                                    def cost
                                        return @cost
                                    end
                                    ## 
                                    ## Sets the cost property value. The cost property
                                    ## @param value Value to set for the cost property.
                                    ## @return a void
                                    ## 
                                    def cost=(value)
                                        @cost = value
                                    end
                                    ## 
                                    ## Creates a new instance of the appropriate class based on discriminator value
                                    ## @param parseNode The parse node to use to read the discriminator value and create the object
                                    ## @return a db_post_request_body
                                    ## 
                                    def self.create_from_discriminator_value(parse_node)
                                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                        return DbPostRequestBody.new
                                    end
                                    ## 
                                    ## The deserialization information for the current model
                                    ## @return a i_dictionary
                                    ## 
                                    def get_field_deserializers()
                                        return {
                                            "cost" => lambda {|n| @cost = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "life" => lambda {|n| @life = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "month" => lambda {|n| @month = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "period" => lambda {|n| @period = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "salvage" => lambda {|n| @salvage = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                        }
                                    end
                                    ## 
                                    ## Gets the life property value. The life property
                                    ## @return a json
                                    ## 
                                    def life
                                        return @life
                                    end
                                    ## 
                                    ## Sets the life property value. The life property
                                    ## @param value Value to set for the life property.
                                    ## @return a void
                                    ## 
                                    def life=(value)
                                        @life = value
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
                                    ## Gets the period property value. The period property
                                    ## @return a json
                                    ## 
                                    def period
                                        return @period
                                    end
                                    ## 
                                    ## Sets the period property value. The period property
                                    ## @param value Value to set for the period property.
                                    ## @return a void
                                    ## 
                                    def period=(value)
                                        @period = value
                                    end
                                    ## 
                                    ## Gets the salvage property value. The salvage property
                                    ## @return a json
                                    ## 
                                    def salvage
                                        return @salvage
                                    end
                                    ## 
                                    ## Sets the salvage property value. The salvage property
                                    ## @param value Value to set for the salvage property.
                                    ## @return a void
                                    ## 
                                    def salvage=(value)
                                        @salvage = value
                                    end
                                    ## 
                                    ## Serializes information the current object
                                    ## @param writer Serialization writer to use to serialize this model
                                    ## @return a void
                                    ## 
                                    def serialize(writer)
                                        raise StandardError, 'writer cannot be null' if writer.nil?
                                        writer.write_object_value("cost", @cost)
                                        writer.write_object_value("life", @life)
                                        writer.write_object_value("month", @month)
                                        writer.write_object_value("period", @period)
                                        writer.write_object_value("salvage", @salvage)
                                        writer.write_additional_data(@additional_data)
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

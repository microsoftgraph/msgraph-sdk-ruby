require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph'
require_relative '../../../../../../../models/json'
require_relative '../../../../../../drives'
require_relative '../../../../../item'
require_relative '../../../../items'
require_relative '../../../item'
require_relative '../../workbook'
require_relative '../functions'
require_relative './accr_int'

module MicrosoftGraph
    module Drives
        module Item
            module Items
                module Item
                    module Workbook
                        module Functions
                            module AccrInt
                                class AccrIntPostRequestBody
                                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                    ## 
                                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                    @additional_data
                                    ## 
                                    # The basis property
                                    @basis
                                    ## 
                                    # The calcMethod property
                                    @calc_method
                                    ## 
                                    # The firstInterest property
                                    @first_interest
                                    ## 
                                    # The frequency property
                                    @frequency
                                    ## 
                                    # The issue property
                                    @issue
                                    ## 
                                    # The par property
                                    @par
                                    ## 
                                    # The rate property
                                    @rate
                                    ## 
                                    # The settlement property
                                    @settlement
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
                                    ## Gets the basis property value. The basis property
                                    ## @return a json
                                    ## 
                                    def basis
                                        return @basis
                                    end
                                    ## 
                                    ## Sets the basis property value. The basis property
                                    ## @param value Value to set for the basis property.
                                    ## @return a void
                                    ## 
                                    def basis=(value)
                                        @basis = value
                                    end
                                    ## 
                                    ## Gets the calcMethod property value. The calcMethod property
                                    ## @return a json
                                    ## 
                                    def calc_method
                                        return @calc_method
                                    end
                                    ## 
                                    ## Sets the calcMethod property value. The calcMethod property
                                    ## @param value Value to set for the calc_method property.
                                    ## @return a void
                                    ## 
                                    def calc_method=(value)
                                        @calc_method = value
                                    end
                                    ## 
                                    ## Instantiates a new accrIntPostRequestBody and sets the default values.
                                    ## @return a void
                                    ## 
                                    def initialize()
                                        @additional_data = Hash.new
                                    end
                                    ## 
                                    ## Creates a new instance of the appropriate class based on discriminator value
                                    ## @param parseNode The parse node to use to read the discriminator value and create the object
                                    ## @return a accr_int_post_request_body
                                    ## 
                                    def self.create_from_discriminator_value(parse_node)
                                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                        return AccrIntPostRequestBody.new
                                    end
                                    ## 
                                    ## Gets the firstInterest property value. The firstInterest property
                                    ## @return a json
                                    ## 
                                    def first_interest
                                        return @first_interest
                                    end
                                    ## 
                                    ## Sets the firstInterest property value. The firstInterest property
                                    ## @param value Value to set for the first_interest property.
                                    ## @return a void
                                    ## 
                                    def first_interest=(value)
                                        @first_interest = value
                                    end
                                    ## 
                                    ## Gets the frequency property value. The frequency property
                                    ## @return a json
                                    ## 
                                    def frequency
                                        return @frequency
                                    end
                                    ## 
                                    ## Sets the frequency property value. The frequency property
                                    ## @param value Value to set for the frequency property.
                                    ## @return a void
                                    ## 
                                    def frequency=(value)
                                        @frequency = value
                                    end
                                    ## 
                                    ## The deserialization information for the current model
                                    ## @return a i_dictionary
                                    ## 
                                    def get_field_deserializers()
                                        return {
                                            "basis" => lambda {|n| @basis = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "calcMethod" => lambda {|n| @calc_method = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "firstInterest" => lambda {|n| @first_interest = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "frequency" => lambda {|n| @frequency = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "issue" => lambda {|n| @issue = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "par" => lambda {|n| @par = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "rate" => lambda {|n| @rate = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "settlement" => lambda {|n| @settlement = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                        }
                                    end
                                    ## 
                                    ## Gets the issue property value. The issue property
                                    ## @return a json
                                    ## 
                                    def issue
                                        return @issue
                                    end
                                    ## 
                                    ## Sets the issue property value. The issue property
                                    ## @param value Value to set for the issue property.
                                    ## @return a void
                                    ## 
                                    def issue=(value)
                                        @issue = value
                                    end
                                    ## 
                                    ## Gets the par property value. The par property
                                    ## @return a json
                                    ## 
                                    def par
                                        return @par
                                    end
                                    ## 
                                    ## Sets the par property value. The par property
                                    ## @param value Value to set for the par property.
                                    ## @return a void
                                    ## 
                                    def par=(value)
                                        @par = value
                                    end
                                    ## 
                                    ## Gets the rate property value. The rate property
                                    ## @return a json
                                    ## 
                                    def rate
                                        return @rate
                                    end
                                    ## 
                                    ## Sets the rate property value. The rate property
                                    ## @param value Value to set for the rate property.
                                    ## @return a void
                                    ## 
                                    def rate=(value)
                                        @rate = value
                                    end
                                    ## 
                                    ## Serializes information the current object
                                    ## @param writer Serialization writer to use to serialize this model
                                    ## @return a void
                                    ## 
                                    def serialize(writer)
                                        raise StandardError, 'writer cannot be null' if writer.nil?
                                        writer.write_object_value("basis", @basis)
                                        writer.write_object_value("calcMethod", @calc_method)
                                        writer.write_object_value("firstInterest", @first_interest)
                                        writer.write_object_value("frequency", @frequency)
                                        writer.write_object_value("issue", @issue)
                                        writer.write_object_value("par", @par)
                                        writer.write_object_value("rate", @rate)
                                        writer.write_object_value("settlement", @settlement)
                                        writer.write_additional_data(@additional_data)
                                    end
                                    ## 
                                    ## Gets the settlement property value. The settlement property
                                    ## @return a json
                                    ## 
                                    def settlement
                                        return @settlement
                                    end
                                    ## 
                                    ## Sets the settlement property value. The settlement property
                                    ## @param value Value to set for the settlement property.
                                    ## @return a void
                                    ## 
                                    def settlement=(value)
                                        @settlement = value
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

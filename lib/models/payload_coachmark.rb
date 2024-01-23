require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class PayloadCoachmark
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The coachmark location.
            @coachmark_location
            ## 
            # The description about the coachmark.
            @description
            ## 
            # The coachmark indicator.
            @indicator
            ## 
            # Indicates whether the coachmark is valid or not.
            @is_valid
            ## 
            # The coachmark language.
            @language
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The coachmark order.
            @order
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
            ## Gets the coachmarkLocation property value. The coachmark location.
            ## @return a coachmark_location
            ## 
            def coachmark_location
                return @coachmark_location
            end
            ## 
            ## Sets the coachmarkLocation property value. The coachmark location.
            ## @param value Value to set for the coachmarkLocation property.
            ## @return a void
            ## 
            def coachmark_location=(value)
                @coachmark_location = value
            end
            ## 
            ## Instantiates a new payloadCoachmark and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a payload_coachmark
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PayloadCoachmark.new
            end
            ## 
            ## Gets the description property value. The description about the coachmark.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The description about the coachmark.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "coachmarkLocation" => lambda {|n| @coachmark_location = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::CoachmarkLocation.create_from_discriminator_value(pn) }) },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "indicator" => lambda {|n| @indicator = n.get_string_value() },
                    "isValid" => lambda {|n| @is_valid = n.get_boolean_value() },
                    "language" => lambda {|n| @language = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "order" => lambda {|n| @order = n.get_string_value() },
                }
            end
            ## 
            ## Gets the indicator property value. The coachmark indicator.
            ## @return a string
            ## 
            def indicator
                return @indicator
            end
            ## 
            ## Sets the indicator property value. The coachmark indicator.
            ## @param value Value to set for the indicator property.
            ## @return a void
            ## 
            def indicator=(value)
                @indicator = value
            end
            ## 
            ## Gets the isValid property value. Indicates whether the coachmark is valid or not.
            ## @return a boolean
            ## 
            def is_valid
                return @is_valid
            end
            ## 
            ## Sets the isValid property value. Indicates whether the coachmark is valid or not.
            ## @param value Value to set for the isValid property.
            ## @return a void
            ## 
            def is_valid=(value)
                @is_valid = value
            end
            ## 
            ## Gets the language property value. The coachmark language.
            ## @return a string
            ## 
            def language
                return @language
            end
            ## 
            ## Sets the language property value. The coachmark language.
            ## @param value Value to set for the language property.
            ## @return a void
            ## 
            def language=(value)
                @language = value
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
            ## Gets the order property value. The coachmark order.
            ## @return a string
            ## 
            def order
                return @order
            end
            ## 
            ## Sets the order property value. The coachmark order.
            ## @param value Value to set for the order property.
            ## @return a void
            ## 
            def order=(value)
                @order = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("coachmarkLocation", @coachmark_location)
                writer.write_string_value("description", @description)
                writer.write_string_value("indicator", @indicator)
                writer.write_boolean_value("isValid", @is_valid)
                writer.write_string_value("language", @language)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("order", @order)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end

require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class NumberColumn
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # How many decimal places to display. See below for information about the possible values.
            @decimal_places
            ## 
            # How the value should be presented in the UX. Must be one of number or percentage. If unspecified, treated as number.
            @display_as
            ## 
            # The maximum permitted value.
            @maximum
            ## 
            # The minimum permitted value.
            @minimum
            ## 
            # The OdataType property
            @odata_type
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
            ## Instantiates a new numberColumn and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a number_column
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return NumberColumn.new
            end
            ## 
            ## Gets the decimalPlaces property value. How many decimal places to display. See below for information about the possible values.
            ## @return a string
            ## 
            def decimal_places
                return @decimal_places
            end
            ## 
            ## Sets the decimalPlaces property value. How many decimal places to display. See below for information about the possible values.
            ## @param value Value to set for the decimal_places property.
            ## @return a void
            ## 
            def decimal_places=(value)
                @decimal_places = value
            end
            ## 
            ## Gets the displayAs property value. How the value should be presented in the UX. Must be one of number or percentage. If unspecified, treated as number.
            ## @return a string
            ## 
            def display_as
                return @display_as
            end
            ## 
            ## Sets the displayAs property value. How the value should be presented in the UX. Must be one of number or percentage. If unspecified, treated as number.
            ## @param value Value to set for the display_as property.
            ## @return a void
            ## 
            def display_as=(value)
                @display_as = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "decimalPlaces" => lambda {|n| @decimal_places = n.get_string_value() },
                    "displayAs" => lambda {|n| @display_as = n.get_string_value() },
                    "maximum" => lambda {|n| @maximum = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "minimum" => lambda {|n| @minimum = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the maximum property value. The maximum permitted value.
            ## @return a double
            ## 
            def maximum
                return @maximum
            end
            ## 
            ## Sets the maximum property value. The maximum permitted value.
            ## @param value Value to set for the maximum property.
            ## @return a void
            ## 
            def maximum=(value)
                @maximum = value
            end
            ## 
            ## Gets the minimum property value. The minimum permitted value.
            ## @return a double
            ## 
            def minimum
                return @minimum
            end
            ## 
            ## Sets the minimum property value. The minimum permitted value.
            ## @param value Value to set for the minimum property.
            ## @return a void
            ## 
            def minimum=(value)
                @minimum = value
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
                writer.write_string_value("decimalPlaces", @decimal_places)
                writer.write_string_value("displayAs", @display_as)
                writer.write_object_value("maximum", @maximum)
                writer.write_object_value("minimum", @minimum)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end

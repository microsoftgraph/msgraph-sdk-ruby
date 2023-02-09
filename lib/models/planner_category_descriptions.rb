require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class PlannerCategoryDescriptions
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The label associated with Category 1
            @category1
            ## 
            # The label associated with Category 10
            @category10
            ## 
            # The label associated with Category 11
            @category11
            ## 
            # The label associated with Category 12
            @category12
            ## 
            # The label associated with Category 13
            @category13
            ## 
            # The label associated with Category 14
            @category14
            ## 
            # The label associated with Category 15
            @category15
            ## 
            # The label associated with Category 16
            @category16
            ## 
            # The label associated with Category 17
            @category17
            ## 
            # The label associated with Category 18
            @category18
            ## 
            # The label associated with Category 19
            @category19
            ## 
            # The label associated with Category 2
            @category2
            ## 
            # The label associated with Category 20
            @category20
            ## 
            # The label associated with Category 21
            @category21
            ## 
            # The label associated with Category 22
            @category22
            ## 
            # The label associated with Category 23
            @category23
            ## 
            # The label associated with Category 24
            @category24
            ## 
            # The label associated with Category 25
            @category25
            ## 
            # The label associated with Category 3
            @category3
            ## 
            # The label associated with Category 4
            @category4
            ## 
            # The label associated with Category 5
            @category5
            ## 
            # The label associated with Category 6
            @category6
            ## 
            # The label associated with Category 7
            @category7
            ## 
            # The label associated with Category 8
            @category8
            ## 
            # The label associated with Category 9
            @category9
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
            ## Gets the category1 property value. The label associated with Category 1
            ## @return a string
            ## 
            def category1
                return @category1
            end
            ## 
            ## Sets the category1 property value. The label associated with Category 1
            ## @param value Value to set for the category1 property.
            ## @return a void
            ## 
            def category1=(value)
                @category1 = value
            end
            ## 
            ## Gets the category10 property value. The label associated with Category 10
            ## @return a string
            ## 
            def category10
                return @category10
            end
            ## 
            ## Sets the category10 property value. The label associated with Category 10
            ## @param value Value to set for the category10 property.
            ## @return a void
            ## 
            def category10=(value)
                @category10 = value
            end
            ## 
            ## Gets the category11 property value. The label associated with Category 11
            ## @return a string
            ## 
            def category11
                return @category11
            end
            ## 
            ## Sets the category11 property value. The label associated with Category 11
            ## @param value Value to set for the category11 property.
            ## @return a void
            ## 
            def category11=(value)
                @category11 = value
            end
            ## 
            ## Gets the category12 property value. The label associated with Category 12
            ## @return a string
            ## 
            def category12
                return @category12
            end
            ## 
            ## Sets the category12 property value. The label associated with Category 12
            ## @param value Value to set for the category12 property.
            ## @return a void
            ## 
            def category12=(value)
                @category12 = value
            end
            ## 
            ## Gets the category13 property value. The label associated with Category 13
            ## @return a string
            ## 
            def category13
                return @category13
            end
            ## 
            ## Sets the category13 property value. The label associated with Category 13
            ## @param value Value to set for the category13 property.
            ## @return a void
            ## 
            def category13=(value)
                @category13 = value
            end
            ## 
            ## Gets the category14 property value. The label associated with Category 14
            ## @return a string
            ## 
            def category14
                return @category14
            end
            ## 
            ## Sets the category14 property value. The label associated with Category 14
            ## @param value Value to set for the category14 property.
            ## @return a void
            ## 
            def category14=(value)
                @category14 = value
            end
            ## 
            ## Gets the category15 property value. The label associated with Category 15
            ## @return a string
            ## 
            def category15
                return @category15
            end
            ## 
            ## Sets the category15 property value. The label associated with Category 15
            ## @param value Value to set for the category15 property.
            ## @return a void
            ## 
            def category15=(value)
                @category15 = value
            end
            ## 
            ## Gets the category16 property value. The label associated with Category 16
            ## @return a string
            ## 
            def category16
                return @category16
            end
            ## 
            ## Sets the category16 property value. The label associated with Category 16
            ## @param value Value to set for the category16 property.
            ## @return a void
            ## 
            def category16=(value)
                @category16 = value
            end
            ## 
            ## Gets the category17 property value. The label associated with Category 17
            ## @return a string
            ## 
            def category17
                return @category17
            end
            ## 
            ## Sets the category17 property value. The label associated with Category 17
            ## @param value Value to set for the category17 property.
            ## @return a void
            ## 
            def category17=(value)
                @category17 = value
            end
            ## 
            ## Gets the category18 property value. The label associated with Category 18
            ## @return a string
            ## 
            def category18
                return @category18
            end
            ## 
            ## Sets the category18 property value. The label associated with Category 18
            ## @param value Value to set for the category18 property.
            ## @return a void
            ## 
            def category18=(value)
                @category18 = value
            end
            ## 
            ## Gets the category19 property value. The label associated with Category 19
            ## @return a string
            ## 
            def category19
                return @category19
            end
            ## 
            ## Sets the category19 property value. The label associated with Category 19
            ## @param value Value to set for the category19 property.
            ## @return a void
            ## 
            def category19=(value)
                @category19 = value
            end
            ## 
            ## Gets the category2 property value. The label associated with Category 2
            ## @return a string
            ## 
            def category2
                return @category2
            end
            ## 
            ## Sets the category2 property value. The label associated with Category 2
            ## @param value Value to set for the category2 property.
            ## @return a void
            ## 
            def category2=(value)
                @category2 = value
            end
            ## 
            ## Gets the category20 property value. The label associated with Category 20
            ## @return a string
            ## 
            def category20
                return @category20
            end
            ## 
            ## Sets the category20 property value. The label associated with Category 20
            ## @param value Value to set for the category20 property.
            ## @return a void
            ## 
            def category20=(value)
                @category20 = value
            end
            ## 
            ## Gets the category21 property value. The label associated with Category 21
            ## @return a string
            ## 
            def category21
                return @category21
            end
            ## 
            ## Sets the category21 property value. The label associated with Category 21
            ## @param value Value to set for the category21 property.
            ## @return a void
            ## 
            def category21=(value)
                @category21 = value
            end
            ## 
            ## Gets the category22 property value. The label associated with Category 22
            ## @return a string
            ## 
            def category22
                return @category22
            end
            ## 
            ## Sets the category22 property value. The label associated with Category 22
            ## @param value Value to set for the category22 property.
            ## @return a void
            ## 
            def category22=(value)
                @category22 = value
            end
            ## 
            ## Gets the category23 property value. The label associated with Category 23
            ## @return a string
            ## 
            def category23
                return @category23
            end
            ## 
            ## Sets the category23 property value. The label associated with Category 23
            ## @param value Value to set for the category23 property.
            ## @return a void
            ## 
            def category23=(value)
                @category23 = value
            end
            ## 
            ## Gets the category24 property value. The label associated with Category 24
            ## @return a string
            ## 
            def category24
                return @category24
            end
            ## 
            ## Sets the category24 property value. The label associated with Category 24
            ## @param value Value to set for the category24 property.
            ## @return a void
            ## 
            def category24=(value)
                @category24 = value
            end
            ## 
            ## Gets the category25 property value. The label associated with Category 25
            ## @return a string
            ## 
            def category25
                return @category25
            end
            ## 
            ## Sets the category25 property value. The label associated with Category 25
            ## @param value Value to set for the category25 property.
            ## @return a void
            ## 
            def category25=(value)
                @category25 = value
            end
            ## 
            ## Gets the category3 property value. The label associated with Category 3
            ## @return a string
            ## 
            def category3
                return @category3
            end
            ## 
            ## Sets the category3 property value. The label associated with Category 3
            ## @param value Value to set for the category3 property.
            ## @return a void
            ## 
            def category3=(value)
                @category3 = value
            end
            ## 
            ## Gets the category4 property value. The label associated with Category 4
            ## @return a string
            ## 
            def category4
                return @category4
            end
            ## 
            ## Sets the category4 property value. The label associated with Category 4
            ## @param value Value to set for the category4 property.
            ## @return a void
            ## 
            def category4=(value)
                @category4 = value
            end
            ## 
            ## Gets the category5 property value. The label associated with Category 5
            ## @return a string
            ## 
            def category5
                return @category5
            end
            ## 
            ## Sets the category5 property value. The label associated with Category 5
            ## @param value Value to set for the category5 property.
            ## @return a void
            ## 
            def category5=(value)
                @category5 = value
            end
            ## 
            ## Gets the category6 property value. The label associated with Category 6
            ## @return a string
            ## 
            def category6
                return @category6
            end
            ## 
            ## Sets the category6 property value. The label associated with Category 6
            ## @param value Value to set for the category6 property.
            ## @return a void
            ## 
            def category6=(value)
                @category6 = value
            end
            ## 
            ## Gets the category7 property value. The label associated with Category 7
            ## @return a string
            ## 
            def category7
                return @category7
            end
            ## 
            ## Sets the category7 property value. The label associated with Category 7
            ## @param value Value to set for the category7 property.
            ## @return a void
            ## 
            def category7=(value)
                @category7 = value
            end
            ## 
            ## Gets the category8 property value. The label associated with Category 8
            ## @return a string
            ## 
            def category8
                return @category8
            end
            ## 
            ## Sets the category8 property value. The label associated with Category 8
            ## @param value Value to set for the category8 property.
            ## @return a void
            ## 
            def category8=(value)
                @category8 = value
            end
            ## 
            ## Gets the category9 property value. The label associated with Category 9
            ## @return a string
            ## 
            def category9
                return @category9
            end
            ## 
            ## Sets the category9 property value. The label associated with Category 9
            ## @param value Value to set for the category9 property.
            ## @return a void
            ## 
            def category9=(value)
                @category9 = value
            end
            ## 
            ## Instantiates a new plannerCategoryDescriptions and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a planner_category_descriptions
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PlannerCategoryDescriptions.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "category1" => lambda {|n| @category1 = n.get_string_value() },
                    "category10" => lambda {|n| @category10 = n.get_string_value() },
                    "category11" => lambda {|n| @category11 = n.get_string_value() },
                    "category12" => lambda {|n| @category12 = n.get_string_value() },
                    "category13" => lambda {|n| @category13 = n.get_string_value() },
                    "category14" => lambda {|n| @category14 = n.get_string_value() },
                    "category15" => lambda {|n| @category15 = n.get_string_value() },
                    "category16" => lambda {|n| @category16 = n.get_string_value() },
                    "category17" => lambda {|n| @category17 = n.get_string_value() },
                    "category18" => lambda {|n| @category18 = n.get_string_value() },
                    "category19" => lambda {|n| @category19 = n.get_string_value() },
                    "category2" => lambda {|n| @category2 = n.get_string_value() },
                    "category20" => lambda {|n| @category20 = n.get_string_value() },
                    "category21" => lambda {|n| @category21 = n.get_string_value() },
                    "category22" => lambda {|n| @category22 = n.get_string_value() },
                    "category23" => lambda {|n| @category23 = n.get_string_value() },
                    "category24" => lambda {|n| @category24 = n.get_string_value() },
                    "category25" => lambda {|n| @category25 = n.get_string_value() },
                    "category3" => lambda {|n| @category3 = n.get_string_value() },
                    "category4" => lambda {|n| @category4 = n.get_string_value() },
                    "category5" => lambda {|n| @category5 = n.get_string_value() },
                    "category6" => lambda {|n| @category6 = n.get_string_value() },
                    "category7" => lambda {|n| @category7 = n.get_string_value() },
                    "category8" => lambda {|n| @category8 = n.get_string_value() },
                    "category9" => lambda {|n| @category9 = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
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
                writer.write_string_value("category1", @category1)
                writer.write_string_value("category10", @category10)
                writer.write_string_value("category11", @category11)
                writer.write_string_value("category12", @category12)
                writer.write_string_value("category13", @category13)
                writer.write_string_value("category14", @category14)
                writer.write_string_value("category15", @category15)
                writer.write_string_value("category16", @category16)
                writer.write_string_value("category17", @category17)
                writer.write_string_value("category18", @category18)
                writer.write_string_value("category19", @category19)
                writer.write_string_value("category2", @category2)
                writer.write_string_value("category20", @category20)
                writer.write_string_value("category21", @category21)
                writer.write_string_value("category22", @category22)
                writer.write_string_value("category23", @category23)
                writer.write_string_value("category24", @category24)
                writer.write_string_value("category25", @category25)
                writer.write_string_value("category3", @category3)
                writer.write_string_value("category4", @category4)
                writer.write_string_value("category5", @category5)
                writer.write_string_value("category6", @category6)
                writer.write_string_value("category7", @category7)
                writer.write_string_value("category8", @category8)
                writer.write_string_value("category9", @category9)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end

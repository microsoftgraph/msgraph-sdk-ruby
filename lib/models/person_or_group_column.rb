require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class PersonOrGroupColumn
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Indicates whether multiple values can be selected from the source.
            @allow_multiple_selection
            ## 
            # Whether to allow selection of people only, or people and groups. Must be one of peopleAndGroups or peopleOnly.
            @choose_from_type
            ## 
            # How to display the information about the person or group chosen. See below.
            @display_as
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
            ## Gets the allowMultipleSelection property value. Indicates whether multiple values can be selected from the source.
            ## @return a boolean
            ## 
            def allow_multiple_selection
                return @allow_multiple_selection
            end
            ## 
            ## Sets the allowMultipleSelection property value. Indicates whether multiple values can be selected from the source.
            ## @param value Value to set for the allow_multiple_selection property.
            ## @return a void
            ## 
            def allow_multiple_selection=(value)
                @allow_multiple_selection = value
            end
            ## 
            ## Gets the chooseFromType property value. Whether to allow selection of people only, or people and groups. Must be one of peopleAndGroups or peopleOnly.
            ## @return a string
            ## 
            def choose_from_type
                return @choose_from_type
            end
            ## 
            ## Sets the chooseFromType property value. Whether to allow selection of people only, or people and groups. Must be one of peopleAndGroups or peopleOnly.
            ## @param value Value to set for the choose_from_type property.
            ## @return a void
            ## 
            def choose_from_type=(value)
                @choose_from_type = value
            end
            ## 
            ## Instantiates a new personOrGroupColumn and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a person_or_group_column
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PersonOrGroupColumn.new
            end
            ## 
            ## Gets the displayAs property value. How to display the information about the person or group chosen. See below.
            ## @return a string
            ## 
            def display_as
                return @display_as
            end
            ## 
            ## Sets the displayAs property value. How to display the information about the person or group chosen. See below.
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
                    "allowMultipleSelection" => lambda {|n| @allow_multiple_selection = n.get_boolean_value() },
                    "chooseFromType" => lambda {|n| @choose_from_type = n.get_string_value() },
                    "displayAs" => lambda {|n| @display_as = n.get_string_value() },
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
                writer.write_boolean_value("allowMultipleSelection", @allow_multiple_selection)
                writer.write_string_value("chooseFromType", @choose_from_type)
                writer.write_string_value("displayAs", @display_as)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end

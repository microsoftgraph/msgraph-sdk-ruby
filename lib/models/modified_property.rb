require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ModifiedProperty
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Indicates the property name of the target attribute that was changed.
            @display_name
            ## 
            # Indicates the updated value for the propery.
            @new_value
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Indicates the previous value (before the update) for the property.
            @old_value
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
            ## Instantiates a new modifiedProperty and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a modified_property
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ModifiedProperty.new
            end
            ## 
            ## Gets the displayName property value. Indicates the property name of the target attribute that was changed.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Indicates the property name of the target attribute that was changed.
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "newValue" => lambda {|n| @new_value = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "oldValue" => lambda {|n| @old_value = n.get_string_value() },
                }
            end
            ## 
            ## Gets the newValue property value. Indicates the updated value for the propery.
            ## @return a string
            ## 
            def new_value
                return @new_value
            end
            ## 
            ## Sets the newValue property value. Indicates the updated value for the propery.
            ## @param value Value to set for the new_value property.
            ## @return a void
            ## 
            def new_value=(value)
                @new_value = value
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
            ## Gets the oldValue property value. Indicates the previous value (before the update) for the property.
            ## @return a string
            ## 
            def old_value
                return @old_value
            end
            ## 
            ## Sets the oldValue property value. Indicates the previous value (before the update) for the property.
            ## @param value Value to set for the old_value property.
            ## @return a void
            ## 
            def old_value=(value)
                @old_value = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("newValue", @new_value)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("oldValue", @old_value)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end

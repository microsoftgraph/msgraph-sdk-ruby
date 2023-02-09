require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ChecklistItem < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The date and time when the checklistItem was finished.
            @checked_date_time
            ## 
            # The date and time when the checklistItem was created.
            @created_date_time
            ## 
            # Field indicating the title of checklistItem.
            @display_name
            ## 
            # State indicating whether the item is checked off or not.
            @is_checked
            ## 
            ## Gets the checkedDateTime property value. The date and time when the checklistItem was finished.
            ## @return a date_time
            ## 
            def checked_date_time
                return @checked_date_time
            end
            ## 
            ## Sets the checkedDateTime property value. The date and time when the checklistItem was finished.
            ## @param value Value to set for the checked_date_time property.
            ## @return a void
            ## 
            def checked_date_time=(value)
                @checked_date_time = value
            end
            ## 
            ## Instantiates a new checklistItem and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. The date and time when the checklistItem was created.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The date and time when the checklistItem was created.
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a checklist_item
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ChecklistItem.new
            end
            ## 
            ## Gets the displayName property value. Field indicating the title of checklistItem.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Field indicating the title of checklistItem.
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
                return super.merge({
                    "checkedDateTime" => lambda {|n| @checked_date_time = n.get_date_time_value() },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "isChecked" => lambda {|n| @is_checked = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the isChecked property value. State indicating whether the item is checked off or not.
            ## @return a boolean
            ## 
            def is_checked
                return @is_checked
            end
            ## 
            ## Sets the isChecked property value. State indicating whether the item is checked off or not.
            ## @param value Value to set for the is_checked property.
            ## @return a void
            ## 
            def is_checked=(value)
                @is_checked = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_date_time_value("checkedDateTime", @checked_date_time)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("displayName", @display_name)
                writer.write_boolean_value("isChecked", @is_checked)
            end
        end
    end
end

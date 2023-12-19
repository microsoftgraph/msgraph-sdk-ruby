require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ItemRetentionLabel < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Specifies whether the label is applied explicitly on the item. True indicates that the label is applied explicitly; otherwise, the label is inherited from its parent. Read-only.
            @is_label_applied_explicitly
            ## 
            # Identity of the user who applied the label. Read-only.
            @label_applied_by
            ## 
            # The date and time when the label was applied on the item. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            @label_applied_date_time
            ## 
            # The retention label on the document. Read-write.
            @name
            ## 
            # The retention settings enforced on the item. Read-write.
            @retention_settings
            ## 
            ## Instantiates a new itemRetentionLabel and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a item_retention_label
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ItemRetentionLabel.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "isLabelAppliedExplicitly" => lambda {|n| @is_label_applied_explicitly = n.get_boolean_value() },
                    "labelAppliedBy" => lambda {|n| @label_applied_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "labelAppliedDateTime" => lambda {|n| @label_applied_date_time = n.get_date_time_value() },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "retentionSettings" => lambda {|n| @retention_settings = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::RetentionLabelSettings.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the isLabelAppliedExplicitly property value. Specifies whether the label is applied explicitly on the item. True indicates that the label is applied explicitly; otherwise, the label is inherited from its parent. Read-only.
            ## @return a boolean
            ## 
            def is_label_applied_explicitly
                return @is_label_applied_explicitly
            end
            ## 
            ## Sets the isLabelAppliedExplicitly property value. Specifies whether the label is applied explicitly on the item. True indicates that the label is applied explicitly; otherwise, the label is inherited from its parent. Read-only.
            ## @param value Value to set for the isLabelAppliedExplicitly property.
            ## @return a void
            ## 
            def is_label_applied_explicitly=(value)
                @is_label_applied_explicitly = value
            end
            ## 
            ## Gets the labelAppliedBy property value. Identity of the user who applied the label. Read-only.
            ## @return a identity_set
            ## 
            def label_applied_by
                return @label_applied_by
            end
            ## 
            ## Sets the labelAppliedBy property value. Identity of the user who applied the label. Read-only.
            ## @param value Value to set for the labelAppliedBy property.
            ## @return a void
            ## 
            def label_applied_by=(value)
                @label_applied_by = value
            end
            ## 
            ## Gets the labelAppliedDateTime property value. The date and time when the label was applied on the item. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            ## @return a date_time
            ## 
            def label_applied_date_time
                return @label_applied_date_time
            end
            ## 
            ## Sets the labelAppliedDateTime property value. The date and time when the label was applied on the item. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            ## @param value Value to set for the labelAppliedDateTime property.
            ## @return a void
            ## 
            def label_applied_date_time=(value)
                @label_applied_date_time = value
            end
            ## 
            ## Gets the name property value. The retention label on the document. Read-write.
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. The retention label on the document. Read-write.
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
            end
            ## 
            ## Gets the retentionSettings property value. The retention settings enforced on the item. Read-write.
            ## @return a retention_label_settings
            ## 
            def retention_settings
                return @retention_settings
            end
            ## 
            ## Sets the retentionSettings property value. The retention settings enforced on the item. Read-write.
            ## @param value Value to set for the retentionSettings property.
            ## @return a void
            ## 
            def retention_settings=(value)
                @retention_settings = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("isLabelAppliedExplicitly", @is_label_applied_explicitly)
                writer.write_object_value("labelAppliedBy", @label_applied_by)
                writer.write_date_time_value("labelAppliedDateTime", @label_applied_date_time)
                writer.write_string_value("name", @name)
                writer.write_object_value("retentionSettings", @retention_settings)
            end
        end
    end
end

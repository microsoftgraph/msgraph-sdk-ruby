require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class CustomTrainingSetting < MicrosoftGraph::Models::TrainingSetting
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The assignedTo property
            @assigned_to
            ## 
            # The description property
            @description
            ## 
            # The displayName property
            @display_name
            ## 
            # The durationInMinutes property
            @duration_in_minutes
            ## 
            # The url property
            @url
            ## 
            ## Gets the assignedTo property value. The assignedTo property
            ## @return a training_assigned_to
            ## 
            def assigned_to
                return @assigned_to
            end
            ## 
            ## Sets the assignedTo property value. The assignedTo property
            ## @param value Value to set for the assignedTo property.
            ## @return a void
            ## 
            def assigned_to=(value)
                @assigned_to = value
            end
            ## 
            ## Instantiates a new customTrainingSetting and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.customTrainingSetting"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a custom_training_setting
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CustomTrainingSetting.new
            end
            ## 
            ## Gets the description property value. The description property
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The description property
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. The displayName property
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The displayName property
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the durationInMinutes property value. The durationInMinutes property
            ## @return a integer
            ## 
            def duration_in_minutes
                return @duration_in_minutes
            end
            ## 
            ## Sets the durationInMinutes property value. The durationInMinutes property
            ## @param value Value to set for the durationInMinutes property.
            ## @return a void
            ## 
            def duration_in_minutes=(value)
                @duration_in_minutes = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "assignedTo" => lambda {|n| @assigned_to = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::TrainingAssignedTo.create_from_discriminator_value(pn) }) },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "durationInMinutes" => lambda {|n| @duration_in_minutes = n.get_number_value() },
                    "url" => lambda {|n| @url = n.get_string_value() },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("assignedTo", @assigned_to)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_number_value("durationInMinutes", @duration_in_minutes)
                writer.write_string_value("url", @url)
            end
            ## 
            ## Gets the url property value. The url property
            ## @return a string
            ## 
            def url
                return @url
            end
            ## 
            ## Sets the url property value. The url property
            ## @param value Value to set for the url property.
            ## @return a void
            ## 
            def url=(value)
                @url = value
            end
        end
    end
end

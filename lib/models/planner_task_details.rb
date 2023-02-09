require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class PlannerTaskDetails < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The collection of checklist items on the task.
            @checklist
            ## 
            # Description of the task.
            @description
            ## 
            # This sets the type of preview that shows up on the task. The possible values are: automatic, noPreview, checklist, description, reference. When set to automatic the displayed preview is chosen by the app viewing the task.
            @preview_type
            ## 
            # The collection of references on the task.
            @references
            ## 
            ## Gets the checklist property value. The collection of checklist items on the task.
            ## @return a planner_checklist_items
            ## 
            def checklist
                return @checklist
            end
            ## 
            ## Sets the checklist property value. The collection of checklist items on the task.
            ## @param value Value to set for the checklist property.
            ## @return a void
            ## 
            def checklist=(value)
                @checklist = value
            end
            ## 
            ## Instantiates a new plannerTaskDetails and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a planner_task_details
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PlannerTaskDetails.new
            end
            ## 
            ## Gets the description property value. Description of the task.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. Description of the task.
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
                return super.merge({
                    "checklist" => lambda {|n| @checklist = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PlannerChecklistItems.create_from_discriminator_value(pn) }) },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "previewType" => lambda {|n| @preview_type = n.get_enum_value(MicrosoftGraph::Models::PlannerPreviewType) },
                    "references" => lambda {|n| @references = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PlannerExternalReferences.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the previewType property value. This sets the type of preview that shows up on the task. The possible values are: automatic, noPreview, checklist, description, reference. When set to automatic the displayed preview is chosen by the app viewing the task.
            ## @return a planner_preview_type
            ## 
            def preview_type
                return @preview_type
            end
            ## 
            ## Sets the previewType property value. This sets the type of preview that shows up on the task. The possible values are: automatic, noPreview, checklist, description, reference. When set to automatic the displayed preview is chosen by the app viewing the task.
            ## @param value Value to set for the preview_type property.
            ## @return a void
            ## 
            def preview_type=(value)
                @preview_type = value
            end
            ## 
            ## Gets the references property value. The collection of references on the task.
            ## @return a planner_external_references
            ## 
            def references
                return @references
            end
            ## 
            ## Sets the references property value. The collection of references on the task.
            ## @param value Value to set for the references property.
            ## @return a void
            ## 
            def references=(value)
                @references = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("checklist", @checklist)
                writer.write_string_value("description", @description)
                writer.write_enum_value("previewType", @preview_type)
                writer.write_object_value("references", @references)
            end
        end
    end
end

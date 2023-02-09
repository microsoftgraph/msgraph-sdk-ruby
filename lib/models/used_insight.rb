require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class UsedInsight < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Information about when the item was last viewed or modified by the user. Read only.
            @last_used
            ## 
            # Used for navigating to the item that was used. For file attachments, the type is fileAttachment. For linked attachments, the type is driveItem.
            @resource
            ## 
            # Reference properties of the used document, such as the url and type of the document. Read-only
            @resource_reference
            ## 
            # Properties that you can use to visualize the document in your experience. Read-only
            @resource_visualization
            ## 
            ## Instantiates a new usedInsight and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a used_insight
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UsedInsight.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "lastUsed" => lambda {|n| @last_used = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::UsageDetails.create_from_discriminator_value(pn) }) },
                    "resource" => lambda {|n| @resource = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Entity.create_from_discriminator_value(pn) }) },
                    "resourceReference" => lambda {|n| @resource_reference = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ResourceReference.create_from_discriminator_value(pn) }) },
                    "resourceVisualization" => lambda {|n| @resource_visualization = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ResourceVisualization.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the lastUsed property value. Information about when the item was last viewed or modified by the user. Read only.
            ## @return a usage_details
            ## 
            def last_used
                return @last_used
            end
            ## 
            ## Sets the lastUsed property value. Information about when the item was last viewed or modified by the user. Read only.
            ## @param value Value to set for the last_used property.
            ## @return a void
            ## 
            def last_used=(value)
                @last_used = value
            end
            ## 
            ## Gets the resource property value. Used for navigating to the item that was used. For file attachments, the type is fileAttachment. For linked attachments, the type is driveItem.
            ## @return a entity
            ## 
            def resource
                return @resource
            end
            ## 
            ## Sets the resource property value. Used for navigating to the item that was used. For file attachments, the type is fileAttachment. For linked attachments, the type is driveItem.
            ## @param value Value to set for the resource property.
            ## @return a void
            ## 
            def resource=(value)
                @resource = value
            end
            ## 
            ## Gets the resourceReference property value. Reference properties of the used document, such as the url and type of the document. Read-only
            ## @return a resource_reference
            ## 
            def resource_reference
                return @resource_reference
            end
            ## 
            ## Sets the resourceReference property value. Reference properties of the used document, such as the url and type of the document. Read-only
            ## @param value Value to set for the resource_reference property.
            ## @return a void
            ## 
            def resource_reference=(value)
                @resource_reference = value
            end
            ## 
            ## Gets the resourceVisualization property value. Properties that you can use to visualize the document in your experience. Read-only
            ## @return a resource_visualization
            ## 
            def resource_visualization
                return @resource_visualization
            end
            ## 
            ## Sets the resourceVisualization property value. Properties that you can use to visualize the document in your experience. Read-only
            ## @param value Value to set for the resource_visualization property.
            ## @return a void
            ## 
            def resource_visualization=(value)
                @resource_visualization = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("lastUsed", @last_used)
                writer.write_object_value("resource", @resource)
            end
        end
    end
end

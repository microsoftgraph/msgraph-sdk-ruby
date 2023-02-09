require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SharedInsight < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Details about the shared item. Read only.
            @last_shared
            ## 
            # The lastSharedMethod property
            @last_shared_method
            ## 
            # Used for navigating to the item that was shared. For file attachments, the type is fileAttachment. For linked attachments, the type is driveItem.
            @resource
            ## 
            # Reference properties of the shared document, such as the url and type of the document. Read-only
            @resource_reference
            ## 
            # Properties that you can use to visualize the document in your experience. Read-only
            @resource_visualization
            ## 
            # The sharingHistory property
            @sharing_history
            ## 
            ## Instantiates a new sharedInsight and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a shared_insight
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SharedInsight.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "lastShared" => lambda {|n| @last_shared = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SharingDetail.create_from_discriminator_value(pn) }) },
                    "lastSharedMethod" => lambda {|n| @last_shared_method = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Entity.create_from_discriminator_value(pn) }) },
                    "resource" => lambda {|n| @resource = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Entity.create_from_discriminator_value(pn) }) },
                    "resourceReference" => lambda {|n| @resource_reference = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ResourceReference.create_from_discriminator_value(pn) }) },
                    "resourceVisualization" => lambda {|n| @resource_visualization = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ResourceVisualization.create_from_discriminator_value(pn) }) },
                    "sharingHistory" => lambda {|n| @sharing_history = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SharingDetail.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the lastShared property value. Details about the shared item. Read only.
            ## @return a sharing_detail
            ## 
            def last_shared
                return @last_shared
            end
            ## 
            ## Sets the lastShared property value. Details about the shared item. Read only.
            ## @param value Value to set for the last_shared property.
            ## @return a void
            ## 
            def last_shared=(value)
                @last_shared = value
            end
            ## 
            ## Gets the lastSharedMethod property value. The lastSharedMethod property
            ## @return a entity
            ## 
            def last_shared_method
                return @last_shared_method
            end
            ## 
            ## Sets the lastSharedMethod property value. The lastSharedMethod property
            ## @param value Value to set for the last_shared_method property.
            ## @return a void
            ## 
            def last_shared_method=(value)
                @last_shared_method = value
            end
            ## 
            ## Gets the resource property value. Used for navigating to the item that was shared. For file attachments, the type is fileAttachment. For linked attachments, the type is driveItem.
            ## @return a entity
            ## 
            def resource
                return @resource
            end
            ## 
            ## Sets the resource property value. Used for navigating to the item that was shared. For file attachments, the type is fileAttachment. For linked attachments, the type is driveItem.
            ## @param value Value to set for the resource property.
            ## @return a void
            ## 
            def resource=(value)
                @resource = value
            end
            ## 
            ## Gets the resourceReference property value. Reference properties of the shared document, such as the url and type of the document. Read-only
            ## @return a resource_reference
            ## 
            def resource_reference
                return @resource_reference
            end
            ## 
            ## Sets the resourceReference property value. Reference properties of the shared document, such as the url and type of the document. Read-only
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
                writer.write_object_value("lastShared", @last_shared)
                writer.write_object_value("lastSharedMethod", @last_shared_method)
                writer.write_object_value("resource", @resource)
                writer.write_collection_of_object_values("sharingHistory", @sharing_history)
            end
            ## 
            ## Gets the sharingHistory property value. The sharingHistory property
            ## @return a sharing_detail
            ## 
            def sharing_history
                return @sharing_history
            end
            ## 
            ## Sets the sharingHistory property value. The sharingHistory property
            ## @param value Value to set for the sharing_history property.
            ## @return a void
            ## 
            def sharing_history=(value)
                @sharing_history = value
            end
        end
    end
end

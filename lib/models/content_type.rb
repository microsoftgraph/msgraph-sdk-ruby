require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ContentType < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # List of canonical URLs for hub sites with which this content type is associated to. This will contain all hub sites where this content type is queued to be enforced or is already enforced. Enforcing a content type means that the content type will be applied to the lists in the enforced sites.
            @associated_hubs_urls
            ## 
            # Parent contentType from which this content type is derived.
            @base
            ## 
            # The collection of content types that are ancestors of this content type.
            @base_types
            ## 
            # The collection of columns that are required by this content type.
            @column_links
            ## 
            # Column order information in a content type.
            @column_positions
            ## 
            # The collection of column definitions for this contentType.
            @columns
            ## 
            # The descriptive text for the item.
            @description
            ## 
            # Document Set metadata.
            @document_set
            ## 
            # Document template metadata. To make sure that documents have consistent content across a site and its subsites, you can associate a Word, Excel, or PowerPoint template with a site content type.
            @document_template
            ## 
            # The name of the group this content type belongs to. Helps organize related content types.
            @group
            ## 
            # Indicates whether the content type is hidden in the list's 'New' menu.
            @hidden
            ## 
            # If this content type is inherited from another scope (like a site), provides a reference to the item where the content type is defined.
            @inherited_from
            ## 
            # Specifies if a content type is a built-in content type.
            @is_built_in
            ## 
            # The name of the content type.
            @name
            ## 
            # Specifies the order in which the content type appears in the selection UI.
            @order
            ## 
            # The unique identifier of the content type.
            @parent_id
            ## 
            # If true, any changes made to the content type will be pushed to inherited content types and lists that implement the content type.
            @propagate_changes
            ## 
            # If true, the content type can't be modified unless this value is first set to false.
            @read_only
            ## 
            # If true, the content type can't be modified by users or through push-down operations. Only site collection administrators can seal or unseal content types.
            @sealed
            ## 
            ## Gets the associatedHubsUrls property value. List of canonical URLs for hub sites with which this content type is associated to. This will contain all hub sites where this content type is queued to be enforced or is already enforced. Enforcing a content type means that the content type will be applied to the lists in the enforced sites.
            ## @return a string
            ## 
            def associated_hubs_urls
                return @associated_hubs_urls
            end
            ## 
            ## Sets the associatedHubsUrls property value. List of canonical URLs for hub sites with which this content type is associated to. This will contain all hub sites where this content type is queued to be enforced or is already enforced. Enforcing a content type means that the content type will be applied to the lists in the enforced sites.
            ## @param value Value to set for the associated_hubs_urls property.
            ## @return a void
            ## 
            def associated_hubs_urls=(value)
                @associated_hubs_urls = value
            end
            ## 
            ## Gets the base property value. Parent contentType from which this content type is derived.
            ## @return a content_type
            ## 
            def base
                return @base
            end
            ## 
            ## Sets the base property value. Parent contentType from which this content type is derived.
            ## @param value Value to set for the base property.
            ## @return a void
            ## 
            def base=(value)
                @base = value
            end
            ## 
            ## Gets the baseTypes property value. The collection of content types that are ancestors of this content type.
            ## @return a content_type
            ## 
            def base_types
                return @base_types
            end
            ## 
            ## Sets the baseTypes property value. The collection of content types that are ancestors of this content type.
            ## @param value Value to set for the base_types property.
            ## @return a void
            ## 
            def base_types=(value)
                @base_types = value
            end
            ## 
            ## Gets the columnLinks property value. The collection of columns that are required by this content type.
            ## @return a column_link
            ## 
            def column_links
                return @column_links
            end
            ## 
            ## Sets the columnLinks property value. The collection of columns that are required by this content type.
            ## @param value Value to set for the column_links property.
            ## @return a void
            ## 
            def column_links=(value)
                @column_links = value
            end
            ## 
            ## Gets the columnPositions property value. Column order information in a content type.
            ## @return a column_definition
            ## 
            def column_positions
                return @column_positions
            end
            ## 
            ## Sets the columnPositions property value. Column order information in a content type.
            ## @param value Value to set for the column_positions property.
            ## @return a void
            ## 
            def column_positions=(value)
                @column_positions = value
            end
            ## 
            ## Gets the columns property value. The collection of column definitions for this contentType.
            ## @return a column_definition
            ## 
            def columns
                return @columns
            end
            ## 
            ## Sets the columns property value. The collection of column definitions for this contentType.
            ## @param value Value to set for the columns property.
            ## @return a void
            ## 
            def columns=(value)
                @columns = value
            end
            ## 
            ## Instantiates a new contentType and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a content_type
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ContentType.new
            end
            ## 
            ## Gets the description property value. The descriptive text for the item.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The descriptive text for the item.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the documentSet property value. Document Set metadata.
            ## @return a document_set
            ## 
            def document_set
                return @document_set
            end
            ## 
            ## Sets the documentSet property value. Document Set metadata.
            ## @param value Value to set for the document_set property.
            ## @return a void
            ## 
            def document_set=(value)
                @document_set = value
            end
            ## 
            ## Gets the documentTemplate property value. Document template metadata. To make sure that documents have consistent content across a site and its subsites, you can associate a Word, Excel, or PowerPoint template with a site content type.
            ## @return a document_set_content
            ## 
            def document_template
                return @document_template
            end
            ## 
            ## Sets the documentTemplate property value. Document template metadata. To make sure that documents have consistent content across a site and its subsites, you can associate a Word, Excel, or PowerPoint template with a site content type.
            ## @param value Value to set for the document_template property.
            ## @return a void
            ## 
            def document_template=(value)
                @document_template = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "associatedHubsUrls" => lambda {|n| @associated_hubs_urls = n.get_collection_of_primitive_values(String) },
                    "base" => lambda {|n| @base = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ContentType.create_from_discriminator_value(pn) }) },
                    "baseTypes" => lambda {|n| @base_types = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ContentType.create_from_discriminator_value(pn) }) },
                    "columnLinks" => lambda {|n| @column_links = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ColumnLink.create_from_discriminator_value(pn) }) },
                    "columnPositions" => lambda {|n| @column_positions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ColumnDefinition.create_from_discriminator_value(pn) }) },
                    "columns" => lambda {|n| @columns = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ColumnDefinition.create_from_discriminator_value(pn) }) },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "documentSet" => lambda {|n| @document_set = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DocumentSet.create_from_discriminator_value(pn) }) },
                    "documentTemplate" => lambda {|n| @document_template = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DocumentSetContent.create_from_discriminator_value(pn) }) },
                    "group" => lambda {|n| @group = n.get_string_value() },
                    "hidden" => lambda {|n| @hidden = n.get_boolean_value() },
                    "inheritedFrom" => lambda {|n| @inherited_from = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ItemReference.create_from_discriminator_value(pn) }) },
                    "isBuiltIn" => lambda {|n| @is_built_in = n.get_boolean_value() },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "order" => lambda {|n| @order = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ContentTypeOrder.create_from_discriminator_value(pn) }) },
                    "parentId" => lambda {|n| @parent_id = n.get_string_value() },
                    "propagateChanges" => lambda {|n| @propagate_changes = n.get_boolean_value() },
                    "readOnly" => lambda {|n| @read_only = n.get_boolean_value() },
                    "sealed" => lambda {|n| @sealed = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the group property value. The name of the group this content type belongs to. Helps organize related content types.
            ## @return a string
            ## 
            def group
                return @group
            end
            ## 
            ## Sets the group property value. The name of the group this content type belongs to. Helps organize related content types.
            ## @param value Value to set for the group property.
            ## @return a void
            ## 
            def group=(value)
                @group = value
            end
            ## 
            ## Gets the hidden property value. Indicates whether the content type is hidden in the list's 'New' menu.
            ## @return a boolean
            ## 
            def hidden
                return @hidden
            end
            ## 
            ## Sets the hidden property value. Indicates whether the content type is hidden in the list's 'New' menu.
            ## @param value Value to set for the hidden property.
            ## @return a void
            ## 
            def hidden=(value)
                @hidden = value
            end
            ## 
            ## Gets the inheritedFrom property value. If this content type is inherited from another scope (like a site), provides a reference to the item where the content type is defined.
            ## @return a item_reference
            ## 
            def inherited_from
                return @inherited_from
            end
            ## 
            ## Sets the inheritedFrom property value. If this content type is inherited from another scope (like a site), provides a reference to the item where the content type is defined.
            ## @param value Value to set for the inherited_from property.
            ## @return a void
            ## 
            def inherited_from=(value)
                @inherited_from = value
            end
            ## 
            ## Gets the isBuiltIn property value. Specifies if a content type is a built-in content type.
            ## @return a boolean
            ## 
            def is_built_in
                return @is_built_in
            end
            ## 
            ## Sets the isBuiltIn property value. Specifies if a content type is a built-in content type.
            ## @param value Value to set for the is_built_in property.
            ## @return a void
            ## 
            def is_built_in=(value)
                @is_built_in = value
            end
            ## 
            ## Gets the name property value. The name of the content type.
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. The name of the content type.
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
            end
            ## 
            ## Gets the order property value. Specifies the order in which the content type appears in the selection UI.
            ## @return a content_type_order
            ## 
            def order
                return @order
            end
            ## 
            ## Sets the order property value. Specifies the order in which the content type appears in the selection UI.
            ## @param value Value to set for the order property.
            ## @return a void
            ## 
            def order=(value)
                @order = value
            end
            ## 
            ## Gets the parentId property value. The unique identifier of the content type.
            ## @return a string
            ## 
            def parent_id
                return @parent_id
            end
            ## 
            ## Sets the parentId property value. The unique identifier of the content type.
            ## @param value Value to set for the parent_id property.
            ## @return a void
            ## 
            def parent_id=(value)
                @parent_id = value
            end
            ## 
            ## Gets the propagateChanges property value. If true, any changes made to the content type will be pushed to inherited content types and lists that implement the content type.
            ## @return a boolean
            ## 
            def propagate_changes
                return @propagate_changes
            end
            ## 
            ## Sets the propagateChanges property value. If true, any changes made to the content type will be pushed to inherited content types and lists that implement the content type.
            ## @param value Value to set for the propagate_changes property.
            ## @return a void
            ## 
            def propagate_changes=(value)
                @propagate_changes = value
            end
            ## 
            ## Gets the readOnly property value. If true, the content type can't be modified unless this value is first set to false.
            ## @return a boolean
            ## 
            def read_only
                return @read_only
            end
            ## 
            ## Sets the readOnly property value. If true, the content type can't be modified unless this value is first set to false.
            ## @param value Value to set for the read_only property.
            ## @return a void
            ## 
            def read_only=(value)
                @read_only = value
            end
            ## 
            ## Gets the sealed property value. If true, the content type can't be modified by users or through push-down operations. Only site collection administrators can seal or unseal content types.
            ## @return a boolean
            ## 
            def sealed
                return @sealed
            end
            ## 
            ## Sets the sealed property value. If true, the content type can't be modified by users or through push-down operations. Only site collection administrators can seal or unseal content types.
            ## @param value Value to set for the sealed property.
            ## @return a void
            ## 
            def sealed=(value)
                @sealed = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_primitive_values("associatedHubsUrls", @associated_hubs_urls)
                writer.write_object_value("base", @base)
                writer.write_collection_of_object_values("baseTypes", @base_types)
                writer.write_collection_of_object_values("columnLinks", @column_links)
                writer.write_collection_of_object_values("columnPositions", @column_positions)
                writer.write_collection_of_object_values("columns", @columns)
                writer.write_string_value("description", @description)
                writer.write_object_value("documentSet", @document_set)
                writer.write_object_value("documentTemplate", @document_template)
                writer.write_string_value("group", @group)
                writer.write_boolean_value("hidden", @hidden)
                writer.write_object_value("inheritedFrom", @inherited_from)
                writer.write_boolean_value("isBuiltIn", @is_built_in)
                writer.write_string_value("name", @name)
                writer.write_object_value("order", @order)
                writer.write_string_value("parentId", @parent_id)
                writer.write_boolean_value("propagateChanges", @propagate_changes)
                writer.write_boolean_value("readOnly", @read_only)
                writer.write_boolean_value("sealed", @sealed)
            end
        end
    end
end

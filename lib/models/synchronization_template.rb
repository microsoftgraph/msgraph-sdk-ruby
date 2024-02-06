require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SynchronizationTemplate < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Identifier of the application this template belongs to.
            @application_id
            ## 
            # true if this template is recommended to be the default for the application.
            @default
            ## 
            # Description of the template.
            @description
            ## 
            # true if this template should appear in the collection of templates available for the application instance (service principal).
            @discoverable
            ## 
            # One of the well-known factory tags supported by the synchronization engine. The factoryTag tells the synchronization engine which implementation to use when processing jobs based on this template.
            @factory_tag
            ## 
            # Additional extension properties. Unless mentioned explicitly, metadata values should not be changed.
            @metadata
            ## 
            # Default synchronization schema for the jobs based on this template.
            @schema
            ## 
            ## Gets the applicationId property value. Identifier of the application this template belongs to.
            ## @return a guid
            ## 
            def application_id
                return @application_id
            end
            ## 
            ## Sets the applicationId property value. Identifier of the application this template belongs to.
            ## @param value Value to set for the applicationId property.
            ## @return a void
            ## 
            def application_id=(value)
                @application_id = value
            end
            ## 
            ## Instantiates a new synchronizationTemplate and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a synchronization_template
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SynchronizationTemplate.new
            end
            ## 
            ## Gets the default property value. true if this template is recommended to be the default for the application.
            ## @return a boolean
            ## 
            def default
                return @default
            end
            ## 
            ## Sets the default property value. true if this template is recommended to be the default for the application.
            ## @param value Value to set for the default property.
            ## @return a void
            ## 
            def default=(value)
                @default = value
            end
            ## 
            ## Gets the description property value. Description of the template.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. Description of the template.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the discoverable property value. true if this template should appear in the collection of templates available for the application instance (service principal).
            ## @return a boolean
            ## 
            def discoverable
                return @discoverable
            end
            ## 
            ## Sets the discoverable property value. true if this template should appear in the collection of templates available for the application instance (service principal).
            ## @param value Value to set for the discoverable property.
            ## @return a void
            ## 
            def discoverable=(value)
                @discoverable = value
            end
            ## 
            ## Gets the factoryTag property value. One of the well-known factory tags supported by the synchronization engine. The factoryTag tells the synchronization engine which implementation to use when processing jobs based on this template.
            ## @return a string
            ## 
            def factory_tag
                return @factory_tag
            end
            ## 
            ## Sets the factoryTag property value. One of the well-known factory tags supported by the synchronization engine. The factoryTag tells the synchronization engine which implementation to use when processing jobs based on this template.
            ## @param value Value to set for the factoryTag property.
            ## @return a void
            ## 
            def factory_tag=(value)
                @factory_tag = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "applicationId" => lambda {|n| @application_id = n.get_guid_value() },
                    "default" => lambda {|n| @default = n.get_boolean_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "discoverable" => lambda {|n| @discoverable = n.get_boolean_value() },
                    "factoryTag" => lambda {|n| @factory_tag = n.get_string_value() },
                    "metadata" => lambda {|n| @metadata = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SynchronizationMetadataEntry.create_from_discriminator_value(pn) }) },
                    "schema" => lambda {|n| @schema = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SynchronizationSchema.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the metadata property value. Additional extension properties. Unless mentioned explicitly, metadata values should not be changed.
            ## @return a synchronization_metadata_entry
            ## 
            def metadata
                return @metadata
            end
            ## 
            ## Sets the metadata property value. Additional extension properties. Unless mentioned explicitly, metadata values should not be changed.
            ## @param value Value to set for the metadata property.
            ## @return a void
            ## 
            def metadata=(value)
                @metadata = value
            end
            ## 
            ## Gets the schema property value. Default synchronization schema for the jobs based on this template.
            ## @return a synchronization_schema
            ## 
            def schema
                return @schema
            end
            ## 
            ## Sets the schema property value. Default synchronization schema for the jobs based on this template.
            ## @param value Value to set for the schema property.
            ## @return a void
            ## 
            def schema=(value)
                @schema = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_guid_value("applicationId", @application_id) unless @application_id.nil?
                writer.write_boolean_value("default", @default) unless @default.nil?
                writer.write_string_value("description", @description) unless @description.nil?
                writer.write_boolean_value("discoverable", @discoverable) unless @discoverable.nil?
                writer.write_string_value("factoryTag", @factory_tag) unless @factory_tag.nil?
                writer.write_collection_of_object_values("metadata", @metadata) unless @metadata.nil?
                writer.write_object_value("schema", @schema) unless @schema.nil?
            end
        end
    end
end

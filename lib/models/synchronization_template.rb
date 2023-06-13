require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SynchronizationTemplate < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The applicationId property
            @application_id
            ## 
            # The default property
            @default
            ## 
            # The description property
            @description
            ## 
            # The discoverable property
            @discoverable
            ## 
            # The factoryTag property
            @factory_tag
            ## 
            # The metadata property
            @metadata
            ## 
            # The schema property
            @schema
            ## 
            ## Gets the applicationId property value. The applicationId property
            ## @return a guid
            ## 
            def application_id
                return @application_id
            end
            ## 
            ## Sets the applicationId property value. The applicationId property
            ## @param value Value to set for the application_id property.
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
            ## Gets the default property value. The default property
            ## @return a boolean
            ## 
            def default
                return @default
            end
            ## 
            ## Sets the default property value. The default property
            ## @param value Value to set for the default property.
            ## @return a void
            ## 
            def default=(value)
                @default = value
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
            ## Gets the discoverable property value. The discoverable property
            ## @return a boolean
            ## 
            def discoverable
                return @discoverable
            end
            ## 
            ## Sets the discoverable property value. The discoverable property
            ## @param value Value to set for the discoverable property.
            ## @return a void
            ## 
            def discoverable=(value)
                @discoverable = value
            end
            ## 
            ## Gets the factoryTag property value. The factoryTag property
            ## @return a string
            ## 
            def factory_tag
                return @factory_tag
            end
            ## 
            ## Sets the factoryTag property value. The factoryTag property
            ## @param value Value to set for the factory_tag property.
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
            ## Gets the metadata property value. The metadata property
            ## @return a synchronization_metadata_entry
            ## 
            def metadata
                return @metadata
            end
            ## 
            ## Sets the metadata property value. The metadata property
            ## @param value Value to set for the metadata property.
            ## @return a void
            ## 
            def metadata=(value)
                @metadata = value
            end
            ## 
            ## Gets the schema property value. The schema property
            ## @return a synchronization_schema
            ## 
            def schema
                return @schema
            end
            ## 
            ## Sets the schema property value. The schema property
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
                writer.write_guid_value("applicationId", @application_id)
                writer.write_boolean_value("default", @default)
                writer.write_string_value("description", @description)
                writer.write_boolean_value("discoverable", @discoverable)
                writer.write_string_value("factoryTag", @factory_tag)
                writer.write_collection_of_object_values("metadata", @metadata)
                writer.write_object_value("schema", @schema)
            end
        end
    end
end

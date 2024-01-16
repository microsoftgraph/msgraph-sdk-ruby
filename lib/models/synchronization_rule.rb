require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SynchronizationRule
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The containerFilter property
            @container_filter
            ## 
            # true if the synchronization rule can be customized; false if this rule is read-only and shouldn't be changed.
            @editable
            ## 
            # The groupFilter property
            @group_filter
            ## 
            # Synchronization rule identifier. Must be one of the identifiers recognized by the synchronization engine. Supported rule identifiers can be found in the synchronization template returned by the API.
            @id
            ## 
            # Additional extension properties. Unless instructed explicitly by the support team, metadata values shouldn't be changed.
            @metadata
            ## 
            # Human-readable name of the synchronization rule. Not nullable.
            @name
            ## 
            # Collection of object mappings supported by the rule. Tells the synchronization engine which objects should be synchronized.
            @object_mappings
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Priority relative to other rules in the synchronizationSchema. Rules with the lowest priority number will be processed first.
            @priority
            ## 
            # Name of the source directory. Must match one of the directory definitions in synchronizationSchema.
            @source_directory_name
            ## 
            # Name of the target directory. Must match one of the directory definitions in synchronizationSchema.
            @target_directory_name
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new synchronizationRule and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the containerFilter property value. The containerFilter property
            ## @return a container_filter
            ## 
            def container_filter
                return @container_filter
            end
            ## 
            ## Sets the containerFilter property value. The containerFilter property
            ## @param value Value to set for the containerFilter property.
            ## @return a void
            ## 
            def container_filter=(value)
                @container_filter = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a synchronization_rule
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SynchronizationRule.new
            end
            ## 
            ## Gets the editable property value. true if the synchronization rule can be customized; false if this rule is read-only and shouldn't be changed.
            ## @return a boolean
            ## 
            def editable
                return @editable
            end
            ## 
            ## Sets the editable property value. true if the synchronization rule can be customized; false if this rule is read-only and shouldn't be changed.
            ## @param value Value to set for the editable property.
            ## @return a void
            ## 
            def editable=(value)
                @editable = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "containerFilter" => lambda {|n| @container_filter = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ContainerFilter.create_from_discriminator_value(pn) }) },
                    "editable" => lambda {|n| @editable = n.get_boolean_value() },
                    "groupFilter" => lambda {|n| @group_filter = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::GroupFilter.create_from_discriminator_value(pn) }) },
                    "id" => lambda {|n| @id = n.get_string_value() },
                    "metadata" => lambda {|n| @metadata = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::StringKeyStringValuePair.create_from_discriminator_value(pn) }) },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "objectMappings" => lambda {|n| @object_mappings = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ObjectMapping.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "priority" => lambda {|n| @priority = n.get_number_value() },
                    "sourceDirectoryName" => lambda {|n| @source_directory_name = n.get_string_value() },
                    "targetDirectoryName" => lambda {|n| @target_directory_name = n.get_string_value() },
                }
            end
            ## 
            ## Gets the groupFilter property value. The groupFilter property
            ## @return a group_filter
            ## 
            def group_filter
                return @group_filter
            end
            ## 
            ## Sets the groupFilter property value. The groupFilter property
            ## @param value Value to set for the groupFilter property.
            ## @return a void
            ## 
            def group_filter=(value)
                @group_filter = value
            end
            ## 
            ## Gets the id property value. Synchronization rule identifier. Must be one of the identifiers recognized by the synchronization engine. Supported rule identifiers can be found in the synchronization template returned by the API.
            ## @return a string
            ## 
            def id
                return @id
            end
            ## 
            ## Sets the id property value. Synchronization rule identifier. Must be one of the identifiers recognized by the synchronization engine. Supported rule identifiers can be found in the synchronization template returned by the API.
            ## @param value Value to set for the id property.
            ## @return a void
            ## 
            def id=(value)
                @id = value
            end
            ## 
            ## Gets the metadata property value. Additional extension properties. Unless instructed explicitly by the support team, metadata values shouldn't be changed.
            ## @return a string_key_string_value_pair
            ## 
            def metadata
                return @metadata
            end
            ## 
            ## Sets the metadata property value. Additional extension properties. Unless instructed explicitly by the support team, metadata values shouldn't be changed.
            ## @param value Value to set for the metadata property.
            ## @return a void
            ## 
            def metadata=(value)
                @metadata = value
            end
            ## 
            ## Gets the name property value. Human-readable name of the synchronization rule. Not nullable.
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. Human-readable name of the synchronization rule. Not nullable.
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
            end
            ## 
            ## Gets the objectMappings property value. Collection of object mappings supported by the rule. Tells the synchronization engine which objects should be synchronized.
            ## @return a object_mapping
            ## 
            def object_mappings
                return @object_mappings
            end
            ## 
            ## Sets the objectMappings property value. Collection of object mappings supported by the rule. Tells the synchronization engine which objects should be synchronized.
            ## @param value Value to set for the objectMappings property.
            ## @return a void
            ## 
            def object_mappings=(value)
                @object_mappings = value
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
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the priority property value. Priority relative to other rules in the synchronizationSchema. Rules with the lowest priority number will be processed first.
            ## @return a integer
            ## 
            def priority
                return @priority
            end
            ## 
            ## Sets the priority property value. Priority relative to other rules in the synchronizationSchema. Rules with the lowest priority number will be processed first.
            ## @param value Value to set for the priority property.
            ## @return a void
            ## 
            def priority=(value)
                @priority = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("containerFilter", @container_filter)
                writer.write_boolean_value("editable", @editable)
                writer.write_object_value("groupFilter", @group_filter)
                writer.write_string_value("id", @id)
                writer.write_collection_of_object_values("metadata", @metadata)
                writer.write_string_value("name", @name)
                writer.write_collection_of_object_values("objectMappings", @object_mappings)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_number_value("priority", @priority)
                writer.write_string_value("sourceDirectoryName", @source_directory_name)
                writer.write_string_value("targetDirectoryName", @target_directory_name)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the sourceDirectoryName property value. Name of the source directory. Must match one of the directory definitions in synchronizationSchema.
            ## @return a string
            ## 
            def source_directory_name
                return @source_directory_name
            end
            ## 
            ## Sets the sourceDirectoryName property value. Name of the source directory. Must match one of the directory definitions in synchronizationSchema.
            ## @param value Value to set for the sourceDirectoryName property.
            ## @return a void
            ## 
            def source_directory_name=(value)
                @source_directory_name = value
            end
            ## 
            ## Gets the targetDirectoryName property value. Name of the target directory. Must match one of the directory definitions in synchronizationSchema.
            ## @return a string
            ## 
            def target_directory_name
                return @target_directory_name
            end
            ## 
            ## Sets the targetDirectoryName property value. Name of the target directory. Must match one of the directory definitions in synchronizationSchema.
            ## @param value Value to set for the targetDirectoryName property.
            ## @return a void
            ## 
            def target_directory_name=(value)
                @target_directory_name = value
            end
        end
    end
end

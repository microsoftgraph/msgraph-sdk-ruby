require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SynchronizationSchema < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The directories property
            @directories
            ## 
            # The synchronizationRules property
            @synchronization_rules
            ## 
            # The version property
            @version
            ## 
            ## Instantiates a new synchronizationSchema and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a synchronization_schema
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SynchronizationSchema.new
            end
            ## 
            ## Gets the directories property value. The directories property
            ## @return a directory_definition
            ## 
            def directories
                return @directories
            end
            ## 
            ## Sets the directories property value. The directories property
            ## @param value Value to set for the directories property.
            ## @return a void
            ## 
            def directories=(value)
                @directories = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "directories" => lambda {|n| @directories = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DirectoryDefinition.create_from_discriminator_value(pn) }) },
                    "synchronizationRules" => lambda {|n| @synchronization_rules = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SynchronizationRule.create_from_discriminator_value(pn) }) },
                    "version" => lambda {|n| @version = n.get_string_value() },
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
                writer.write_collection_of_object_values("directories", @directories)
                writer.write_collection_of_object_values("synchronizationRules", @synchronization_rules)
                writer.write_string_value("version", @version)
            end
            ## 
            ## Gets the synchronizationRules property value. The synchronizationRules property
            ## @return a synchronization_rule
            ## 
            def synchronization_rules
                return @synchronization_rules
            end
            ## 
            ## Sets the synchronizationRules property value. The synchronizationRules property
            ## @param value Value to set for the synchronization_rules property.
            ## @return a void
            ## 
            def synchronization_rules=(value)
                @synchronization_rules = value
            end
            ## 
            ## Gets the version property value. The version property
            ## @return a string
            ## 
            def version
                return @version
            end
            ## 
            ## Sets the version property value. The version property
            ## @param value Value to set for the version property.
            ## @return a void
            ## 
            def version=(value)
                @version = value
            end
        end
    end
end

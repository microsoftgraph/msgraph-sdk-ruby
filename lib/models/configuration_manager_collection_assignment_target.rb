require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ConfigurationManagerCollectionAssignmentTarget < MicrosoftGraph::Models::DeviceAndAppManagementAssignmentTarget
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The collection Id that is the target of the assignment.
            @collection_id
            ## 
            ## Gets the collectionId property value. The collection Id that is the target of the assignment.
            ## @return a string
            ## 
            def collection_id
                return @collection_id
            end
            ## 
            ## Sets the collectionId property value. The collection Id that is the target of the assignment.
            ## @param value Value to set for the collection_id property.
            ## @return a void
            ## 
            def collection_id=(value)
                @collection_id = value
            end
            ## 
            ## Instantiates a new ConfigurationManagerCollectionAssignmentTarget and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.configurationManagerCollectionAssignmentTarget"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a configuration_manager_collection_assignment_target
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ConfigurationManagerCollectionAssignmentTarget.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "collectionId" => lambda {|n| @collection_id = n.get_string_value() },
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
                writer.write_string_value("collectionId", @collection_id)
            end
        end
    end
end

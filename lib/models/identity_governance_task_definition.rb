require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class IdentityGovernanceTaskDefinition < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The category property
            @category
            ## 
            # The continueOnError property
            @continue_on_error
            ## 
            # The description of the taskDefinition.
            @description
            ## 
            # The display name of the taskDefinition.Supports $filter(eq, ne) and $orderby.
            @display_name
            ## 
            # The parameters that must be supplied when creating a workflow task object.Supports $filter(any).
            @parameters
            ## 
            # The version number of the taskDefinition. New records are pushed when we add support for new parameters.Supports $filter(ge, gt, le, lt, eq, ne) and $orderby.
            @version
            ## 
            ## Gets the category property value. The category property
            ## @return a identity_governance_lifecycle_task_category
            ## 
            def category
                return @category
            end
            ## 
            ## Sets the category property value. The category property
            ## @param value Value to set for the category property.
            ## @return a void
            ## 
            def category=(value)
                @category = value
            end
            ## 
            ## Instantiates a new identityGovernanceTaskDefinition and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the continueOnError property value. The continueOnError property
            ## @return a boolean
            ## 
            def continue_on_error
                return @continue_on_error
            end
            ## 
            ## Sets the continueOnError property value. The continueOnError property
            ## @param value Value to set for the continueOnError property.
            ## @return a void
            ## 
            def continue_on_error=(value)
                @continue_on_error = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a identity_governance_task_definition
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IdentityGovernanceTaskDefinition.new
            end
            ## 
            ## Gets the description property value. The description of the taskDefinition.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The description of the taskDefinition.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. The display name of the taskDefinition.Supports $filter(eq, ne) and $orderby.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name of the taskDefinition.Supports $filter(eq, ne) and $orderby.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "category" => lambda {|n| @category = n.get_enum_values(MicrosoftGraph::Models::IdentityGovernanceLifecycleTaskCategory) },
                    "continueOnError" => lambda {|n| @continue_on_error = n.get_boolean_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "parameters" => lambda {|n| @parameters = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::IdentityGovernanceParameter.create_from_discriminator_value(pn) }) },
                    "version" => lambda {|n| @version = n.get_number_value() },
                })
            end
            ## 
            ## Gets the parameters property value. The parameters that must be supplied when creating a workflow task object.Supports $filter(any).
            ## @return a identity_governance_parameter
            ## 
            def parameters
                return @parameters
            end
            ## 
            ## Sets the parameters property value. The parameters that must be supplied when creating a workflow task object.Supports $filter(any).
            ## @param value Value to set for the parameters property.
            ## @return a void
            ## 
            def parameters=(value)
                @parameters = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("category", @category)
                writer.write_boolean_value("continueOnError", @continue_on_error)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_collection_of_object_values("parameters", @parameters)
                writer.write_number_value("version", @version)
            end
            ## 
            ## Gets the version property value. The version number of the taskDefinition. New records are pushed when we add support for new parameters.Supports $filter(ge, gt, le, lt, eq, ne) and $orderby.
            ## @return a integer
            ## 
            def version
                return @version
            end
            ## 
            ## Sets the version property value. The version number of the taskDefinition. New records are pushed when we add support for new parameters.Supports $filter(ge, gt, le, lt, eq, ne) and $orderby.
            ## @param value Value to set for the version property.
            ## @return a void
            ## 
            def version=(value)
                @version = value
            end
        end
    end
end

require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class TargetedManagedAppProtection < MicrosoftGraph::Models::ManagedAppProtection
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Navigation property to list of inclusion and exclusion groups to which the policy is deployed.
            @assignments
            ## 
            # Indicates if the policy is deployed to any inclusion groups or not.
            @is_assigned
            ## 
            ## Gets the assignments property value. Navigation property to list of inclusion and exclusion groups to which the policy is deployed.
            ## @return a targeted_managed_app_policy_assignment
            ## 
            def assignments
                return @assignments
            end
            ## 
            ## Sets the assignments property value. Navigation property to list of inclusion and exclusion groups to which the policy is deployed.
            ## @param value Value to set for the assignments property.
            ## @return a void
            ## 
            def assignments=(value)
                @assignments = value
            end
            ## 
            ## Instantiates a new TargetedManagedAppProtection and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.targetedManagedAppProtection"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a targeted_managed_app_protection
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.androidManagedAppProtection"
                            return AndroidManagedAppProtection.new
                        when "#microsoft.graph.iosManagedAppProtection"
                            return IosManagedAppProtection.new
                    end
                end
                return TargetedManagedAppProtection.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "assignments" => lambda {|n| @assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::TargetedManagedAppPolicyAssignment.create_from_discriminator_value(pn) }) },
                    "isAssigned" => lambda {|n| @is_assigned = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the isAssigned property value. Indicates if the policy is deployed to any inclusion groups or not.
            ## @return a boolean
            ## 
            def is_assigned
                return @is_assigned
            end
            ## 
            ## Sets the isAssigned property value. Indicates if the policy is deployed to any inclusion groups or not.
            ## @param value Value to set for the is_assigned property.
            ## @return a void
            ## 
            def is_assigned=(value)
                @is_assigned = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("assignments", @assignments)
                writer.write_boolean_value("isAssigned", @is_assigned)
            end
        end
    end
end

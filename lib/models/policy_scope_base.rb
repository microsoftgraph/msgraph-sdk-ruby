require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class PolicyScopeBase
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # The activities property
            @activities
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The executionMode property
            @execution_mode
            ## 
            # The locations (like domains or URLs) to be protected. Required.
            @locations
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The enforcement actions to take if the policy conditions are met within this scope. Required.
            @policy_actions
            ## 
            ## Gets the activities property value. The activities property
            ## @return a user_activity_types
            ## 
            def activities
                return @activities
            end
            ## 
            ## Sets the activities property value. The activities property
            ## @param value Value to set for the activities property.
            ## @return a void
            ## 
            def activities=(value)
                @activities = value
            end
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
            ## Instantiates a new PolicyScopeBase and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a policy_scope_base
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.policyTenantScope"
                            return PolicyTenantScope.new
                        when "#microsoft.graph.policyUserScope"
                            return PolicyUserScope.new
                    end
                end
                return PolicyScopeBase.new
            end
            ## 
            ## Gets the executionMode property value. The executionMode property
            ## @return a execution_mode
            ## 
            def execution_mode
                return @execution_mode
            end
            ## 
            ## Sets the executionMode property value. The executionMode property
            ## @param value Value to set for the executionMode property.
            ## @return a void
            ## 
            def execution_mode=(value)
                @execution_mode = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "activities" => lambda {|n| @activities = n.get_enum_values(MicrosoftGraph::Models::UserActivityTypes) },
                    "executionMode" => lambda {|n| @execution_mode = n.get_enum_value(MicrosoftGraph::Models::ExecutionMode) },
                    "locations" => lambda {|n| @locations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::PolicyLocation.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "policyActions" => lambda {|n| @policy_actions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DlpActionInfo.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the locations property value. The locations (like domains or URLs) to be protected. Required.
            ## @return a policy_location
            ## 
            def locations
                return @locations
            end
            ## 
            ## Sets the locations property value. The locations (like domains or URLs) to be protected. Required.
            ## @param value Value to set for the locations property.
            ## @return a void
            ## 
            def locations=(value)
                @locations = value
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
            ## Gets the policyActions property value. The enforcement actions to take if the policy conditions are met within this scope. Required.
            ## @return a dlp_action_info
            ## 
            def policy_actions
                return @policy_actions
            end
            ## 
            ## Sets the policyActions property value. The enforcement actions to take if the policy conditions are met within this scope. Required.
            ## @param value Value to set for the policyActions property.
            ## @return a void
            ## 
            def policy_actions=(value)
                @policy_actions = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_enum_value("activities", @activities)
                writer.write_enum_value("executionMode", @execution_mode)
                writer.write_collection_of_object_values("locations", @locations)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_collection_of_object_values("policyActions", @policy_actions)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end

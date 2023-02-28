require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class PolicyBase < MicrosoftGraph::Models::DirectoryObject
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Description for this policy. Required.
            @description
            ## 
            # Display name for this policy. Required.
            @display_name
            ## 
            ## Instantiates a new policyBase and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.policyBase"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a policy_base
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.activityBasedTimeoutPolicy"
                            return ActivityBasedTimeoutPolicy.new
                        when "#microsoft.graph.appManagementPolicy"
                            return AppManagementPolicy.new
                        when "#microsoft.graph.authorizationPolicy"
                            return AuthorizationPolicy.new
                        when "#microsoft.graph.claimsMappingPolicy"
                            return ClaimsMappingPolicy.new
                        when "#microsoft.graph.crossTenantAccessPolicy"
                            return CrossTenantAccessPolicy.new
                        when "#microsoft.graph.homeRealmDiscoveryPolicy"
                            return HomeRealmDiscoveryPolicy.new
                        when "#microsoft.graph.identitySecurityDefaultsEnforcementPolicy"
                            return IdentitySecurityDefaultsEnforcementPolicy.new
                        when "#microsoft.graph.permissionGrantPolicy"
                            return PermissionGrantPolicy.new
                        when "#microsoft.graph.stsPolicy"
                            return StsPolicy.new
                        when "#microsoft.graph.tenantAppManagementPolicy"
                            return TenantAppManagementPolicy.new
                        when "#microsoft.graph.tokenIssuancePolicy"
                            return TokenIssuancePolicy.new
                        when "#microsoft.graph.tokenLifetimePolicy"
                            return TokenLifetimePolicy.new
                    end
                end
                return PolicyBase.new
            end
            ## 
            ## Gets the description property value. Description for this policy. Required.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. Description for this policy. Required.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. Display name for this policy. Required.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Display name for this policy. Required.
            ## @param value Value to set for the display_name property.
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
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
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
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
            end
        end
    end
end

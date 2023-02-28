require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class DirectoryObject < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Date and time when this object was deleted. Always null when the object hasn't been deleted.
            @deleted_date_time
            ## 
            ## Instantiates a new directoryObject and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a directory_object
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.activityBasedTimeoutPolicy"
                            return ActivityBasedTimeoutPolicy.new
                        when "#microsoft.graph.administrativeUnit"
                            return AdministrativeUnit.new
                        when "#microsoft.graph.application"
                            return Application.new
                        when "#microsoft.graph.appManagementPolicy"
                            return AppManagementPolicy.new
                        when "#microsoft.graph.appRoleAssignment"
                            return AppRoleAssignment.new
                        when "#microsoft.graph.authorizationPolicy"
                            return AuthorizationPolicy.new
                        when "#microsoft.graph.claimsMappingPolicy"
                            return ClaimsMappingPolicy.new
                        when "#microsoft.graph.contract"
                            return Contract.new
                        when "#microsoft.graph.crossTenantAccessPolicy"
                            return CrossTenantAccessPolicy.new
                        when "#microsoft.graph.device"
                            return Device.new
                        when "#microsoft.graph.directoryObjectPartnerReference"
                            return DirectoryObjectPartnerReference.new
                        when "#microsoft.graph.directoryRole"
                            return DirectoryRole.new
                        when "#microsoft.graph.directoryRoleTemplate"
                            return DirectoryRoleTemplate.new
                        when "#microsoft.graph.endpoint"
                            return Endpoint.new
                        when "#microsoft.graph.extensionProperty"
                            return ExtensionProperty.new
                        when "#microsoft.graph.group"
                            return Group.new
                        when "#microsoft.graph.groupSettingTemplate"
                            return GroupSettingTemplate.new
                        when "#microsoft.graph.homeRealmDiscoveryPolicy"
                            return HomeRealmDiscoveryPolicy.new
                        when "#microsoft.graph.identitySecurityDefaultsEnforcementPolicy"
                            return IdentitySecurityDefaultsEnforcementPolicy.new
                        when "#microsoft.graph.organization"
                            return Organization.new
                        when "#microsoft.graph.orgContact"
                            return OrgContact.new
                        when "#microsoft.graph.permissionGrantPolicy"
                            return PermissionGrantPolicy.new
                        when "#microsoft.graph.policyBase"
                            return PolicyBase.new
                        when "#microsoft.graph.resourceSpecificPermissionGrant"
                            return ResourceSpecificPermissionGrant.new
                        when "#microsoft.graph.servicePrincipal"
                            return ServicePrincipal.new
                        when "#microsoft.graph.stsPolicy"
                            return StsPolicy.new
                        when "#microsoft.graph.tenantAppManagementPolicy"
                            return TenantAppManagementPolicy.new
                        when "#microsoft.graph.tokenIssuancePolicy"
                            return TokenIssuancePolicy.new
                        when "#microsoft.graph.tokenLifetimePolicy"
                            return TokenLifetimePolicy.new
                        when "#microsoft.graph.user"
                            return User.new
                    end
                end
                return DirectoryObject.new
            end
            ## 
            ## Gets the deletedDateTime property value. Date and time when this object was deleted. Always null when the object hasn't been deleted.
            ## @return a date_time
            ## 
            def deleted_date_time
                return @deleted_date_time
            end
            ## 
            ## Sets the deletedDateTime property value. Date and time when this object was deleted. Always null when the object hasn't been deleted.
            ## @param value Value to set for the deleted_date_time property.
            ## @return a void
            ## 
            def deleted_date_time=(value)
                @deleted_date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "deletedDateTime" => lambda {|n| @deleted_date_time = n.get_date_time_value() },
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
                writer.write_date_time_value("deletedDateTime", @deleted_date_time)
            end
        end
    end
end

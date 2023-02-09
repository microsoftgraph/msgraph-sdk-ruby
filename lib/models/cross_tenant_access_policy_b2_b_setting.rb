require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class CrossTenantAccessPolicyB2BSetting
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The list of applications targeted with your cross-tenant access policy.
            @applications
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The list of users and groups targeted with your cross-tenant access policy.
            @users_and_groups
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the applications property value. The list of applications targeted with your cross-tenant access policy.
            ## @return a cross_tenant_access_policy_target_configuration
            ## 
            def applications
                return @applications
            end
            ## 
            ## Sets the applications property value. The list of applications targeted with your cross-tenant access policy.
            ## @param value Value to set for the applications property.
            ## @return a void
            ## 
            def applications=(value)
                @applications = value
            end
            ## 
            ## Instantiates a new crossTenantAccessPolicyB2BSetting and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a cross_tenant_access_policy_b2_b_setting
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CrossTenantAccessPolicyB2BSetting.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "applications" => lambda {|n| @applications = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::CrossTenantAccessPolicyTargetConfiguration.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "usersAndGroups" => lambda {|n| @users_and_groups = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::CrossTenantAccessPolicyTargetConfiguration.create_from_discriminator_value(pn) }) },
                }
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
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("applications", @applications)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("usersAndGroups", @users_and_groups)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the usersAndGroups property value. The list of users and groups targeted with your cross-tenant access policy.
            ## @return a cross_tenant_access_policy_target_configuration
            ## 
            def users_and_groups
                return @users_and_groups
            end
            ## 
            ## Sets the usersAndGroups property value. The list of users and groups targeted with your cross-tenant access policy.
            ## @param value Value to set for the users_and_groups property.
            ## @return a void
            ## 
            def users_and_groups=(value)
                @users_and_groups = value
            end
        end
    end
end

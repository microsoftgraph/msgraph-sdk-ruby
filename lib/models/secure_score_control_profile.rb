require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SecureScoreControlProfile < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Control action type (Config, Review, Behavior).
            @action_type
            ## 
            # URL to where the control can be actioned.
            @action_url
            ## 
            # GUID string for tenant ID.
            @azure_tenant_id
            ## 
            # The collection of compliance information associated with secure score control
            @compliance_information
            ## 
            # Control action category (Identity, Data, Device, Apps, Infrastructure).
            @control_category
            ## 
            # Flag to indicate where the tenant has marked a control (ignored, thirdParty, reviewed) (supports update).
            @control_state_updates
            ## 
            # Flag to indicate if a control is depreciated.
            @deprecated
            ## 
            # Resource cost of implemmentating control (low, moderate, high).
            @implementation_cost
            ## 
            # Time at which the control profile entity was last modified. The Timestamp type represents date and time
            @last_modified_date_time
            ## 
            # max attainable score for the control.
            @max_score
            ## 
            # Microsoft's stack ranking of control.
            @rank
            ## 
            # Description of what the control will help remediate.
            @remediation
            ## 
            # Description of the impact on users of the remediation.
            @remediation_impact
            ## 
            # Service that owns the control (Exchange, Sharepoint, Azure AD).
            @service
            ## 
            # List of threats the control mitigates (accountBreach,dataDeletion,dataExfiltration,dataSpillage,
            @threats
            ## 
            # The tier property
            @tier
            ## 
            # The title property
            @title
            ## 
            # The userImpact property
            @user_impact
            ## 
            # The vendorInformation property
            @vendor_information
            ## 
            ## Gets the actionType property value. Control action type (Config, Review, Behavior).
            ## @return a string
            ## 
            def action_type
                return @action_type
            end
            ## 
            ## Sets the actionType property value. Control action type (Config, Review, Behavior).
            ## @param value Value to set for the action_type property.
            ## @return a void
            ## 
            def action_type=(value)
                @action_type = value
            end
            ## 
            ## Gets the actionUrl property value. URL to where the control can be actioned.
            ## @return a string
            ## 
            def action_url
                return @action_url
            end
            ## 
            ## Sets the actionUrl property value. URL to where the control can be actioned.
            ## @param value Value to set for the action_url property.
            ## @return a void
            ## 
            def action_url=(value)
                @action_url = value
            end
            ## 
            ## Gets the azureTenantId property value. GUID string for tenant ID.
            ## @return a string
            ## 
            def azure_tenant_id
                return @azure_tenant_id
            end
            ## 
            ## Sets the azureTenantId property value. GUID string for tenant ID.
            ## @param value Value to set for the azure_tenant_id property.
            ## @return a void
            ## 
            def azure_tenant_id=(value)
                @azure_tenant_id = value
            end
            ## 
            ## Gets the complianceInformation property value. The collection of compliance information associated with secure score control
            ## @return a compliance_information
            ## 
            def compliance_information
                return @compliance_information
            end
            ## 
            ## Sets the complianceInformation property value. The collection of compliance information associated with secure score control
            ## @param value Value to set for the compliance_information property.
            ## @return a void
            ## 
            def compliance_information=(value)
                @compliance_information = value
            end
            ## 
            ## Instantiates a new secureScoreControlProfile and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the controlCategory property value. Control action category (Identity, Data, Device, Apps, Infrastructure).
            ## @return a string
            ## 
            def control_category
                return @control_category
            end
            ## 
            ## Sets the controlCategory property value. Control action category (Identity, Data, Device, Apps, Infrastructure).
            ## @param value Value to set for the control_category property.
            ## @return a void
            ## 
            def control_category=(value)
                @control_category = value
            end
            ## 
            ## Gets the controlStateUpdates property value. Flag to indicate where the tenant has marked a control (ignored, thirdParty, reviewed) (supports update).
            ## @return a secure_score_control_state_update
            ## 
            def control_state_updates
                return @control_state_updates
            end
            ## 
            ## Sets the controlStateUpdates property value. Flag to indicate where the tenant has marked a control (ignored, thirdParty, reviewed) (supports update).
            ## @param value Value to set for the control_state_updates property.
            ## @return a void
            ## 
            def control_state_updates=(value)
                @control_state_updates = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a secure_score_control_profile
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecureScoreControlProfile.new
            end
            ## 
            ## Gets the deprecated property value. Flag to indicate if a control is depreciated.
            ## @return a boolean
            ## 
            def deprecated
                return @deprecated
            end
            ## 
            ## Sets the deprecated property value. Flag to indicate if a control is depreciated.
            ## @param value Value to set for the deprecated property.
            ## @return a void
            ## 
            def deprecated=(value)
                @deprecated = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "actionType" => lambda {|n| @action_type = n.get_string_value() },
                    "actionUrl" => lambda {|n| @action_url = n.get_string_value() },
                    "azureTenantId" => lambda {|n| @azure_tenant_id = n.get_string_value() },
                    "complianceInformation" => lambda {|n| @compliance_information = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ComplianceInformation.create_from_discriminator_value(pn) }) },
                    "controlCategory" => lambda {|n| @control_category = n.get_string_value() },
                    "controlStateUpdates" => lambda {|n| @control_state_updates = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SecureScoreControlStateUpdate.create_from_discriminator_value(pn) }) },
                    "deprecated" => lambda {|n| @deprecated = n.get_boolean_value() },
                    "implementationCost" => lambda {|n| @implementation_cost = n.get_string_value() },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "maxScore" => lambda {|n| @max_score = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "rank" => lambda {|n| @rank = n.get_number_value() },
                    "remediation" => lambda {|n| @remediation = n.get_string_value() },
                    "remediationImpact" => lambda {|n| @remediation_impact = n.get_string_value() },
                    "service" => lambda {|n| @service = n.get_string_value() },
                    "threats" => lambda {|n| @threats = n.get_collection_of_primitive_values(String) },
                    "tier" => lambda {|n| @tier = n.get_string_value() },
                    "title" => lambda {|n| @title = n.get_string_value() },
                    "userImpact" => lambda {|n| @user_impact = n.get_string_value() },
                    "vendorInformation" => lambda {|n| @vendor_information = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecurityVendorInformation.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the implementationCost property value. Resource cost of implemmentating control (low, moderate, high).
            ## @return a string
            ## 
            def implementation_cost
                return @implementation_cost
            end
            ## 
            ## Sets the implementationCost property value. Resource cost of implemmentating control (low, moderate, high).
            ## @param value Value to set for the implementation_cost property.
            ## @return a void
            ## 
            def implementation_cost=(value)
                @implementation_cost = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. Time at which the control profile entity was last modified. The Timestamp type represents date and time
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. Time at which the control profile entity was last modified. The Timestamp type represents date and time
            ## @param value Value to set for the last_modified_date_time property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the maxScore property value. max attainable score for the control.
            ## @return a double
            ## 
            def max_score
                return @max_score
            end
            ## 
            ## Sets the maxScore property value. max attainable score for the control.
            ## @param value Value to set for the max_score property.
            ## @return a void
            ## 
            def max_score=(value)
                @max_score = value
            end
            ## 
            ## Gets the rank property value. Microsoft's stack ranking of control.
            ## @return a integer
            ## 
            def rank
                return @rank
            end
            ## 
            ## Sets the rank property value. Microsoft's stack ranking of control.
            ## @param value Value to set for the rank property.
            ## @return a void
            ## 
            def rank=(value)
                @rank = value
            end
            ## 
            ## Gets the remediation property value. Description of what the control will help remediate.
            ## @return a string
            ## 
            def remediation
                return @remediation
            end
            ## 
            ## Sets the remediation property value. Description of what the control will help remediate.
            ## @param value Value to set for the remediation property.
            ## @return a void
            ## 
            def remediation=(value)
                @remediation = value
            end
            ## 
            ## Gets the remediationImpact property value. Description of the impact on users of the remediation.
            ## @return a string
            ## 
            def remediation_impact
                return @remediation_impact
            end
            ## 
            ## Sets the remediationImpact property value. Description of the impact on users of the remediation.
            ## @param value Value to set for the remediation_impact property.
            ## @return a void
            ## 
            def remediation_impact=(value)
                @remediation_impact = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("actionType", @action_type)
                writer.write_string_value("actionUrl", @action_url)
                writer.write_string_value("azureTenantId", @azure_tenant_id)
                writer.write_collection_of_object_values("complianceInformation", @compliance_information)
                writer.write_string_value("controlCategory", @control_category)
                writer.write_collection_of_object_values("controlStateUpdates", @control_state_updates)
                writer.write_boolean_value("deprecated", @deprecated)
                writer.write_string_value("implementationCost", @implementation_cost)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_object_value("maxScore", @max_score)
                writer.write_number_value("rank", @rank)
                writer.write_string_value("remediation", @remediation)
                writer.write_string_value("remediationImpact", @remediation_impact)
                writer.write_string_value("service", @service)
                writer.write_collection_of_primitive_values("threats", @threats)
                writer.write_string_value("tier", @tier)
                writer.write_string_value("title", @title)
                writer.write_string_value("userImpact", @user_impact)
                writer.write_object_value("vendorInformation", @vendor_information)
            end
            ## 
            ## Gets the service property value. Service that owns the control (Exchange, Sharepoint, Azure AD).
            ## @return a string
            ## 
            def service
                return @service
            end
            ## 
            ## Sets the service property value. Service that owns the control (Exchange, Sharepoint, Azure AD).
            ## @param value Value to set for the service property.
            ## @return a void
            ## 
            def service=(value)
                @service = value
            end
            ## 
            ## Gets the threats property value. List of threats the control mitigates (accountBreach,dataDeletion,dataExfiltration,dataSpillage,
            ## @return a string
            ## 
            def threats
                return @threats
            end
            ## 
            ## Sets the threats property value. List of threats the control mitigates (accountBreach,dataDeletion,dataExfiltration,dataSpillage,
            ## @param value Value to set for the threats property.
            ## @return a void
            ## 
            def threats=(value)
                @threats = value
            end
            ## 
            ## Gets the tier property value. The tier property
            ## @return a string
            ## 
            def tier
                return @tier
            end
            ## 
            ## Sets the tier property value. The tier property
            ## @param value Value to set for the tier property.
            ## @return a void
            ## 
            def tier=(value)
                @tier = value
            end
            ## 
            ## Gets the title property value. The title property
            ## @return a string
            ## 
            def title
                return @title
            end
            ## 
            ## Sets the title property value. The title property
            ## @param value Value to set for the title property.
            ## @return a void
            ## 
            def title=(value)
                @title = value
            end
            ## 
            ## Gets the userImpact property value. The userImpact property
            ## @return a string
            ## 
            def user_impact
                return @user_impact
            end
            ## 
            ## Sets the userImpact property value. The userImpact property
            ## @param value Value to set for the user_impact property.
            ## @return a void
            ## 
            def user_impact=(value)
                @user_impact = value
            end
            ## 
            ## Gets the vendorInformation property value. The vendorInformation property
            ## @return a security_vendor_information
            ## 
            def vendor_information
                return @vendor_information
            end
            ## 
            ## Sets the vendorInformation property value. The vendorInformation property
            ## @param value Value to set for the vendor_information property.
            ## @return a void
            ## 
            def vendor_information=(value)
                @vendor_information = value
            end
        end
    end
end

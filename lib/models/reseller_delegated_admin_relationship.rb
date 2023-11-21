require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ResellerDelegatedAdminRelationship < MicrosoftGraph::Models::DelegatedAdminRelationship
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The tenant ID of the indirect provider partner who created the relationship for the indirect reseller partner.
            @indirect_provider_tenant_id
            ## 
            # Indicates the indirect reseller partner consent status. true indicates that the partner has yet to review the relationship; false indicates that the partner has already provided consent by approving or rejecting the relationship.
            @is_partner_consent_pending
            ## 
            ## Instantiates a new resellerDelegatedAdminRelationship and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a reseller_delegated_admin_relationship
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ResellerDelegatedAdminRelationship.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "indirectProviderTenantId" => lambda {|n| @indirect_provider_tenant_id = n.get_string_value() },
                    "isPartnerConsentPending" => lambda {|n| @is_partner_consent_pending = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the indirectProviderTenantId property value. The tenant ID of the indirect provider partner who created the relationship for the indirect reseller partner.
            ## @return a string
            ## 
            def indirect_provider_tenant_id
                return @indirect_provider_tenant_id
            end
            ## 
            ## Sets the indirectProviderTenantId property value. The tenant ID of the indirect provider partner who created the relationship for the indirect reseller partner.
            ## @param value Value to set for the indirectProviderTenantId property.
            ## @return a void
            ## 
            def indirect_provider_tenant_id=(value)
                @indirect_provider_tenant_id = value
            end
            ## 
            ## Gets the isPartnerConsentPending property value. Indicates the indirect reseller partner consent status. true indicates that the partner has yet to review the relationship; false indicates that the partner has already provided consent by approving or rejecting the relationship.
            ## @return a boolean
            ## 
            def is_partner_consent_pending
                return @is_partner_consent_pending
            end
            ## 
            ## Sets the isPartnerConsentPending property value. Indicates the indirect reseller partner consent status. true indicates that the partner has yet to review the relationship; false indicates that the partner has already provided consent by approving or rejecting the relationship.
            ## @param value Value to set for the isPartnerConsentPending property.
            ## @return a void
            ## 
            def is_partner_consent_pending=(value)
                @is_partner_consent_pending = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("indirectProviderTenantId", @indirect_provider_tenant_id)
                writer.write_boolean_value("isPartnerConsentPending", @is_partner_consent_pending)
            end
        end
    end
end

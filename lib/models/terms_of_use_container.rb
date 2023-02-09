require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class TermsOfUseContainer < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Represents the current status of a user's response to a company's customizable terms of use agreement.
            @agreement_acceptances
            ## 
            # Represents a tenant's customizable terms of use agreement that's created and managed with Azure Active Directory (Azure AD).
            @agreements
            ## 
            ## Gets the agreementAcceptances property value. Represents the current status of a user's response to a company's customizable terms of use agreement.
            ## @return a agreement_acceptance
            ## 
            def agreement_acceptances
                return @agreement_acceptances
            end
            ## 
            ## Sets the agreementAcceptances property value. Represents the current status of a user's response to a company's customizable terms of use agreement.
            ## @param value Value to set for the agreement_acceptances property.
            ## @return a void
            ## 
            def agreement_acceptances=(value)
                @agreement_acceptances = value
            end
            ## 
            ## Gets the agreements property value. Represents a tenant's customizable terms of use agreement that's created and managed with Azure Active Directory (Azure AD).
            ## @return a agreement
            ## 
            def agreements
                return @agreements
            end
            ## 
            ## Sets the agreements property value. Represents a tenant's customizable terms of use agreement that's created and managed with Azure Active Directory (Azure AD).
            ## @param value Value to set for the agreements property.
            ## @return a void
            ## 
            def agreements=(value)
                @agreements = value
            end
            ## 
            ## Instantiates a new TermsOfUseContainer and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a terms_of_use_container
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TermsOfUseContainer.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "agreementAcceptances" => lambda {|n| @agreement_acceptances = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AgreementAcceptance.create_from_discriminator_value(pn) }) },
                    "agreements" => lambda {|n| @agreements = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Agreement.create_from_discriminator_value(pn) }) },
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
                writer.write_collection_of_object_values("agreementAcceptances", @agreement_acceptances)
                writer.write_collection_of_object_values("agreements", @agreements)
            end
        end
    end
end

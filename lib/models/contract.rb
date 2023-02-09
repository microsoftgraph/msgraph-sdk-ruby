require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Contract < MicrosoftGraph::Models::DirectoryObject
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Type of contract. Possible values are:  SyndicationPartner, BreadthPartner, ResellerPartner. See more in the table below.
            @contract_type
            ## 
            # The unique identifier for the customer tenant referenced by this partnership. Corresponds to the id property of the customer tenant's organization resource.
            @customer_id
            ## 
            # A copy of the customer tenant's default domain name. The copy is made when the partnership with the customer is established. It is not automatically updated if the customer tenant's default domain name changes.
            @default_domain_name
            ## 
            # A copy of the customer tenant's display name. The copy is made when the partnership with the customer is established. It is not automatically updated if the customer tenant's display name changes.
            @display_name
            ## 
            ## Instantiates a new Contract and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.contract"
            end
            ## 
            ## Gets the contractType property value. Type of contract. Possible values are:  SyndicationPartner, BreadthPartner, ResellerPartner. See more in the table below.
            ## @return a string
            ## 
            def contract_type
                return @contract_type
            end
            ## 
            ## Sets the contractType property value. Type of contract. Possible values are:  SyndicationPartner, BreadthPartner, ResellerPartner. See more in the table below.
            ## @param value Value to set for the contract_type property.
            ## @return a void
            ## 
            def contract_type=(value)
                @contract_type = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a contract
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Contract.new
            end
            ## 
            ## Gets the customerId property value. The unique identifier for the customer tenant referenced by this partnership. Corresponds to the id property of the customer tenant's organization resource.
            ## @return a guid
            ## 
            def customer_id
                return @customer_id
            end
            ## 
            ## Sets the customerId property value. The unique identifier for the customer tenant referenced by this partnership. Corresponds to the id property of the customer tenant's organization resource.
            ## @param value Value to set for the customer_id property.
            ## @return a void
            ## 
            def customer_id=(value)
                @customer_id = value
            end
            ## 
            ## Gets the defaultDomainName property value. A copy of the customer tenant's default domain name. The copy is made when the partnership with the customer is established. It is not automatically updated if the customer tenant's default domain name changes.
            ## @return a string
            ## 
            def default_domain_name
                return @default_domain_name
            end
            ## 
            ## Sets the defaultDomainName property value. A copy of the customer tenant's default domain name. The copy is made when the partnership with the customer is established. It is not automatically updated if the customer tenant's default domain name changes.
            ## @param value Value to set for the default_domain_name property.
            ## @return a void
            ## 
            def default_domain_name=(value)
                @default_domain_name = value
            end
            ## 
            ## Gets the displayName property value. A copy of the customer tenant's display name. The copy is made when the partnership with the customer is established. It is not automatically updated if the customer tenant's display name changes.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. A copy of the customer tenant's display name. The copy is made when the partnership with the customer is established. It is not automatically updated if the customer tenant's display name changes.
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
                    "contractType" => lambda {|n| @contract_type = n.get_string_value() },
                    "customerId" => lambda {|n| @customer_id = n.get_guid_value() },
                    "defaultDomainName" => lambda {|n| @default_domain_name = n.get_string_value() },
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
                writer.write_string_value("contractType", @contract_type)
                writer.write_guid_value("customerId", @customer_id)
                writer.write_string_value("defaultDomainName", @default_domain_name)
                writer.write_string_value("displayName", @display_name)
            end
        end
    end
end

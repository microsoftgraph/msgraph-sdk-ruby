require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class TenantRelationship
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The customer who has a delegated admin relationship with a Microsoft partner.
            @delegated_admin_customers
            ## 
            # The details of the delegated administrative privileges that a Microsoft partner has in a customer tenant.
            @delegated_admin_relationships
            ## 
            # The OdataType property
            @odata_type
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
            ## Instantiates a new TenantRelationship and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a tenant_relationship
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TenantRelationship.new
            end
            ## 
            ## Gets the delegatedAdminCustomers property value. The customer who has a delegated admin relationship with a Microsoft partner.
            ## @return a delegated_admin_customer
            ## 
            def delegated_admin_customers
                return @delegated_admin_customers
            end
            ## 
            ## Sets the delegatedAdminCustomers property value. The customer who has a delegated admin relationship with a Microsoft partner.
            ## @param value Value to set for the delegated_admin_customers property.
            ## @return a void
            ## 
            def delegated_admin_customers=(value)
                @delegated_admin_customers = value
            end
            ## 
            ## Gets the delegatedAdminRelationships property value. The details of the delegated administrative privileges that a Microsoft partner has in a customer tenant.
            ## @return a delegated_admin_relationship
            ## 
            def delegated_admin_relationships
                return @delegated_admin_relationships
            end
            ## 
            ## Sets the delegatedAdminRelationships property value. The details of the delegated administrative privileges that a Microsoft partner has in a customer tenant.
            ## @param value Value to set for the delegated_admin_relationships property.
            ## @return a void
            ## 
            def delegated_admin_relationships=(value)
                @delegated_admin_relationships = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "delegatedAdminCustomers" => lambda {|n| @delegated_admin_customers = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DelegatedAdminCustomer.create_from_discriminator_value(pn) }) },
                    "delegatedAdminRelationships" => lambda {|n| @delegated_admin_relationships = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DelegatedAdminRelationship.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
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
                writer.write_collection_of_object_values("delegatedAdminCustomers", @delegated_admin_customers)
                writer.write_collection_of_object_values("delegatedAdminRelationships", @delegated_admin_relationships)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end

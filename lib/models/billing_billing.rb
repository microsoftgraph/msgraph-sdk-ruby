require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class .models.partners.billingBilling < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Represents metadata for the exported data.
            @manifests
            ## 
            # Represents an operation to export the billing data of a partner.
            @operations
            ## 
            # The usage property
            @usage
            ## 
            ## Instantiates a new .models.partners.billingBilling and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a .models.partners.billing_billing
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return .models.partners.billingBilling.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "manifests" => lambda {|n| @manifests = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::.models.partners.billingManifest.create_from_discriminator_value(pn) }) },
                    "operations" => lambda {|n| @operations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::.models.partners.billingOperation.create_from_discriminator_value(pn) }) },
                    "usage" => lambda {|n| @usage = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::.models.partners.billingAzureUsage.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the manifests property value. Represents metadata for the exported data.
            ## @return a .models.partners.billing_manifest
            ## 
            def manifests
                return @manifests
            end
            ## 
            ## Sets the manifests property value. Represents metadata for the exported data.
            ## @param value Value to set for the manifests property.
            ## @return a void
            ## 
            def manifests=(value)
                @manifests = value
            end
            ## 
            ## Gets the operations property value. Represents an operation to export the billing data of a partner.
            ## @return a .models.partners.billing_operation
            ## 
            def operations
                return @operations
            end
            ## 
            ## Sets the operations property value. Represents an operation to export the billing data of a partner.
            ## @param value Value to set for the operations property.
            ## @return a void
            ## 
            def operations=(value)
                @operations = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("manifests", @manifests)
                writer.write_collection_of_object_values("operations", @operations)
                writer.write_object_value("usage", @usage)
            end
            ## 
            ## Gets the usage property value. The usage property
            ## @return a .models.partners.billing_azure_usage
            ## 
            def usage
                return @usage
            end
            ## 
            ## Sets the usage property value. The usage property
            ## @param value Value to set for the usage property.
            ## @return a void
            ## 
            def usage=(value)
                @usage = value
            end
        end
    end
end

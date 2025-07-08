require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class PolicyBinding
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Specifies the users or groups to be explicitly excluded from this policy scope. Can be null or empty.
            @exclusions
            ## 
            # Specifies the users or groups to be included in this policy scope. Often set to tenantScope for 'All users'.
            @inclusions
            ## 
            # The OdataType property
            @odata_type
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
            ## Instantiates a new PolicyBinding and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a policy_binding
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PolicyBinding.new
            end
            ## 
            ## Gets the exclusions property value. Specifies the users or groups to be explicitly excluded from this policy scope. Can be null or empty.
            ## @return a scope_base
            ## 
            def exclusions
                return @exclusions
            end
            ## 
            ## Sets the exclusions property value. Specifies the users or groups to be explicitly excluded from this policy scope. Can be null or empty.
            ## @param value Value to set for the exclusions property.
            ## @return a void
            ## 
            def exclusions=(value)
                @exclusions = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "exclusions" => lambda {|n| @exclusions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ScopeBase.create_from_discriminator_value(pn) }) },
                    "inclusions" => lambda {|n| @inclusions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ScopeBase.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the inclusions property value. Specifies the users or groups to be included in this policy scope. Often set to tenantScope for 'All users'.
            ## @return a scope_base
            ## 
            def inclusions
                return @inclusions
            end
            ## 
            ## Sets the inclusions property value. Specifies the users or groups to be included in this policy scope. Often set to tenantScope for 'All users'.
            ## @param value Value to set for the inclusions property.
            ## @return a void
            ## 
            def inclusions=(value)
                @inclusions = value
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_collection_of_object_values("exclusions", @exclusions)
                writer.write_collection_of_object_values("inclusions", @inclusions)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end

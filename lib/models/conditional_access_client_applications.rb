require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ConditionalAccessClientApplications
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Service principal IDs excluded from the policy scope.
            @exclude_service_principals
            ## 
            # Service principal IDs included in the policy scope, or ServicePrincipalsInMyTenant.
            @include_service_principals
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
            ## Instantiates a new conditionalAccessClientApplications and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a conditional_access_client_applications
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ConditionalAccessClientApplications.new
            end
            ## 
            ## Gets the excludeServicePrincipals property value. Service principal IDs excluded from the policy scope.
            ## @return a string
            ## 
            def exclude_service_principals
                return @exclude_service_principals
            end
            ## 
            ## Sets the excludeServicePrincipals property value. Service principal IDs excluded from the policy scope.
            ## @param value Value to set for the exclude_service_principals property.
            ## @return a void
            ## 
            def exclude_service_principals=(value)
                @exclude_service_principals = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "excludeServicePrincipals" => lambda {|n| @exclude_service_principals = n.get_collection_of_primitive_values(String) },
                    "includeServicePrincipals" => lambda {|n| @include_service_principals = n.get_collection_of_primitive_values(String) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the includeServicePrincipals property value. Service principal IDs included in the policy scope, or ServicePrincipalsInMyTenant.
            ## @return a string
            ## 
            def include_service_principals
                return @include_service_principals
            end
            ## 
            ## Sets the includeServicePrincipals property value. Service principal IDs included in the policy scope, or ServicePrincipalsInMyTenant.
            ## @param value Value to set for the include_service_principals property.
            ## @return a void
            ## 
            def include_service_principals=(value)
                @include_service_principals = value
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
                writer.write_collection_of_primitive_values("excludeServicePrincipals", @exclude_service_principals)
                writer.write_collection_of_primitive_values("includeServicePrincipals", @include_service_principals)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end

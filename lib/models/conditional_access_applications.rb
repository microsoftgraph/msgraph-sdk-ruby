require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ConditionalAccessApplications
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Can be one of the following:  The list of client IDs (appId) explicitly excluded from the policy. Office365 - For the list of apps included in Office365, see Conditional Access target apps: Office 365
            @exclude_applications
            ## 
            # Can be one of the following:  The list of client IDs (appId) the policy applies to, unless explicitly excluded (in excludeApplications)  All  Office365 - For the list of apps included in Office365, see Conditional Access target apps: Office 365
            @include_applications
            ## 
            # The includeAuthenticationContextClassReferences property
            @include_authentication_context_class_references
            ## 
            # User actions to include. Supported values are urn:user:registersecurityinfo and urn:user:registerdevice
            @include_user_actions
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
            ## Instantiates a new conditionalAccessApplications and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a conditional_access_applications
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ConditionalAccessApplications.new
            end
            ## 
            ## Gets the excludeApplications property value. Can be one of the following:  The list of client IDs (appId) explicitly excluded from the policy. Office365 - For the list of apps included in Office365, see Conditional Access target apps: Office 365
            ## @return a string
            ## 
            def exclude_applications
                return @exclude_applications
            end
            ## 
            ## Sets the excludeApplications property value. Can be one of the following:  The list of client IDs (appId) explicitly excluded from the policy. Office365 - For the list of apps included in Office365, see Conditional Access target apps: Office 365
            ## @param value Value to set for the exclude_applications property.
            ## @return a void
            ## 
            def exclude_applications=(value)
                @exclude_applications = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "excludeApplications" => lambda {|n| @exclude_applications = n.get_collection_of_primitive_values(String) },
                    "includeApplications" => lambda {|n| @include_applications = n.get_collection_of_primitive_values(String) },
                    "includeAuthenticationContextClassReferences" => lambda {|n| @include_authentication_context_class_references = n.get_collection_of_primitive_values(String) },
                    "includeUserActions" => lambda {|n| @include_user_actions = n.get_collection_of_primitive_values(String) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the includeApplications property value. Can be one of the following:  The list of client IDs (appId) the policy applies to, unless explicitly excluded (in excludeApplications)  All  Office365 - For the list of apps included in Office365, see Conditional Access target apps: Office 365
            ## @return a string
            ## 
            def include_applications
                return @include_applications
            end
            ## 
            ## Sets the includeApplications property value. Can be one of the following:  The list of client IDs (appId) the policy applies to, unless explicitly excluded (in excludeApplications)  All  Office365 - For the list of apps included in Office365, see Conditional Access target apps: Office 365
            ## @param value Value to set for the include_applications property.
            ## @return a void
            ## 
            def include_applications=(value)
                @include_applications = value
            end
            ## 
            ## Gets the includeAuthenticationContextClassReferences property value. The includeAuthenticationContextClassReferences property
            ## @return a string
            ## 
            def include_authentication_context_class_references
                return @include_authentication_context_class_references
            end
            ## 
            ## Sets the includeAuthenticationContextClassReferences property value. The includeAuthenticationContextClassReferences property
            ## @param value Value to set for the include_authentication_context_class_references property.
            ## @return a void
            ## 
            def include_authentication_context_class_references=(value)
                @include_authentication_context_class_references = value
            end
            ## 
            ## Gets the includeUserActions property value. User actions to include. Supported values are urn:user:registersecurityinfo and urn:user:registerdevice
            ## @return a string
            ## 
            def include_user_actions
                return @include_user_actions
            end
            ## 
            ## Sets the includeUserActions property value. User actions to include. Supported values are urn:user:registersecurityinfo and urn:user:registerdevice
            ## @param value Value to set for the include_user_actions property.
            ## @return a void
            ## 
            def include_user_actions=(value)
                @include_user_actions = value
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
                writer.write_collection_of_primitive_values("excludeApplications", @exclude_applications)
                writer.write_collection_of_primitive_values("includeApplications", @include_applications)
                writer.write_collection_of_primitive_values("includeAuthenticationContextClassReferences", @include_authentication_context_class_references)
                writer.write_collection_of_primitive_values("includeUserActions", @include_user_actions)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end

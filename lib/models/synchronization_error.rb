require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SynchronizationError
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The error code. For example, AzureDirectoryB2BManagementPolicyCheckFailure.
            @code
            ## 
            # The error message. For example, Policy permitting auto-redemption of invitations not configured.
            @message
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The action to take to resolve the error. For example, false.
            @tenant_actionable
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the additionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the code property value. The error code. For example, AzureDirectoryB2BManagementPolicyCheckFailure.
            ## @return a string
            ## 
            def code
                return @code
            end
            ## 
            ## Sets the code property value. The error code. For example, AzureDirectoryB2BManagementPolicyCheckFailure.
            ## @param value Value to set for the code property.
            ## @return a void
            ## 
            def code=(value)
                @code = value
            end
            ## 
            ## Instantiates a new synchronizationError and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a synchronization_error
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SynchronizationError.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "code" => lambda {|n| @code = n.get_string_value() },
                    "message" => lambda {|n| @message = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "tenantActionable" => lambda {|n| @tenant_actionable = n.get_boolean_value() },
                }
            end
            ## 
            ## Gets the message property value. The error message. For example, Policy permitting auto-redemption of invitations not configured.
            ## @return a string
            ## 
            def message
                return @message
            end
            ## 
            ## Sets the message property value. The error message. For example, Policy permitting auto-redemption of invitations not configured.
            ## @param value Value to set for the message property.
            ## @return a void
            ## 
            def message=(value)
                @message = value
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
                writer.write_string_value("code", @code) unless @code.nil?
                writer.write_string_value("message", @message) unless @message.nil?
                writer.write_string_value("@odata.type", @odata_type) unless @odata_type.nil?
                writer.write_boolean_value("tenantActionable", @tenant_actionable) unless @tenant_actionable.nil?
                writer.write_additional_data(@additional_data) unless @additional_data.nil?
            end
            ## 
            ## Gets the tenantActionable property value. The action to take to resolve the error. For example, false.
            ## @return a boolean
            ## 
            def tenant_actionable
                return @tenant_actionable
            end
            ## 
            ## Sets the tenantActionable property value. The action to take to resolve the error. For example, false.
            ## @param value Value to set for the tenantActionable property.
            ## @return a void
            ## 
            def tenant_actionable=(value)
                @tenant_actionable = value
            end
        end
    end
end

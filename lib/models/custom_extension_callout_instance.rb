require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class CustomExtensionCalloutInstance
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The customExtensionId property
            @custom_extension_id
            ## 
            # The detail property
            @detail
            ## 
            # The externalCorrelationId property
            @external_correlation_id
            ## 
            # The id property
            @id
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The status property
            @status
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
            ## Instantiates a new customExtensionCalloutInstance and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a custom_extension_callout_instance
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CustomExtensionCalloutInstance.new
            end
            ## 
            ## Gets the customExtensionId property value. The customExtensionId property
            ## @return a string
            ## 
            def custom_extension_id
                return @custom_extension_id
            end
            ## 
            ## Sets the customExtensionId property value. The customExtensionId property
            ## @param value Value to set for the custom_extension_id property.
            ## @return a void
            ## 
            def custom_extension_id=(value)
                @custom_extension_id = value
            end
            ## 
            ## Gets the detail property value. The detail property
            ## @return a string
            ## 
            def detail
                return @detail
            end
            ## 
            ## Sets the detail property value. The detail property
            ## @param value Value to set for the detail property.
            ## @return a void
            ## 
            def detail=(value)
                @detail = value
            end
            ## 
            ## Gets the externalCorrelationId property value. The externalCorrelationId property
            ## @return a string
            ## 
            def external_correlation_id
                return @external_correlation_id
            end
            ## 
            ## Sets the externalCorrelationId property value. The externalCorrelationId property
            ## @param value Value to set for the external_correlation_id property.
            ## @return a void
            ## 
            def external_correlation_id=(value)
                @external_correlation_id = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "customExtensionId" => lambda {|n| @custom_extension_id = n.get_string_value() },
                    "detail" => lambda {|n| @detail = n.get_string_value() },
                    "externalCorrelationId" => lambda {|n| @external_correlation_id = n.get_string_value() },
                    "id" => lambda {|n| @id = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraph::Models::CustomExtensionCalloutInstanceStatus) },
                }
            end
            ## 
            ## Gets the id property value. The id property
            ## @return a string
            ## 
            def id
                return @id
            end
            ## 
            ## Sets the id property value. The id property
            ## @param value Value to set for the id property.
            ## @return a void
            ## 
            def id=(value)
                @id = value
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
                writer.write_string_value("customExtensionId", @custom_extension_id)
                writer.write_string_value("detail", @detail)
                writer.write_string_value("externalCorrelationId", @external_correlation_id)
                writer.write_string_value("id", @id)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("status", @status)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the status property value. The status property
            ## @return a custom_extension_callout_instance_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The status property
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
        end
    end
end

require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class CloudAppSecurityState
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Destination IP Address of the connection to the cloud application/service.
            @destination_service_ip
            ## 
            # Cloud application/service name (for example 'Salesforce', 'DropBox', etc.).
            @destination_service_name
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Provider-generated/calculated risk score of the Cloud Application/Service. Recommended value range of 0-1, which equates to a percentage.
            @risk_score
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
            ## Instantiates a new cloudAppSecurityState and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a cloud_app_security_state
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CloudAppSecurityState.new
            end
            ## 
            ## Gets the destinationServiceIp property value. Destination IP Address of the connection to the cloud application/service.
            ## @return a string
            ## 
            def destination_service_ip
                return @destination_service_ip
            end
            ## 
            ## Sets the destinationServiceIp property value. Destination IP Address of the connection to the cloud application/service.
            ## @param value Value to set for the destinationServiceIp property.
            ## @return a void
            ## 
            def destination_service_ip=(value)
                @destination_service_ip = value
            end
            ## 
            ## Gets the destinationServiceName property value. Cloud application/service name (for example 'Salesforce', 'DropBox', etc.).
            ## @return a string
            ## 
            def destination_service_name
                return @destination_service_name
            end
            ## 
            ## Sets the destinationServiceName property value. Cloud application/service name (for example 'Salesforce', 'DropBox', etc.).
            ## @param value Value to set for the destinationServiceName property.
            ## @return a void
            ## 
            def destination_service_name=(value)
                @destination_service_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "destinationServiceIp" => lambda {|n| @destination_service_ip = n.get_string_value() },
                    "destinationServiceName" => lambda {|n| @destination_service_name = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "riskScore" => lambda {|n| @risk_score = n.get_string_value() },
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
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the riskScore property value. Provider-generated/calculated risk score of the Cloud Application/Service. Recommended value range of 0-1, which equates to a percentage.
            ## @return a string
            ## 
            def risk_score
                return @risk_score
            end
            ## 
            ## Sets the riskScore property value. Provider-generated/calculated risk score of the Cloud Application/Service. Recommended value range of 0-1, which equates to a percentage.
            ## @param value Value to set for the riskScore property.
            ## @return a void
            ## 
            def risk_score=(value)
                @risk_score = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("destinationServiceIp", @destination_service_ip) unless @destination_service_ip.nil?
                writer.write_string_value("destinationServiceName", @destination_service_name) unless @destination_service_name.nil?
                writer.write_string_value("@odata.type", @odata_type) unless @odata_type.nil?
                writer.write_string_value("riskScore", @risk_score) unless @risk_score.nil?
                writer.write_additional_data(@additional_data) unless @additional_data.nil?
            end
        end
    end
end

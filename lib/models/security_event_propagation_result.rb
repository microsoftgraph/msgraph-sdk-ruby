require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SecurityEventPropagationResult
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The name of the specific location in the workload associated with the event.
            @location
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The name of the workload associated with the event.
            @service_name
            ## 
            # Indicates the status of the event creation request. The possible values are: none, inProcessing, failed, success, unknownFutureValue.
            @status
            ## 
            # Additional information about the status of the event creation request.
            @status_information
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
            ## Instantiates a new securityEventPropagationResult and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_event_propagation_result
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityEventPropagationResult.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "location" => lambda {|n| @location = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "serviceName" => lambda {|n| @service_name = n.get_string_value() },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraph::Models::SecurityEventPropagationStatus) },
                    "statusInformation" => lambda {|n| @status_information = n.get_string_value() },
                }
            end
            ## 
            ## Gets the location property value. The name of the specific location in the workload associated with the event.
            ## @return a string
            ## 
            def location
                return @location
            end
            ## 
            ## Sets the location property value. The name of the specific location in the workload associated with the event.
            ## @param value Value to set for the location property.
            ## @return a void
            ## 
            def location=(value)
                @location = value
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
                writer.write_string_value("location", @location) unless @location.nil?
                writer.write_string_value("@odata.type", @odata_type) unless @odata_type.nil?
                writer.write_string_value("serviceName", @service_name) unless @service_name.nil?
                writer.write_enum_value("status", @status) unless @status.nil?
                writer.write_string_value("statusInformation", @status_information) unless @status_information.nil?
                writer.write_additional_data(@additional_data) unless @additional_data.nil?
            end
            ## 
            ## Gets the serviceName property value. The name of the workload associated with the event.
            ## @return a string
            ## 
            def service_name
                return @service_name
            end
            ## 
            ## Sets the serviceName property value. The name of the workload associated with the event.
            ## @param value Value to set for the serviceName property.
            ## @return a void
            ## 
            def service_name=(value)
                @service_name = value
            end
            ## 
            ## Gets the status property value. Indicates the status of the event creation request. The possible values are: none, inProcessing, failed, success, unknownFutureValue.
            ## @return a security_event_propagation_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. Indicates the status of the event creation request. The possible values are: none, inProcessing, failed, success, unknownFutureValue.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
            ## 
            ## Gets the statusInformation property value. Additional information about the status of the event creation request.
            ## @return a string
            ## 
            def status_information
                return @status_information
            end
            ## 
            ## Sets the statusInformation property value. Additional information about the status of the event creation request.
            ## @param value Value to set for the statusInformation property.
            ## @return a void
            ## 
            def status_information=(value)
                @status_information = value
            end
        end
    end
end

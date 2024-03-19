require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class CloudPcOnPremisesConnectionHealthCheck
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # The additionalDetail property
            @additional_detail
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The correlationId property
            @correlation_id
            ## 
            # The displayName property
            @display_name
            ## 
            # The endDateTime property
            @end_date_time
            ## 
            # The errorType property
            @error_type
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The recommendedAction property
            @recommended_action
            ## 
            # The startDateTime property
            @start_date_time
            ## 
            # The status property
            @status
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
            ## Gets the additionalDetail property value. The additionalDetail property
            ## @return a string
            ## 
            def additional_detail
                return @additional_detail
            end
            ## 
            ## Sets the additionalDetail property value. The additionalDetail property
            ## @param value Value to set for the additionalDetail property.
            ## @return a void
            ## 
            def additional_detail=(value)
                @additional_detail = value
            end
            ## 
            ## Instantiates a new CloudPcOnPremisesConnectionHealthCheck and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the correlationId property value. The correlationId property
            ## @return a string
            ## 
            def correlation_id
                return @correlation_id
            end
            ## 
            ## Sets the correlationId property value. The correlationId property
            ## @param value Value to set for the correlationId property.
            ## @return a void
            ## 
            def correlation_id=(value)
                @correlation_id = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a cloud_pc_on_premises_connection_health_check
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CloudPcOnPremisesConnectionHealthCheck.new
            end
            ## 
            ## Gets the displayName property value. The displayName property
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The displayName property
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the endDateTime property value. The endDateTime property
            ## @return a date_time
            ## 
            def end_date_time
                return @end_date_time
            end
            ## 
            ## Sets the endDateTime property value. The endDateTime property
            ## @param value Value to set for the endDateTime property.
            ## @return a void
            ## 
            def end_date_time=(value)
                @end_date_time = value
            end
            ## 
            ## Gets the errorType property value. The errorType property
            ## @return a cloud_pc_on_premises_connection_health_check_error_type
            ## 
            def error_type
                return @error_type
            end
            ## 
            ## Sets the errorType property value. The errorType property
            ## @param value Value to set for the errorType property.
            ## @return a void
            ## 
            def error_type=(value)
                @error_type = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "additionalDetail" => lambda {|n| @additional_detail = n.get_string_value() },
                    "correlationId" => lambda {|n| @correlation_id = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "endDateTime" => lambda {|n| @end_date_time = n.get_date_time_value() },
                    "errorType" => lambda {|n| @error_type = n.get_enum_value(MicrosoftGraph::Models::CloudPcOnPremisesConnectionHealthCheckErrorType) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "recommendedAction" => lambda {|n| @recommended_action = n.get_string_value() },
                    "startDateTime" => lambda {|n| @start_date_time = n.get_date_time_value() },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraph::Models::CloudPcOnPremisesConnectionStatus) },
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
            ## Gets the recommendedAction property value. The recommendedAction property
            ## @return a string
            ## 
            def recommended_action
                return @recommended_action
            end
            ## 
            ## Sets the recommendedAction property value. The recommendedAction property
            ## @param value Value to set for the recommendedAction property.
            ## @return a void
            ## 
            def recommended_action=(value)
                @recommended_action = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("additionalDetail", @additional_detail)
                writer.write_string_value("correlationId", @correlation_id)
                writer.write_string_value("displayName", @display_name)
                writer.write_date_time_value("endDateTime", @end_date_time)
                writer.write_enum_value("errorType", @error_type)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("recommendedAction", @recommended_action)
                writer.write_date_time_value("startDateTime", @start_date_time)
                writer.write_enum_value("status", @status)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the startDateTime property value. The startDateTime property
            ## @return a date_time
            ## 
            def start_date_time
                return @start_date_time
            end
            ## 
            ## Sets the startDateTime property value. The startDateTime property
            ## @param value Value to set for the startDateTime property.
            ## @return a void
            ## 
            def start_date_time=(value)
                @start_date_time = value
            end
            ## 
            ## Gets the status property value. The status property
            ## @return a cloud_pc_on_premises_connection_status
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

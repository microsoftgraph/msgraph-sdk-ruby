require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class DomainState
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Timestamp for when the last activity occurred. The value is updated when an operation is scheduled, the asynchronous task starts, and when the operation completes.
            @last_action_date_time
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Type of asynchronous operation. The values can be ForceDelete or Verification
            @operation
            ## 
            # Current status of the operation.  Scheduled - Operation has been scheduled but has not started.  InProgress - Task has started and is in progress.  Failed - Operation has failed.
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
            ## Instantiates a new domainState and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a domain_state
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DomainState.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "lastActionDateTime" => lambda {|n| @last_action_date_time = n.get_date_time_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "operation" => lambda {|n| @operation = n.get_string_value() },
                    "status" => lambda {|n| @status = n.get_string_value() },
                }
            end
            ## 
            ## Gets the lastActionDateTime property value. Timestamp for when the last activity occurred. The value is updated when an operation is scheduled, the asynchronous task starts, and when the operation completes.
            ## @return a date_time
            ## 
            def last_action_date_time
                return @last_action_date_time
            end
            ## 
            ## Sets the lastActionDateTime property value. Timestamp for when the last activity occurred. The value is updated when an operation is scheduled, the asynchronous task starts, and when the operation completes.
            ## @param value Value to set for the last_action_date_time property.
            ## @return a void
            ## 
            def last_action_date_time=(value)
                @last_action_date_time = value
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
            ## Gets the operation property value. Type of asynchronous operation. The values can be ForceDelete or Verification
            ## @return a string
            ## 
            def operation
                return @operation
            end
            ## 
            ## Sets the operation property value. Type of asynchronous operation. The values can be ForceDelete or Verification
            ## @param value Value to set for the operation property.
            ## @return a void
            ## 
            def operation=(value)
                @operation = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_date_time_value("lastActionDateTime", @last_action_date_time)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("operation", @operation)
                writer.write_string_value("status", @status)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the status property value. Current status of the operation.  Scheduled - Operation has been scheduled but has not started.  InProgress - Task has started and is in progress.  Failed - Operation has failed.
            ## @return a string
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. Current status of the operation.  Scheduled - Operation has been scheduled but has not started.  InProgress - Task has started and is in progress.  Failed - Operation has failed.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
        end
    end
end

require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # Device action result
        class DeviceActionResult
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Action name
            @action_name
            ## 
            # State of the action on the device
            @action_state
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Time the action state was last updated
            @last_updated_date_time
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Time the action was initiated
            @start_date_time
            ## 
            ## Gets the actionName property value. Action name
            ## @return a string
            ## 
            def action_name
                return @action_name
            end
            ## 
            ## Sets the actionName property value. Action name
            ## @param value Value to set for the action_name property.
            ## @return a void
            ## 
            def action_name=(value)
                @action_name = value
            end
            ## 
            ## Gets the actionState property value. State of the action on the device
            ## @return a action_state
            ## 
            def action_state
                return @action_state
            end
            ## 
            ## Sets the actionState property value. State of the action on the device
            ## @param value Value to set for the action_state property.
            ## @return a void
            ## 
            def action_state=(value)
                @action_state = value
            end
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
            ## Instantiates a new deviceActionResult and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a device_action_result
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.deleteUserFromSharedAppleDeviceActionResult"
                            return DeleteUserFromSharedAppleDeviceActionResult.new
                        when "#microsoft.graph.locateDeviceActionResult"
                            return LocateDeviceActionResult.new
                        when "#microsoft.graph.remoteLockActionResult"
                            return RemoteLockActionResult.new
                        when "#microsoft.graph.resetPasscodeActionResult"
                            return ResetPasscodeActionResult.new
                        when "#microsoft.graph.windowsDefenderScanActionResult"
                            return WindowsDefenderScanActionResult.new
                    end
                end
                return DeviceActionResult.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "actionName" => lambda {|n| @action_name = n.get_string_value() },
                    "actionState" => lambda {|n| @action_state = n.get_enum_value(MicrosoftGraph::Models::ActionState) },
                    "lastUpdatedDateTime" => lambda {|n| @last_updated_date_time = n.get_date_time_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "startDateTime" => lambda {|n| @start_date_time = n.get_date_time_value() },
                }
            end
            ## 
            ## Gets the lastUpdatedDateTime property value. Time the action state was last updated
            ## @return a date_time
            ## 
            def last_updated_date_time
                return @last_updated_date_time
            end
            ## 
            ## Sets the lastUpdatedDateTime property value. Time the action state was last updated
            ## @param value Value to set for the last_updated_date_time property.
            ## @return a void
            ## 
            def last_updated_date_time=(value)
                @last_updated_date_time = value
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
                writer.write_string_value("actionName", @action_name)
                writer.write_enum_value("actionState", @action_state)
                writer.write_date_time_value("lastUpdatedDateTime", @last_updated_date_time)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_date_time_value("startDateTime", @start_date_time)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the startDateTime property value. Time the action was initiated
            ## @return a date_time
            ## 
            def start_date_time
                return @start_date_time
            end
            ## 
            ## Sets the startDateTime property value. Time the action was initiated
            ## @param value Value to set for the start_date_time property.
            ## @return a void
            ## 
            def start_date_time=(value)
                @start_date_time = value
            end
        end
    end
end

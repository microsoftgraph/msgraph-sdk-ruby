require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # RotateBitLockerKeys device action result
        class RotateBitLockerKeysDeviceActionResult < MicrosoftGraph::Models::DeviceActionResult
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # RotateBitLockerKeys action error code
            @error_code
            ## 
            ## Instantiates a new rotateBitLockerKeysDeviceActionResult and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a rotate_bit_locker_keys_device_action_result
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return RotateBitLockerKeysDeviceActionResult.new
            end
            ## 
            ## Gets the errorCode property value. RotateBitLockerKeys action error code
            ## @return a integer
            ## 
            def error_code
                return @error_code
            end
            ## 
            ## Sets the errorCode property value. RotateBitLockerKeys action error code
            ## @param value Value to set for the errorCode property.
            ## @return a void
            ## 
            def error_code=(value)
                @error_code = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "errorCode" => lambda {|n| @error_code = n.get_number_value() },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_number_value("errorCode", @error_code)
            end
        end
    end
end

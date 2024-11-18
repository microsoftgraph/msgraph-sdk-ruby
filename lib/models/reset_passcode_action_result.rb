require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # Reset passcode action result
        class ResetPasscodeActionResult < MicrosoftGraph::Models::DeviceActionResult
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # RotateBitLockerKeys action error code. Valid values 0 to 2147483647
            @error_code
            ## 
            # Newly generated passcode for the device
            @passcode
            ## 
            ## Instantiates a new ResetPasscodeActionResult and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a reset_passcode_action_result
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ResetPasscodeActionResult.new
            end
            ## 
            ## Gets the errorCode property value. RotateBitLockerKeys action error code. Valid values 0 to 2147483647
            ## @return a integer
            ## 
            def error_code
                return @error_code
            end
            ## 
            ## Sets the errorCode property value. RotateBitLockerKeys action error code. Valid values 0 to 2147483647
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
                    "passcode" => lambda {|n| @passcode = n.get_string_value() },
                })
            end
            ## 
            ## Gets the passcode property value. Newly generated passcode for the device
            ## @return a string
            ## 
            def passcode
                return @passcode
            end
            ## 
            ## Sets the passcode property value. Newly generated passcode for the device
            ## @param value Value to set for the passcode property.
            ## @return a void
            ## 
            def passcode=(value)
                @passcode = value
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
                writer.write_string_value("passcode", @passcode)
            end
        end
    end
end

require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class RemoteLockActionResult < MicrosoftGraph::Models::DeviceActionResult
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Pin to unlock the client
            @unlock_pin
            ## 
            ## Instantiates a new RemoteLockActionResult and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a remote_lock_action_result
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return RemoteLockActionResult.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "unlockPin" => lambda {|n| @unlock_pin = n.get_string_value() },
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
                writer.write_string_value("unlockPin", @unlock_pin)
            end
            ## 
            ## Gets the unlockPin property value. Pin to unlock the client
            ## @return a string
            ## 
            def unlock_pin
                return @unlock_pin
            end
            ## 
            ## Sets the unlockPin property value. Pin to unlock the client
            ## @param value Value to set for the unlock_pin property.
            ## @return a void
            ## 
            def unlock_pin=(value)
                @unlock_pin = value
            end
        end
    end
end

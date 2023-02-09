require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Bitlocker < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The recovery keys associated with the bitlocker entity.
            @recovery_keys
            ## 
            ## Instantiates a new Bitlocker and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a bitlocker
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Bitlocker.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "recoveryKeys" => lambda {|n| @recovery_keys = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::BitlockerRecoveryKey.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the recoveryKeys property value. The recovery keys associated with the bitlocker entity.
            ## @return a bitlocker_recovery_key
            ## 
            def recovery_keys
                return @recovery_keys
            end
            ## 
            ## Sets the recoveryKeys property value. The recovery keys associated with the bitlocker entity.
            ## @param value Value to set for the recovery_keys property.
            ## @return a void
            ## 
            def recovery_keys=(value)
                @recovery_keys = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("recoveryKeys", @recovery_keys)
            end
        end
    end
end

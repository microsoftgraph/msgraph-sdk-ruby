require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Initiator < MicrosoftGraph::Models::Identity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Type of initiator. Possible values are: user, application, system, unknownFutureValue.
            @initiator_type
            ## 
            ## Instantiates a new Initiator and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.initiator"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a initiator
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Initiator.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "initiatorType" => lambda {|n| @initiator_type = n.get_enum_value(MicrosoftGraph::Models::InitiatorType) },
                })
            end
            ## 
            ## Gets the initiatorType property value. Type of initiator. Possible values are: user, application, system, unknownFutureValue.
            ## @return a initiator_type
            ## 
            def initiator_type
                return @initiator_type
            end
            ## 
            ## Sets the initiatorType property value. Type of initiator. Possible values are: user, application, system, unknownFutureValue.
            ## @param value Value to set for the initiator_type property.
            ## @return a void
            ## 
            def initiator_type=(value)
                @initiator_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("initiatorType", @initiator_type)
            end
        end
    end
end

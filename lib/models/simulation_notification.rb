require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SimulationNotification < MicrosoftGraph::Models::BaseEndUserNotification
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Target user type. Possible values are: unknown, clicked, compromised, allUsers, unknownFutureValue.
            @targetted_user_type
            ## 
            ## Instantiates a new SimulationNotification and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.simulationNotification"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a simulation_notification
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SimulationNotification.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "targettedUserType" => lambda {|n| @targetted_user_type = n.get_enum_value(MicrosoftGraph::Models::TargettedUserType) },
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
                writer.write_enum_value("targettedUserType", @targetted_user_type)
            end
            ## 
            ## Gets the targettedUserType property value. Target user type. Possible values are: unknown, clicked, compromised, allUsers, unknownFutureValue.
            ## @return a targetted_user_type
            ## 
            def targetted_user_type
                return @targetted_user_type
            end
            ## 
            ## Sets the targettedUserType property value. Target user type. Possible values are: unknown, clicked, compromised, allUsers, unknownFutureValue.
            ## @param value Value to set for the targettedUserType property.
            ## @return a void
            ## 
            def targetted_user_type=(value)
                @targetted_user_type = value
            end
        end
    end
end

require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class EmergencyCallEvent < MicrosoftGraph::Models::CallEvent
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The callerInfo property
            @caller_info
            ## 
            # The emergencyNumberDialed property
            @emergency_number_dialed
            ## 
            # The policyName property
            @policy_name
            ## 
            ## Gets the callerInfo property value. The callerInfo property
            ## @return a emergency_caller_info
            ## 
            def caller_info
                return @caller_info
            end
            ## 
            ## Sets the callerInfo property value. The callerInfo property
            ## @param value Value to set for the callerInfo property.
            ## @return a void
            ## 
            def caller_info=(value)
                @caller_info = value
            end
            ## 
            ## Instantiates a new EmergencyCallEvent and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a emergency_call_event
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EmergencyCallEvent.new
            end
            ## 
            ## Gets the emergencyNumberDialed property value. The emergencyNumberDialed property
            ## @return a string
            ## 
            def emergency_number_dialed
                return @emergency_number_dialed
            end
            ## 
            ## Sets the emergencyNumberDialed property value. The emergencyNumberDialed property
            ## @param value Value to set for the emergencyNumberDialed property.
            ## @return a void
            ## 
            def emergency_number_dialed=(value)
                @emergency_number_dialed = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "callerInfo" => lambda {|n| @caller_info = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::EmergencyCallerInfo.create_from_discriminator_value(pn) }) },
                    "emergencyNumberDialed" => lambda {|n| @emergency_number_dialed = n.get_string_value() },
                    "policyName" => lambda {|n| @policy_name = n.get_string_value() },
                })
            end
            ## 
            ## Gets the policyName property value. The policyName property
            ## @return a string
            ## 
            def policy_name
                return @policy_name
            end
            ## 
            ## Sets the policyName property value. The policyName property
            ## @param value Value to set for the policyName property.
            ## @return a void
            ## 
            def policy_name=(value)
                @policy_name = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("callerInfo", @caller_info)
                writer.write_string_value("emergencyNumberDialed", @emergency_number_dialed)
                writer.write_string_value("policyName", @policy_name)
            end
        end
    end
end

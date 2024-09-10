require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class UserSolutionRoot < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The workingTimeSchedule property
            @working_time_schedule
            ## 
            ## Instantiates a new UserSolutionRoot and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a user_solution_root
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserSolutionRoot.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "workingTimeSchedule" => lambda {|n| @working_time_schedule = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::WorkingTimeSchedule.create_from_discriminator_value(pn) }) },
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
                writer.write_object_value("workingTimeSchedule", @working_time_schedule)
            end
            ## 
            ## Gets the workingTimeSchedule property value. The workingTimeSchedule property
            ## @return a working_time_schedule
            ## 
            def working_time_schedule
                return @working_time_schedule
            end
            ## 
            ## Sets the workingTimeSchedule property value. The workingTimeSchedule property
            ## @param value Value to set for the workingTimeSchedule property.
            ## @return a void
            ## 
            def working_time_schedule=(value)
                @working_time_schedule = value
            end
        end
    end
end

require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class TimeOff < MicrosoftGraph::Models::ChangeTrackedEntity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The draft version of this timeOff that is viewable by managers. Required.
            @draft_time_off
            ## 
            # The shared version of this timeOff that is viewable by both employees and managers. Required.
            @shared_time_off
            ## 
            # ID of the user assigned to the timeOff. Required.
            @user_id
            ## 
            ## Instantiates a new TimeOff and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.timeOff"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a time_off
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TimeOff.new
            end
            ## 
            ## Gets the draftTimeOff property value. The draft version of this timeOff that is viewable by managers. Required.
            ## @return a time_off_item
            ## 
            def draft_time_off
                return @draft_time_off
            end
            ## 
            ## Sets the draftTimeOff property value. The draft version of this timeOff that is viewable by managers. Required.
            ## @param value Value to set for the draft_time_off property.
            ## @return a void
            ## 
            def draft_time_off=(value)
                @draft_time_off = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "draftTimeOff" => lambda {|n| @draft_time_off = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::TimeOffItem.create_from_discriminator_value(pn) }) },
                    "sharedTimeOff" => lambda {|n| @shared_time_off = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::TimeOffItem.create_from_discriminator_value(pn) }) },
                    "userId" => lambda {|n| @user_id = n.get_string_value() },
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
                writer.write_object_value("draftTimeOff", @draft_time_off)
                writer.write_object_value("sharedTimeOff", @shared_time_off)
                writer.write_string_value("userId", @user_id)
            end
            ## 
            ## Gets the sharedTimeOff property value. The shared version of this timeOff that is viewable by both employees and managers. Required.
            ## @return a time_off_item
            ## 
            def shared_time_off
                return @shared_time_off
            end
            ## 
            ## Sets the sharedTimeOff property value. The shared version of this timeOff that is viewable by both employees and managers. Required.
            ## @param value Value to set for the shared_time_off property.
            ## @return a void
            ## 
            def shared_time_off=(value)
                @shared_time_off = value
            end
            ## 
            ## Gets the userId property value. ID of the user assigned to the timeOff. Required.
            ## @return a string
            ## 
            def user_id
                return @user_id
            end
            ## 
            ## Sets the userId property value. ID of the user assigned to the timeOff. Required.
            ## @param value Value to set for the user_id property.
            ## @return a void
            ## 
            def user_id=(value)
                @user_id = value
            end
        end
    end
end

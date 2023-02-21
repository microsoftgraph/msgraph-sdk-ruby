require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AnonymousGuestConversationMember < MicrosoftGraph::Models::ConversationMember
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Unique ID that represents the user. Note: This ID can change if the user leaves and rejoins the meeting, or joins from a different device.
            @anonymous_guest_id
            ## 
            ## Gets the anonymousGuestId property value. Unique ID that represents the user. Note: This ID can change if the user leaves and rejoins the meeting, or joins from a different device.
            ## @return a string
            ## 
            def anonymous_guest_id
                return @anonymous_guest_id
            end
            ## 
            ## Sets the anonymousGuestId property value. Unique ID that represents the user. Note: This ID can change if the user leaves and rejoins the meeting, or joins from a different device.
            ## @param value Value to set for the anonymous_guest_id property.
            ## @return a void
            ## 
            def anonymous_guest_id=(value)
                @anonymous_guest_id = value
            end
            ## 
            ## Instantiates a new AnonymousGuestConversationMember and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.anonymousGuestConversationMember"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a anonymous_guest_conversation_member
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AnonymousGuestConversationMember.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "anonymousGuestId" => lambda {|n| @anonymous_guest_id = n.get_string_value() },
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
                writer.write_string_value("anonymousGuestId", @anonymous_guest_id)
            end
        end
    end
end

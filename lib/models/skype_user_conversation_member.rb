require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SkypeUserConversationMember < MicrosoftGraph::Models::ConversationMember
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Skype ID of the user.
            @skype_id
            ## 
            ## Instantiates a new SkypeUserConversationMember and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.skypeUserConversationMember"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a skype_user_conversation_member
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SkypeUserConversationMember.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "skypeId" => lambda {|n| @skype_id = n.get_string_value() },
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
                writer.write_string_value("skypeId", @skype_id)
            end
            ## 
            ## Gets the skypeId property value. Skype ID of the user.
            ## @return a string
            ## 
            def skype_id
                return @skype_id
            end
            ## 
            ## Sets the skypeId property value. Skype ID of the user.
            ## @param value Value to set for the skype_id property.
            ## @return a void
            ## 
            def skype_id=(value)
                @skype_id = value
            end
        end
    end
end

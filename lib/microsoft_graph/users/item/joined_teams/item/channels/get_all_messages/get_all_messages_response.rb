require 'microsoft_kiota_abstractions'
require_relative '../../../../../../models/base_collection_pagination_count_response'
require_relative '../../../../../../models/chat_message'
require_relative '../../../../../users'
require_relative '../../../../item'
require_relative '../../../joined_teams'
require_relative '../../item'
require_relative '../channels'
require_relative './get_all_messages'

module MicrosoftGraph::Users::Item::JoinedTeams::Item::Channels::GetAllMessages
    ## 
    # Provides operations to call the getAllMessages method.
    class GetAllMessagesResponse < MicrosoftGraph::Models::BaseCollectionPaginationCountResponse
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The value property
        @value
        ## 
        ## Instantiates a new getAllMessagesResponse and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a get_all_messages_response
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return GetAllMessagesResponse.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "value" => lambda {|n| @value = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ChatMessage.create_from_discriminator_value(pn) }) },
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
            writer.write_collection_of_object_values("value", @value)
        end
        ## 
        ## Gets the value property value. The value property
        ## @return a chat_message
        ## 
        def value
            return @value
        end
        ## 
        ## Sets the value property value. The value property
        ## @param value Value to set for the value property.
        ## @return a void
        ## 
        def value=(value)
            @value = value
        end
    end
end
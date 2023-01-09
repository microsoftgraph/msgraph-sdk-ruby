require 'microsoft_kiota_abstractions'
require_relative '../../../../../../models/conversation_member'
require_relative '../../../../../users'
require_relative '../../../../item'
require_relative '../../../joined_teams'
require_relative '../../item'
require_relative '../members'
require_relative './add'

module MicrosoftGraph::Users::Item::JoinedTeams::Item::Members::Add
    class AddPostRequestBody
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The values property
        @values
        ## 
        ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        ## @return a i_dictionary
        ## 
        def additional_data
            return @additional_data
        end
        ## 
        ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        ## @param value Value to set for the AdditionalData property.
        ## @return a void
        ## 
        def additional_data=(value)
            @additional_data = value
        end
        ## 
        ## Instantiates a new addPostRequestBody and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a add_post_request_body
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return AddPostRequestBody.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "values" => lambda {|n| @values = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ConversationMember.create_from_discriminator_value(pn) }) },
            }
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_collection_of_object_values("values", @values)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the values property value. The values property
        ## @return a conversation_member
        ## 
        def values
            return @values
        end
        ## 
        ## Sets the values property value. The values property
        ## @param value Value to set for the values property.
        ## @return a void
        ## 
        def values=(value)
            @values = value
        end
    end
end

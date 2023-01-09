require 'microsoft_kiota_abstractions'
require_relative '../../group_lifecycle_policies'
require_relative '../item'
require_relative './add_group'

module MicrosoftGraph::GroupLifecyclePolicies::Item::AddGroup
    class AddGroupPostRequestBody
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The groupId property
        @group_id
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
        ## Instantiates a new addGroupPostRequestBody and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a add_group_post_request_body
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return AddGroupPostRequestBody.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "groupId" => lambda {|n| @group_id = n.get_string_value() },
            }
        end
        ## 
        ## Gets the groupId property value. The groupId property
        ## @return a string
        ## 
        def group_id
            return @group_id
        end
        ## 
        ## Sets the groupId property value. The groupId property
        ## @param value Value to set for the groupId property.
        ## @return a void
        ## 
        def group_id=(value)
            @group_id = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_string_value("groupId", @group_id)
            writer.write_additional_data(@additional_data)
        end
    end
end

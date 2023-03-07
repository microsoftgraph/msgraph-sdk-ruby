require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph'
require_relative '../../directory_objects'
require_relative '../item'
require_relative './check_member_groups'

module MicrosoftGraph
    module DirectoryObjects
        module Item
            module CheckMemberGroups
                class CheckMemberGroupsPostRequestBody
                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                    @additional_data
                    ## 
                    # The groupIds property
                    @group_ids
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
                    ## Instantiates a new checkMemberGroupsPostRequestBody and sets the default values.
                    ## @return a void
                    ## 
                    def initialize()
                        @additional_data = Hash.new
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parseNode The parse node to use to read the discriminator value and create the object
                    ## @return a check_member_groups_post_request_body
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return CheckMemberGroupsPostRequestBody.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "groupIds" => lambda {|n| @group_ids = n.get_collection_of_primitive_values(String) },
                        }
                    end
                    ## 
                    ## Gets the groupIds property value. The groupIds property
                    ## @return a string
                    ## 
                    def group_ids
                        return @group_ids
                    end
                    ## 
                    ## Sets the groupIds property value. The groupIds property
                    ## @param value Value to set for the group_ids property.
                    ## @return a void
                    ## 
                    def group_ids=(value)
                        @group_ids = value
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_collection_of_primitive_values("groupIds", @group_ids)
                        writer.write_additional_data(@additional_data)
                    end
                end
            end
        end
    end
end

require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph'
require_relative '../../../groups'
require_relative '../../item'
require_relative '../permission_grants'
require_relative './validate_properties'

module MicrosoftGraph
    module Groups
        module Item
            module PermissionGrants
                module ValidateProperties
                    class ValidatePropertiesPostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # The displayName property
                        @display_name
                        ## 
                        # The entityType property
                        @entity_type
                        ## 
                        # The mailNickname property
                        @mail_nickname
                        ## 
                        # The onBehalfOfUserId property
                        @on_behalf_of_user_id
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
                        ## Instantiates a new validatePropertiesPostRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parseNode The parse node to use to read the discriminator value and create the object
                        ## @return a validate_properties_post_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return ValidatePropertiesPostRequestBody.new
                        end
                        ## 
                        ## Gets the displayName property value. The displayName property
                        ## @return a string
                        ## 
                        def display_name
                            return @display_name
                        end
                        ## 
                        ## Sets the displayName property value. The displayName property
                        ## @param value Value to set for the display_name property.
                        ## @return a void
                        ## 
                        def display_name=(value)
                            @display_name = value
                        end
                        ## 
                        ## Gets the entityType property value. The entityType property
                        ## @return a string
                        ## 
                        def entity_type
                            return @entity_type
                        end
                        ## 
                        ## Sets the entityType property value. The entityType property
                        ## @param value Value to set for the entity_type property.
                        ## @return a void
                        ## 
                        def entity_type=(value)
                            @entity_type = value
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "displayName" => lambda {|n| @display_name = n.get_string_value() },
                                "entityType" => lambda {|n| @entity_type = n.get_string_value() },
                                "mailNickname" => lambda {|n| @mail_nickname = n.get_string_value() },
                                "onBehalfOfUserId" => lambda {|n| @on_behalf_of_user_id = n.get_guid_value() },
                            }
                        end
                        ## 
                        ## Gets the mailNickname property value. The mailNickname property
                        ## @return a string
                        ## 
                        def mail_nickname
                            return @mail_nickname
                        end
                        ## 
                        ## Sets the mailNickname property value. The mailNickname property
                        ## @param value Value to set for the mail_nickname property.
                        ## @return a void
                        ## 
                        def mail_nickname=(value)
                            @mail_nickname = value
                        end
                        ## 
                        ## Gets the onBehalfOfUserId property value. The onBehalfOfUserId property
                        ## @return a guid
                        ## 
                        def on_behalf_of_user_id
                            return @on_behalf_of_user_id
                        end
                        ## 
                        ## Sets the onBehalfOfUserId property value. The onBehalfOfUserId property
                        ## @param value Value to set for the on_behalf_of_user_id property.
                        ## @return a void
                        ## 
                        def on_behalf_of_user_id=(value)
                            @on_behalf_of_user_id = value
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_string_value("displayName", @display_name)
                            writer.write_string_value("entityType", @entity_type)
                            writer.write_string_value("mailNickname", @mail_nickname)
                            writer.write_guid_value("onBehalfOfUserId", @on_behalf_of_user_id)
                            writer.write_additional_data(@additional_data)
                        end
                    end
                end
            end
        end
    end
end

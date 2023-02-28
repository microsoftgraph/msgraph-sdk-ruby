require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph'
require_relative '../../permission_grants'
require_relative '../item'
require_relative './get_member_groups'

module MicrosoftGraph
    module PermissionGrants
        module Item
            module GetMemberGroups
                class GetMemberGroupsPostRequestBody
                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                    @additional_data
                    ## 
                    # The securityEnabledOnly property
                    @security_enabled_only
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
                    ## Instantiates a new getMemberGroupsPostRequestBody and sets the default values.
                    ## @return a void
                    ## 
                    def initialize()
                        @additional_data = Hash.new
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parseNode The parse node to use to read the discriminator value and create the object
                    ## @return a get_member_groups_post_request_body
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return GetMemberGroupsPostRequestBody.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "securityEnabledOnly" => lambda {|n| @security_enabled_only = n.get_boolean_value() },
                        }
                    end
                    ## 
                    ## Gets the securityEnabledOnly property value. The securityEnabledOnly property
                    ## @return a boolean
                    ## 
                    def security_enabled_only
                        return @security_enabled_only
                    end
                    ## 
                    ## Sets the securityEnabledOnly property value. The securityEnabledOnly property
                    ## @param value Value to set for the security_enabled_only property.
                    ## @return a void
                    ## 
                    def security_enabled_only=(value)
                        @security_enabled_only = value
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_boolean_value("securityEnabledOnly", @security_enabled_only)
                        writer.write_additional_data(@additional_data)
                    end
                end
            end
        end
    end
end

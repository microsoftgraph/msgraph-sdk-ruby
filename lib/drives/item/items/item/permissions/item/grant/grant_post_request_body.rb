require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph'
require_relative '../../../../../../../models/drive_recipient'
require_relative '../../../../../../drives'
require_relative '../../../../../item'
require_relative '../../../../items'
require_relative '../../../item'
require_relative '../../permissions'
require_relative '../item'
require_relative './grant'

module MicrosoftGraph
    module Drives
        module Item
            module Items
                module Item
                    module Permissions
                        module Item
                            module Grant
                                class GrantPostRequestBody
                                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                    ## 
                                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                    @additional_data
                                    ## 
                                    # The recipients property
                                    @recipients
                                    ## 
                                    # The roles property
                                    @roles
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
                                    ## Instantiates a new grantPostRequestBody and sets the default values.
                                    ## @return a void
                                    ## 
                                    def initialize()
                                        @additional_data = Hash.new
                                    end
                                    ## 
                                    ## Creates a new instance of the appropriate class based on discriminator value
                                    ## @param parseNode The parse node to use to read the discriminator value and create the object
                                    ## @return a grant_post_request_body
                                    ## 
                                    def self.create_from_discriminator_value(parse_node)
                                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                        return GrantPostRequestBody.new
                                    end
                                    ## 
                                    ## The deserialization information for the current model
                                    ## @return a i_dictionary
                                    ## 
                                    def get_field_deserializers()
                                        return {
                                            "recipients" => lambda {|n| @recipients = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DriveRecipient.create_from_discriminator_value(pn) }) },
                                            "roles" => lambda {|n| @roles = n.get_collection_of_primitive_values(String) },
                                        }
                                    end
                                    ## 
                                    ## Gets the recipients property value. The recipients property
                                    ## @return a drive_recipient
                                    ## 
                                    def recipients
                                        return @recipients
                                    end
                                    ## 
                                    ## Sets the recipients property value. The recipients property
                                    ## @param value Value to set for the recipients property.
                                    ## @return a void
                                    ## 
                                    def recipients=(value)
                                        @recipients = value
                                    end
                                    ## 
                                    ## Gets the roles property value. The roles property
                                    ## @return a string
                                    ## 
                                    def roles
                                        return @roles
                                    end
                                    ## 
                                    ## Sets the roles property value. The roles property
                                    ## @param value Value to set for the roles property.
                                    ## @return a void
                                    ## 
                                    def roles=(value)
                                        @roles = value
                                    end
                                    ## 
                                    ## Serializes information the current object
                                    ## @param writer Serialization writer to use to serialize this model
                                    ## @return a void
                                    ## 
                                    def serialize(writer)
                                        raise StandardError, 'writer cannot be null' if writer.nil?
                                        writer.write_collection_of_object_values("recipients", @recipients)
                                        writer.write_collection_of_primitive_values("roles", @roles)
                                        writer.write_additional_data(@additional_data)
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end

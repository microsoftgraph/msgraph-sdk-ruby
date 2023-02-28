require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph'
require_relative '../../../models/mail_tips_type'
require_relative '../../users'
require_relative '../item'
require_relative './get_mail_tips'

module MicrosoftGraph
    module Users
        module Item
            module GetMailTips
                class GetMailTipsPostRequestBody
                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                    @additional_data
                    ## 
                    # The EmailAddresses property
                    @email_addresses
                    ## 
                    # The MailTipsOptions property
                    @mail_tips_options
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
                    ## Instantiates a new getMailTipsPostRequestBody and sets the default values.
                    ## @return a void
                    ## 
                    def initialize()
                        @additional_data = Hash.new
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parseNode The parse node to use to read the discriminator value and create the object
                    ## @return a get_mail_tips_post_request_body
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return GetMailTipsPostRequestBody.new
                    end
                    ## 
                    ## Gets the emailAddresses property value. The EmailAddresses property
                    ## @return a string
                    ## 
                    def email_addresses
                        return @email_addresses
                    end
                    ## 
                    ## Sets the emailAddresses property value. The EmailAddresses property
                    ## @param value Value to set for the email_addresses property.
                    ## @return a void
                    ## 
                    def email_addresses=(value)
                        @email_addresses = value
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "EmailAddresses" => lambda {|n| @email_addresses = n.get_collection_of_primitive_values(String) },
                            "MailTipsOptions" => lambda {|n| @mail_tips_options = n.get_enum_value(MicrosoftGraph::Models::MailTipsType) },
                        }
                    end
                    ## 
                    ## Gets the mailTipsOptions property value. The MailTipsOptions property
                    ## @return a mail_tips_type
                    ## 
                    def mail_tips_options
                        return @mail_tips_options
                    end
                    ## 
                    ## Sets the mailTipsOptions property value. The MailTipsOptions property
                    ## @param value Value to set for the mail_tips_options property.
                    ## @return a void
                    ## 
                    def mail_tips_options=(value)
                        @mail_tips_options = value
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_collection_of_primitive_values("EmailAddresses", @email_addresses)
                        writer.write_enum_value("MailTipsOptions", @mail_tips_options)
                        writer.write_additional_data(@additional_data)
                    end
                end
            end
        end
    end
end

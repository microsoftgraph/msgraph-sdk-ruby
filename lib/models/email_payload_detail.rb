require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class EmailPayloadDetail < MicrosoftGraph::Models::PayloadDetail
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Email address of the user.
            @from_email
            ## 
            # Display name of the user.
            @from_name
            ## 
            # Indicates whether the sender isn't from the user's organization.
            @is_external_sender
            ## 
            # The subject of the email address sent to the user.
            @subject
            ## 
            ## Instantiates a new EmailPayloadDetail and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.emailPayloadDetail"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a email_payload_detail
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EmailPayloadDetail.new
            end
            ## 
            ## Gets the fromEmail property value. Email address of the user.
            ## @return a string
            ## 
            def from_email
                return @from_email
            end
            ## 
            ## Sets the fromEmail property value. Email address of the user.
            ## @param value Value to set for the fromEmail property.
            ## @return a void
            ## 
            def from_email=(value)
                @from_email = value
            end
            ## 
            ## Gets the fromName property value. Display name of the user.
            ## @return a string
            ## 
            def from_name
                return @from_name
            end
            ## 
            ## Sets the fromName property value. Display name of the user.
            ## @param value Value to set for the fromName property.
            ## @return a void
            ## 
            def from_name=(value)
                @from_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "fromEmail" => lambda {|n| @from_email = n.get_string_value() },
                    "fromName" => lambda {|n| @from_name = n.get_string_value() },
                    "isExternalSender" => lambda {|n| @is_external_sender = n.get_boolean_value() },
                    "subject" => lambda {|n| @subject = n.get_string_value() },
                })
            end
            ## 
            ## Gets the isExternalSender property value. Indicates whether the sender isn't from the user's organization.
            ## @return a boolean
            ## 
            def is_external_sender
                return @is_external_sender
            end
            ## 
            ## Sets the isExternalSender property value. Indicates whether the sender isn't from the user's organization.
            ## @param value Value to set for the isExternalSender property.
            ## @return a void
            ## 
            def is_external_sender=(value)
                @is_external_sender = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("fromEmail", @from_email)
                writer.write_string_value("fromName", @from_name)
                writer.write_boolean_value("isExternalSender", @is_external_sender)
                writer.write_string_value("subject", @subject)
            end
            ## 
            ## Gets the subject property value. The subject of the email address sent to the user.
            ## @return a string
            ## 
            def subject
                return @subject
            end
            ## 
            ## Sets the subject property value. The subject of the email address sent to the user.
            ## @param value Value to set for the subject property.
            ## @return a void
            ## 
            def subject=(value)
                @subject = value
            end
        end
    end
end

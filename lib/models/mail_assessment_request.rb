require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class MailAssessmentRequest < MicrosoftGraph::Models::ThreatAssessmentRequest
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The reason for mail routed to its destination. Possible values are: none, mailFlowRule, safeSender, blockedSender, advancedSpamFiltering, domainAllowList, domainBlockList, notInAddressBook, firstTimeSender, autoPurgeToInbox, autoPurgeToJunk, autoPurgeToDeleted, outbound, notJunk, junk.
            @destination_routing_reason
            ## 
            # The resource URI of the mail message for assessment.
            @message_uri
            ## 
            # The mail recipient whose policies are used to assess the mail.
            @recipient_email
            ## 
            ## Instantiates a new MailAssessmentRequest and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.mailAssessmentRequest"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a mail_assessment_request
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MailAssessmentRequest.new
            end
            ## 
            ## Gets the destinationRoutingReason property value. The reason for mail routed to its destination. Possible values are: none, mailFlowRule, safeSender, blockedSender, advancedSpamFiltering, domainAllowList, domainBlockList, notInAddressBook, firstTimeSender, autoPurgeToInbox, autoPurgeToJunk, autoPurgeToDeleted, outbound, notJunk, junk.
            ## @return a mail_destination_routing_reason
            ## 
            def destination_routing_reason
                return @destination_routing_reason
            end
            ## 
            ## Sets the destinationRoutingReason property value. The reason for mail routed to its destination. Possible values are: none, mailFlowRule, safeSender, blockedSender, advancedSpamFiltering, domainAllowList, domainBlockList, notInAddressBook, firstTimeSender, autoPurgeToInbox, autoPurgeToJunk, autoPurgeToDeleted, outbound, notJunk, junk.
            ## @param value Value to set for the destination_routing_reason property.
            ## @return a void
            ## 
            def destination_routing_reason=(value)
                @destination_routing_reason = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "destinationRoutingReason" => lambda {|n| @destination_routing_reason = n.get_enum_value(MicrosoftGraph::Models::MailDestinationRoutingReason) },
                    "messageUri" => lambda {|n| @message_uri = n.get_string_value() },
                    "recipientEmail" => lambda {|n| @recipient_email = n.get_string_value() },
                })
            end
            ## 
            ## Gets the messageUri property value. The resource URI of the mail message for assessment.
            ## @return a string
            ## 
            def message_uri
                return @message_uri
            end
            ## 
            ## Sets the messageUri property value. The resource URI of the mail message for assessment.
            ## @param value Value to set for the message_uri property.
            ## @return a void
            ## 
            def message_uri=(value)
                @message_uri = value
            end
            ## 
            ## Gets the recipientEmail property value. The mail recipient whose policies are used to assess the mail.
            ## @return a string
            ## 
            def recipient_email
                return @recipient_email
            end
            ## 
            ## Sets the recipientEmail property value. The mail recipient whose policies are used to assess the mail.
            ## @param value Value to set for the recipient_email property.
            ## @return a void
            ## 
            def recipient_email=(value)
                @recipient_email = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("destinationRoutingReason", @destination_routing_reason)
                writer.write_string_value("messageUri", @message_uri)
                writer.write_string_value("recipientEmail", @recipient_email)
            end
        end
    end
end

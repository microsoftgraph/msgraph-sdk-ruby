require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SecuritySubmissionMailEvidence < MicrosoftGraph::Models::SecurityAlertEvidence
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The networkMessageId property
            @network_message_id
            ## 
            # The recipient property
            @recipient
            ## 
            # The reportType property
            @report_type
            ## 
            # The sender property
            @sender
            ## 
            # The senderIp property
            @sender_ip
            ## 
            # The subject property
            @subject
            ## 
            # The submissionDateTime property
            @submission_date_time
            ## 
            # The submissionId property
            @submission_id
            ## 
            # The submitter property
            @submitter
            ## 
            ## Instantiates a new securitySubmissionMailEvidence and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.security.submissionMailEvidence"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_submission_mail_evidence
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecuritySubmissionMailEvidence.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "networkMessageId" => lambda {|n| @network_message_id = n.get_string_value() },
                    "recipient" => lambda {|n| @recipient = n.get_string_value() },
                    "reportType" => lambda {|n| @report_type = n.get_string_value() },
                    "sender" => lambda {|n| @sender = n.get_string_value() },
                    "senderIp" => lambda {|n| @sender_ip = n.get_string_value() },
                    "subject" => lambda {|n| @subject = n.get_string_value() },
                    "submissionDateTime" => lambda {|n| @submission_date_time = n.get_date_time_value() },
                    "submissionId" => lambda {|n| @submission_id = n.get_string_value() },
                    "submitter" => lambda {|n| @submitter = n.get_string_value() },
                })
            end
            ## 
            ## Gets the networkMessageId property value. The networkMessageId property
            ## @return a string
            ## 
            def network_message_id
                return @network_message_id
            end
            ## 
            ## Sets the networkMessageId property value. The networkMessageId property
            ## @param value Value to set for the networkMessageId property.
            ## @return a void
            ## 
            def network_message_id=(value)
                @network_message_id = value
            end
            ## 
            ## Gets the recipient property value. The recipient property
            ## @return a string
            ## 
            def recipient
                return @recipient
            end
            ## 
            ## Sets the recipient property value. The recipient property
            ## @param value Value to set for the recipient property.
            ## @return a void
            ## 
            def recipient=(value)
                @recipient = value
            end
            ## 
            ## Gets the reportType property value. The reportType property
            ## @return a string
            ## 
            def report_type
                return @report_type
            end
            ## 
            ## Sets the reportType property value. The reportType property
            ## @param value Value to set for the reportType property.
            ## @return a void
            ## 
            def report_type=(value)
                @report_type = value
            end
            ## 
            ## Gets the sender property value. The sender property
            ## @return a string
            ## 
            def sender
                return @sender
            end
            ## 
            ## Sets the sender property value. The sender property
            ## @param value Value to set for the sender property.
            ## @return a void
            ## 
            def sender=(value)
                @sender = value
            end
            ## 
            ## Gets the senderIp property value. The senderIp property
            ## @return a string
            ## 
            def sender_ip
                return @sender_ip
            end
            ## 
            ## Sets the senderIp property value. The senderIp property
            ## @param value Value to set for the senderIp property.
            ## @return a void
            ## 
            def sender_ip=(value)
                @sender_ip = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("networkMessageId", @network_message_id)
                writer.write_string_value("recipient", @recipient)
                writer.write_string_value("reportType", @report_type)
                writer.write_string_value("sender", @sender)
                writer.write_string_value("senderIp", @sender_ip)
                writer.write_string_value("subject", @subject)
                writer.write_date_time_value("submissionDateTime", @submission_date_time)
                writer.write_string_value("submissionId", @submission_id)
                writer.write_string_value("submitter", @submitter)
            end
            ## 
            ## Gets the subject property value. The subject property
            ## @return a string
            ## 
            def subject
                return @subject
            end
            ## 
            ## Sets the subject property value. The subject property
            ## @param value Value to set for the subject property.
            ## @return a void
            ## 
            def subject=(value)
                @subject = value
            end
            ## 
            ## Gets the submissionDateTime property value. The submissionDateTime property
            ## @return a date_time
            ## 
            def submission_date_time
                return @submission_date_time
            end
            ## 
            ## Sets the submissionDateTime property value. The submissionDateTime property
            ## @param value Value to set for the submissionDateTime property.
            ## @return a void
            ## 
            def submission_date_time=(value)
                @submission_date_time = value
            end
            ## 
            ## Gets the submissionId property value. The submissionId property
            ## @return a string
            ## 
            def submission_id
                return @submission_id
            end
            ## 
            ## Sets the submissionId property value. The submissionId property
            ## @param value Value to set for the submissionId property.
            ## @return a void
            ## 
            def submission_id=(value)
                @submission_id = value
            end
            ## 
            ## Gets the submitter property value. The submitter property
            ## @return a string
            ## 
            def submitter
                return @submitter
            end
            ## 
            ## Sets the submitter property value. The submitter property
            ## @param value Value to set for the submitter property.
            ## @return a void
            ## 
            def submitter=(value)
                @submitter = value
            end
        end
    end
end

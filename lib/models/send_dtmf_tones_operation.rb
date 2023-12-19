require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SendDtmfTonesOperation < MicrosoftGraph::Models::CommsOperation
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The completionReason property
            @completion_reason
            ## 
            ## Gets the completionReason property value. The completionReason property
            ## @return a send_dtmf_tones_operation_completion_reason
            ## 
            def completion_reason
                return @completion_reason
            end
            ## 
            ## Sets the completionReason property value. The completionReason property
            ## @param value Value to set for the completionReason property.
            ## @return a void
            ## 
            def completion_reason=(value)
                @completion_reason = value
            end
            ## 
            ## Instantiates a new sendDtmfTonesOperation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a send_dtmf_tones_operation
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SendDtmfTonesOperation.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "completionReason" => lambda {|n| @completion_reason = n.get_enum_value(MicrosoftGraph::Models::SendDtmfTonesOperationCompletionReason) },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("completionReason", @completion_reason)
            end
        end
    end
end

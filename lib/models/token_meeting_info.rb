require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class TokenMeetingInfo < MicrosoftGraph::Models::MeetingInfo
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The token used to join the call.
            @token
            ## 
            ## Instantiates a new TokenMeetingInfo and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.tokenMeetingInfo"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a token_meeting_info
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TokenMeetingInfo.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "token" => lambda {|n| @token = n.get_string_value() },
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
                writer.write_string_value("token", @token)
            end
            ## 
            ## Gets the token property value. The token used to join the call.
            ## @return a string
            ## 
            def token
                return @token
            end
            ## 
            ## Sets the token property value. The token used to join the call.
            ## @param value Value to set for the token property.
            ## @return a void
            ## 
            def token=(value)
                @token = value
            end
        end
    end
end

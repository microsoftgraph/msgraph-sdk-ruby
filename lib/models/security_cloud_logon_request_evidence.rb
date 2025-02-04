require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SecurityCloudLogonRequestEvidence < MicrosoftGraph::Models::SecurityAlertEvidence
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The unique identifier for the sign-in request.
            @request_id
            ## 
            ## Instantiates a new SecurityCloudLogonRequestEvidence and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.security.cloudLogonRequestEvidence"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_cloud_logon_request_evidence
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityCloudLogonRequestEvidence.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "requestId" => lambda {|n| @request_id = n.get_string_value() },
                })
            end
            ## 
            ## Gets the requestId property value. The unique identifier for the sign-in request.
            ## @return a string
            ## 
            def request_id
                return @request_id
            end
            ## 
            ## Sets the requestId property value. The unique identifier for the sign-in request.
            ## @param value Value to set for the requestId property.
            ## @return a void
            ## 
            def request_id=(value)
                @request_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("requestId", @request_id)
            end
        end
    end
end

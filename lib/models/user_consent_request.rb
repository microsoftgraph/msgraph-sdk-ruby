require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class UserConsentRequest < MicrosoftGraph::Models::Request
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Approval decisions associated with a request.
            @approval
            ## 
            # The user's justification for requiring access to the app. Supports $filter (eq only) and $orderby.
            @reason
            ## 
            ## Gets the approval property value. Approval decisions associated with a request.
            ## @return a approval
            ## 
            def approval
                return @approval
            end
            ## 
            ## Sets the approval property value. Approval decisions associated with a request.
            ## @param value Value to set for the approval property.
            ## @return a void
            ## 
            def approval=(value)
                @approval = value
            end
            ## 
            ## Instantiates a new UserConsentRequest and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a user_consent_request
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserConsentRequest.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "approval" => lambda {|n| @approval = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Approval.create_from_discriminator_value(pn) }) },
                    "reason" => lambda {|n| @reason = n.get_string_value() },
                })
            end
            ## 
            ## Gets the reason property value. The user's justification for requiring access to the app. Supports $filter (eq only) and $orderby.
            ## @return a string
            ## 
            def reason
                return @reason
            end
            ## 
            ## Sets the reason property value. The user's justification for requiring access to the app. Supports $filter (eq only) and $orderby.
            ## @param value Value to set for the reason property.
            ## @return a void
            ## 
            def reason=(value)
                @reason = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("approval", @approval)
                writer.write_string_value("reason", @reason)
            end
        end
    end
end

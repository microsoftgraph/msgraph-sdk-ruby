require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ContentActivity < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The contentMetadata property
            @content_metadata
            ## 
            # The scope identified from computed protection scopes.
            @scope_identifier
            ## 
            # ID of the user.
            @user_id
            ## 
            ## Instantiates a new ContentActivity and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the contentMetadata property value. The contentMetadata property
            ## @return a process_content_request
            ## 
            def content_metadata
                return @content_metadata
            end
            ## 
            ## Sets the contentMetadata property value. The contentMetadata property
            ## @param value Value to set for the contentMetadata property.
            ## @return a void
            ## 
            def content_metadata=(value)
                @content_metadata = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a content_activity
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ContentActivity.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "contentMetadata" => lambda {|n| @content_metadata = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ProcessContentRequest.create_from_discriminator_value(pn) }) },
                    "scopeIdentifier" => lambda {|n| @scope_identifier = n.get_string_value() },
                    "userId" => lambda {|n| @user_id = n.get_string_value() },
                })
            end
            ## 
            ## Gets the scopeIdentifier property value. The scope identified from computed protection scopes.
            ## @return a string
            ## 
            def scope_identifier
                return @scope_identifier
            end
            ## 
            ## Sets the scopeIdentifier property value. The scope identified from computed protection scopes.
            ## @param value Value to set for the scopeIdentifier property.
            ## @return a void
            ## 
            def scope_identifier=(value)
                @scope_identifier = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("contentMetadata", @content_metadata)
                writer.write_string_value("scopeIdentifier", @scope_identifier)
                writer.write_string_value("userId", @user_id)
            end
            ## 
            ## Gets the userId property value. ID of the user.
            ## @return a string
            ## 
            def user_id
                return @user_id
            end
            ## 
            ## Sets the userId property value. ID of the user.
            ## @param value Value to set for the userId property.
            ## @return a void
            ## 
            def user_id=(value)
                @user_id = value
            end
        end
    end
end

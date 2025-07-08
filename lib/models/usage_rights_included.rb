require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class UsageRightsIncluded < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The email of owner label rights.
            @owner_email
            ## 
            # The email of user with label user rights.
            @user_email
            ## 
            # The value property
            @value
            ## 
            ## Instantiates a new UsageRightsIncluded and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a usage_rights_included
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UsageRightsIncluded.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "ownerEmail" => lambda {|n| @owner_email = n.get_string_value() },
                    "userEmail" => lambda {|n| @user_email = n.get_string_value() },
                    "value" => lambda {|n| @value = n.get_enum_values(MicrosoftGraph::Models::UsageRights) },
                })
            end
            ## 
            ## Gets the ownerEmail property value. The email of owner label rights.
            ## @return a string
            ## 
            def owner_email
                return @owner_email
            end
            ## 
            ## Sets the ownerEmail property value. The email of owner label rights.
            ## @param value Value to set for the ownerEmail property.
            ## @return a void
            ## 
            def owner_email=(value)
                @owner_email = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("ownerEmail", @owner_email)
                writer.write_string_value("userEmail", @user_email)
                writer.write_enum_value("value", @value)
            end
            ## 
            ## Gets the userEmail property value. The email of user with label user rights.
            ## @return a string
            ## 
            def user_email
                return @user_email
            end
            ## 
            ## Sets the userEmail property value. The email of user with label user rights.
            ## @param value Value to set for the userEmail property.
            ## @return a void
            ## 
            def user_email=(value)
                @user_email = value
            end
            ## 
            ## Gets the value property value. The value property
            ## @return a usage_rights
            ## 
            def value
                return @value
            end
            ## 
            ## Sets the value property value. The value property
            ## @param value Value to set for the value property.
            ## @return a void
            ## 
            def value=(value)
                @value = value
            end
        end
    end
end

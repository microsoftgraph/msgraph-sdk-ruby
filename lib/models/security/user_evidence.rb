require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './security'

module MicrosoftGraph
    module Models
        module Security
            class UserEvidence < MicrosoftGraph::Models::Security::AlertEvidence
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The user account details.
                @user_account
                ## 
                ## Instantiates a new UserEvidence and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a user_evidence
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return UserEvidence.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "userAccount" => lambda {|n| @user_account = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Security::UserAccount.create_from_discriminator_value(pn) }) },
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
                    writer.write_object_value("userAccount", @user_account)
                end
                ## 
                ## Gets the userAccount property value. The user account details.
                ## @return a user_account
                ## 
                def user_account
                    return @user_account
                end
                ## 
                ## Sets the userAccount property value. The user account details.
                ## @param value Value to set for the user_account property.
                ## @return a void
                ## 
                def user_account=(value)
                    @user_account = value
                end
            end
        end
    end
end

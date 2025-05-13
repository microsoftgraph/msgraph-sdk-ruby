require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SecurityMailboxEvidence < MicrosoftGraph::Models::SecurityAlertEvidence
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The name associated with the mailbox.
            @display_name
            ## 
            # The primary email address of the mailbox.
            @primary_address
            ## 
            # The user principal name of the mailbox.
            @upn
            ## 
            # The user account of the mailbox.
            @user_account
            ## 
            ## Instantiates a new SecurityMailboxEvidence and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.security.mailboxEvidence"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_mailbox_evidence
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityMailboxEvidence.new
            end
            ## 
            ## Gets the displayName property value. The name associated with the mailbox.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The name associated with the mailbox.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "primaryAddress" => lambda {|n| @primary_address = n.get_string_value() },
                    "upn" => lambda {|n| @upn = n.get_string_value() },
                    "userAccount" => lambda {|n| @user_account = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecurityUserAccount.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the primaryAddress property value. The primary email address of the mailbox.
            ## @return a string
            ## 
            def primary_address
                return @primary_address
            end
            ## 
            ## Sets the primaryAddress property value. The primary email address of the mailbox.
            ## @param value Value to set for the primaryAddress property.
            ## @return a void
            ## 
            def primary_address=(value)
                @primary_address = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("primaryAddress", @primary_address)
                writer.write_string_value("upn", @upn)
                writer.write_object_value("userAccount", @user_account)
            end
            ## 
            ## Gets the upn property value. The user principal name of the mailbox.
            ## @return a string
            ## 
            def upn
                return @upn
            end
            ## 
            ## Sets the upn property value. The user principal name of the mailbox.
            ## @param value Value to set for the upn property.
            ## @return a void
            ## 
            def upn=(value)
                @upn = value
            end
            ## 
            ## Gets the userAccount property value. The user account of the mailbox.
            ## @return a security_user_account
            ## 
            def user_account
                return @user_account
            end
            ## 
            ## Sets the userAccount property value. The user account of the mailbox.
            ## @param value Value to set for the userAccount property.
            ## @return a void
            ## 
            def user_account=(value)
                @user_account = value
            end
        end
    end
end

require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AddressBookAccountTargetContent < MicrosoftGraph::Models::AccountTargetContent
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The accountTargetEmails property
            @account_target_emails
            ## 
            ## Gets the accountTargetEmails property value. The accountTargetEmails property
            ## @return a string
            ## 
            def account_target_emails
                return @account_target_emails
            end
            ## 
            ## Sets the accountTargetEmails property value. The accountTargetEmails property
            ## @param value Value to set for the accountTargetEmails property.
            ## @return a void
            ## 
            def account_target_emails=(value)
                @account_target_emails = value
            end
            ## 
            ## Instantiates a new addressBookAccountTargetContent and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.addressBookAccountTargetContent"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a address_book_account_target_content
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AddressBookAccountTargetContent.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "accountTargetEmails" => lambda {|n| @account_target_emails = n.get_collection_of_primitive_values(String) },
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
                writer.write_collection_of_primitive_values("accountTargetEmails", @account_target_emails)
            end
        end
    end
end

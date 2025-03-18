require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SubjectRightsRequestEnumeratedMailboxLocation < MicrosoftGraph::Models::SubjectRightsRequestMailboxLocation
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Collection of mailboxes that should be included in the search. Includes the user principal name (UPN) of each mailbox, for example, Monica.Thompson@contoso.com.
            @user_principal_names
            ## 
            ## Instantiates a new SubjectRightsRequestEnumeratedMailboxLocation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.subjectRightsRequestEnumeratedMailboxLocation"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a subject_rights_request_enumerated_mailbox_location
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SubjectRightsRequestEnumeratedMailboxLocation.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "userPrincipalNames" => lambda {|n| @user_principal_names = n.get_collection_of_primitive_values(String) },
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
                writer.write_collection_of_primitive_values("userPrincipalNames", @user_principal_names)
            end
            ## 
            ## Gets the userPrincipalNames property value. Collection of mailboxes that should be included in the search. Includes the user principal name (UPN) of each mailbox, for example, Monica.Thompson@contoso.com.
            ## @return a string
            ## 
            def user_principal_names
                return @user_principal_names
            end
            ## 
            ## Sets the userPrincipalNames property value. Collection of mailboxes that should be included in the search. Includes the user principal name (UPN) of each mailbox, for example, Monica.Thompson@contoso.com.
            ## @param value Value to set for the userPrincipalNames property.
            ## @return a void
            ## 
            def user_principal_names=(value)
                @user_principal_names = value
            end
        end
    end
end

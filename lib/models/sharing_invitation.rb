require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SharingInvitation
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The email address provided for the recipient of the sharing invitation. Read-only.
            @email
            ## 
            # Provides information about who sent the invitation that created this permission, if that information is available. Read-only.
            @invited_by
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The redeemedBy property
            @redeemed_by
            ## 
            # If true the recipient of the invitation needs to sign in in order to access the shared item. Read-only.
            @sign_in_required
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new sharingInvitation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a sharing_invitation
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SharingInvitation.new
            end
            ## 
            ## Gets the email property value. The email address provided for the recipient of the sharing invitation. Read-only.
            ## @return a string
            ## 
            def email
                return @email
            end
            ## 
            ## Sets the email property value. The email address provided for the recipient of the sharing invitation. Read-only.
            ## @param value Value to set for the email property.
            ## @return a void
            ## 
            def email=(value)
                @email = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "email" => lambda {|n| @email = n.get_string_value() },
                    "invitedBy" => lambda {|n| @invited_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "redeemedBy" => lambda {|n| @redeemed_by = n.get_string_value() },
                    "signInRequired" => lambda {|n| @sign_in_required = n.get_boolean_value() },
                }
            end
            ## 
            ## Gets the invitedBy property value. Provides information about who sent the invitation that created this permission, if that information is available. Read-only.
            ## @return a identity_set
            ## 
            def invited_by
                return @invited_by
            end
            ## 
            ## Sets the invitedBy property value. Provides information about who sent the invitation that created this permission, if that information is available. Read-only.
            ## @param value Value to set for the invited_by property.
            ## @return a void
            ## 
            def invited_by=(value)
                @invited_by = value
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the redeemedBy property value. The redeemedBy property
            ## @return a string
            ## 
            def redeemed_by
                return @redeemed_by
            end
            ## 
            ## Sets the redeemedBy property value. The redeemedBy property
            ## @param value Value to set for the redeemed_by property.
            ## @return a void
            ## 
            def redeemed_by=(value)
                @redeemed_by = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("email", @email)
                writer.write_object_value("invitedBy", @invited_by)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("redeemedBy", @redeemed_by)
                writer.write_boolean_value("signInRequired", @sign_in_required)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the signInRequired property value. If true the recipient of the invitation needs to sign in in order to access the shared item. Read-only.
            ## @return a boolean
            ## 
            def sign_in_required
                return @sign_in_required
            end
            ## 
            ## Sets the signInRequired property value. If true the recipient of the invitation needs to sign in in order to access the shared item. Read-only.
            ## @param value Value to set for the sign_in_required property.
            ## @return a void
            ## 
            def sign_in_required=(value)
                @sign_in_required = value
            end
        end
    end
end

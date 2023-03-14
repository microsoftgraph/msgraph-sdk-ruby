require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ConditionalAccessGuestsOrExternalUsers
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The externalTenants property
            @external_tenants
            ## 
            # The guestOrExternalUserTypes property
            @guest_or_external_user_types
            ## 
            # The OdataType property
            @odata_type
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
            ## Instantiates a new conditionalAccessGuestsOrExternalUsers and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a conditional_access_guests_or_external_users
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ConditionalAccessGuestsOrExternalUsers.new
            end
            ## 
            ## Gets the externalTenants property value. The externalTenants property
            ## @return a conditional_access_external_tenants
            ## 
            def external_tenants
                return @external_tenants
            end
            ## 
            ## Sets the externalTenants property value. The externalTenants property
            ## @param value Value to set for the external_tenants property.
            ## @return a void
            ## 
            def external_tenants=(value)
                @external_tenants = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "externalTenants" => lambda {|n| @external_tenants = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ConditionalAccessExternalTenants.create_from_discriminator_value(pn) }) },
                    "guestOrExternalUserTypes" => lambda {|n| @guest_or_external_user_types = n.get_enum_value(MicrosoftGraph::Models::ConditionalAccessGuestOrExternalUserTypes) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the guestOrExternalUserTypes property value. The guestOrExternalUserTypes property
            ## @return a conditional_access_guest_or_external_user_types
            ## 
            def guest_or_external_user_types
                return @guest_or_external_user_types
            end
            ## 
            ## Sets the guestOrExternalUserTypes property value. The guestOrExternalUserTypes property
            ## @param value Value to set for the guest_or_external_user_types property.
            ## @return a void
            ## 
            def guest_or_external_user_types=(value)
                @guest_or_external_user_types = value
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("externalTenants", @external_tenants)
                writer.write_enum_value("guestOrExternalUserTypes", @guest_or_external_user_types)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end

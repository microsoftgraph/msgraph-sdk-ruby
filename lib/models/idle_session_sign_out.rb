require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class IdleSessionSignOut
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Indicates whether the idle session sign-out policy is enabled.
            @is_enabled
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Number of seconds of inactivity after which a user is signed out.
            @sign_out_after_in_seconds
            ## 
            # Number of seconds of inactivity after which a user is notified that they'll be signed out.
            @warn_after_in_seconds
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new idleSessionSignOut and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a idle_session_sign_out
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IdleSessionSignOut.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "isEnabled" => lambda {|n| @is_enabled = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "signOutAfterInSeconds" => lambda {|n| @sign_out_after_in_seconds = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "warnAfterInSeconds" => lambda {|n| @warn_after_in_seconds = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the isEnabled property value. Indicates whether the idle session sign-out policy is enabled.
            ## @return a boolean
            ## 
            def is_enabled
                return @is_enabled
            end
            ## 
            ## Sets the isEnabled property value. Indicates whether the idle session sign-out policy is enabled.
            ## @param value Value to set for the isEnabled property.
            ## @return a void
            ## 
            def is_enabled=(value)
                @is_enabled = value
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
            ## @param value Value to set for the @odata.type property.
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
                writer.write_boolean_value("isEnabled", @is_enabled)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("signOutAfterInSeconds", @sign_out_after_in_seconds)
                writer.write_object_value("warnAfterInSeconds", @warn_after_in_seconds)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the signOutAfterInSeconds property value. Number of seconds of inactivity after which a user is signed out.
            ## @return a int64
            ## 
            def sign_out_after_in_seconds
                return @sign_out_after_in_seconds
            end
            ## 
            ## Sets the signOutAfterInSeconds property value. Number of seconds of inactivity after which a user is signed out.
            ## @param value Value to set for the signOutAfterInSeconds property.
            ## @return a void
            ## 
            def sign_out_after_in_seconds=(value)
                @sign_out_after_in_seconds = value
            end
            ## 
            ## Gets the warnAfterInSeconds property value. Number of seconds of inactivity after which a user is notified that they'll be signed out.
            ## @return a int64
            ## 
            def warn_after_in_seconds
                return @warn_after_in_seconds
            end
            ## 
            ## Sets the warnAfterInSeconds property value. Number of seconds of inactivity after which a user is notified that they'll be signed out.
            ## @param value Value to set for the warnAfterInSeconds property.
            ## @return a void
            ## 
            def warn_after_in_seconds=(value)
                @warn_after_in_seconds = value
            end
        end
    end
end

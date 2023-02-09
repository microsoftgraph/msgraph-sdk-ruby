require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Fido2AuthenticationMethod < MicrosoftGraph::Models::AuthenticationMethod
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Authenticator Attestation GUID, an identifier that indicates the type (e.g. make and model) of the authenticator.
            @aa_guid
            ## 
            # The attestation certificate(s) attached to this security key.
            @attestation_certificates
            ## 
            # The attestation level of this FIDO2 security key. Possible values are: attested, or notAttested.
            @attestation_level
            ## 
            # The timestamp when this key was registered to the user.
            @created_date_time
            ## 
            # The display name of the key as given by the user.
            @display_name
            ## 
            # The manufacturer-assigned model of the FIDO2 security key.
            @model
            ## 
            ## Gets the aaGuid property value. Authenticator Attestation GUID, an identifier that indicates the type (e.g. make and model) of the authenticator.
            ## @return a string
            ## 
            def aa_guid
                return @aa_guid
            end
            ## 
            ## Sets the aaGuid property value. Authenticator Attestation GUID, an identifier that indicates the type (e.g. make and model) of the authenticator.
            ## @param value Value to set for the aa_guid property.
            ## @return a void
            ## 
            def aa_guid=(value)
                @aa_guid = value
            end
            ## 
            ## Gets the attestationCertificates property value. The attestation certificate(s) attached to this security key.
            ## @return a string
            ## 
            def attestation_certificates
                return @attestation_certificates
            end
            ## 
            ## Sets the attestationCertificates property value. The attestation certificate(s) attached to this security key.
            ## @param value Value to set for the attestation_certificates property.
            ## @return a void
            ## 
            def attestation_certificates=(value)
                @attestation_certificates = value
            end
            ## 
            ## Gets the attestationLevel property value. The attestation level of this FIDO2 security key. Possible values are: attested, or notAttested.
            ## @return a attestation_level
            ## 
            def attestation_level
                return @attestation_level
            end
            ## 
            ## Sets the attestationLevel property value. The attestation level of this FIDO2 security key. Possible values are: attested, or notAttested.
            ## @param value Value to set for the attestation_level property.
            ## @return a void
            ## 
            def attestation_level=(value)
                @attestation_level = value
            end
            ## 
            ## Instantiates a new Fido2AuthenticationMethod and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.fido2AuthenticationMethod"
            end
            ## 
            ## Gets the createdDateTime property value. The timestamp when this key was registered to the user.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The timestamp when this key was registered to the user.
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a fido2_authentication_method
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Fido2AuthenticationMethod.new
            end
            ## 
            ## Gets the displayName property value. The display name of the key as given by the user.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name of the key as given by the user.
            ## @param value Value to set for the display_name property.
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
                    "aaGuid" => lambda {|n| @aa_guid = n.get_string_value() },
                    "attestationCertificates" => lambda {|n| @attestation_certificates = n.get_collection_of_primitive_values(String) },
                    "attestationLevel" => lambda {|n| @attestation_level = n.get_enum_value(MicrosoftGraph::Models::AttestationLevel) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "model" => lambda {|n| @model = n.get_string_value() },
                })
            end
            ## 
            ## Gets the model property value. The manufacturer-assigned model of the FIDO2 security key.
            ## @return a string
            ## 
            def model
                return @model
            end
            ## 
            ## Sets the model property value. The manufacturer-assigned model of the FIDO2 security key.
            ## @param value Value to set for the model property.
            ## @return a void
            ## 
            def model=(value)
                @model = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("aaGuid", @aa_guid)
                writer.write_collection_of_primitive_values("attestationCertificates", @attestation_certificates)
                writer.write_enum_value("attestationLevel", @attestation_level)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("model", @model)
            end
        end
    end
end

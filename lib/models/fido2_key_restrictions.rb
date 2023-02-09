require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Fido2KeyRestrictions
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # A collection of Authenticator Attestation GUIDs. AADGUIDs define key types and manufacturers.
            @aa_guids
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Enforcement type. Possible values are: allow, block.
            @enforcement_type
            ## 
            # Determines if the configured key enforcement is enabled.
            @is_enforced
            ## 
            # The OdataType property
            @odata_type
            ## 
            ## Gets the aaGuids property value. A collection of Authenticator Attestation GUIDs. AADGUIDs define key types and manufacturers.
            ## @return a string
            ## 
            def aa_guids
                return @aa_guids
            end
            ## 
            ## Sets the aaGuids property value. A collection of Authenticator Attestation GUIDs. AADGUIDs define key types and manufacturers.
            ## @param value Value to set for the aa_guids property.
            ## @return a void
            ## 
            def aa_guids=(value)
                @aa_guids = value
            end
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
            ## Instantiates a new fido2KeyRestrictions and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a fido2_key_restrictions
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Fido2KeyRestrictions.new
            end
            ## 
            ## Gets the enforcementType property value. Enforcement type. Possible values are: allow, block.
            ## @return a fido2_restriction_enforcement_type
            ## 
            def enforcement_type
                return @enforcement_type
            end
            ## 
            ## Sets the enforcementType property value. Enforcement type. Possible values are: allow, block.
            ## @param value Value to set for the enforcement_type property.
            ## @return a void
            ## 
            def enforcement_type=(value)
                @enforcement_type = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "aaGuids" => lambda {|n| @aa_guids = n.get_collection_of_primitive_values(String) },
                    "enforcementType" => lambda {|n| @enforcement_type = n.get_enum_value(MicrosoftGraph::Models::Fido2RestrictionEnforcementType) },
                    "isEnforced" => lambda {|n| @is_enforced = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the isEnforced property value. Determines if the configured key enforcement is enabled.
            ## @return a boolean
            ## 
            def is_enforced
                return @is_enforced
            end
            ## 
            ## Sets the isEnforced property value. Determines if the configured key enforcement is enabled.
            ## @param value Value to set for the is_enforced property.
            ## @return a void
            ## 
            def is_enforced=(value)
                @is_enforced = value
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
                writer.write_collection_of_primitive_values("aaGuids", @aa_guids)
                writer.write_enum_value("enforcementType", @enforcement_type)
                writer.write_boolean_value("isEnforced", @is_enforced)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end

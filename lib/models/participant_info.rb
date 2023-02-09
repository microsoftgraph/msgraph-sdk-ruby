require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ParticipantInfo
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The ISO 3166-1 Alpha-2 country code of the participant's best estimated physical location at the start of the call. Read-only.
            @country_code
            ## 
            # The type of endpoint the participant is using. Possible values are: default, skypeForBusiness, or skypeForBusinessVoipPhone. Read-only.
            @endpoint_type
            ## 
            # The identity property
            @identity
            ## 
            # The language culture string. Read-only.
            @language_id
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The participant ID of the participant. Read-only.
            @participant_id
            ## 
            # The home region of the participant. This can be a country, a continent, or a larger geographic region. This does not change based on the participant's current physical location. Read-only.
            @region
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
            ## Instantiates a new participantInfo and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the countryCode property value. The ISO 3166-1 Alpha-2 country code of the participant's best estimated physical location at the start of the call. Read-only.
            ## @return a string
            ## 
            def country_code
                return @country_code
            end
            ## 
            ## Sets the countryCode property value. The ISO 3166-1 Alpha-2 country code of the participant's best estimated physical location at the start of the call. Read-only.
            ## @param value Value to set for the country_code property.
            ## @return a void
            ## 
            def country_code=(value)
                @country_code = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a participant_info
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ParticipantInfo.new
            end
            ## 
            ## Gets the endpointType property value. The type of endpoint the participant is using. Possible values are: default, skypeForBusiness, or skypeForBusinessVoipPhone. Read-only.
            ## @return a endpoint_type
            ## 
            def endpoint_type
                return @endpoint_type
            end
            ## 
            ## Sets the endpointType property value. The type of endpoint the participant is using. Possible values are: default, skypeForBusiness, or skypeForBusinessVoipPhone. Read-only.
            ## @param value Value to set for the endpoint_type property.
            ## @return a void
            ## 
            def endpoint_type=(value)
                @endpoint_type = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "countryCode" => lambda {|n| @country_code = n.get_string_value() },
                    "endpointType" => lambda {|n| @endpoint_type = n.get_enum_value(MicrosoftGraph::Models::EndpointType) },
                    "identity" => lambda {|n| @identity = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "languageId" => lambda {|n| @language_id = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "participantId" => lambda {|n| @participant_id = n.get_string_value() },
                    "region" => lambda {|n| @region = n.get_string_value() },
                }
            end
            ## 
            ## Gets the identity property value. The identity property
            ## @return a identity_set
            ## 
            def identity
                return @identity
            end
            ## 
            ## Sets the identity property value. The identity property
            ## @param value Value to set for the identity property.
            ## @return a void
            ## 
            def identity=(value)
                @identity = value
            end
            ## 
            ## Gets the languageId property value. The language culture string. Read-only.
            ## @return a string
            ## 
            def language_id
                return @language_id
            end
            ## 
            ## Sets the languageId property value. The language culture string. Read-only.
            ## @param value Value to set for the language_id property.
            ## @return a void
            ## 
            def language_id=(value)
                @language_id = value
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
            ## Gets the participantId property value. The participant ID of the participant. Read-only.
            ## @return a string
            ## 
            def participant_id
                return @participant_id
            end
            ## 
            ## Sets the participantId property value. The participant ID of the participant. Read-only.
            ## @param value Value to set for the participant_id property.
            ## @return a void
            ## 
            def participant_id=(value)
                @participant_id = value
            end
            ## 
            ## Gets the region property value. The home region of the participant. This can be a country, a continent, or a larger geographic region. This does not change based on the participant's current physical location. Read-only.
            ## @return a string
            ## 
            def region
                return @region
            end
            ## 
            ## Sets the region property value. The home region of the participant. This can be a country, a continent, or a larger geographic region. This does not change based on the participant's current physical location. Read-only.
            ## @param value Value to set for the region property.
            ## @return a void
            ## 
            def region=(value)
                @region = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("countryCode", @country_code)
                writer.write_enum_value("endpointType", @endpoint_type)
                writer.write_object_value("identity", @identity)
                writer.write_string_value("languageId", @language_id)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("participantId", @participant_id)
                writer.write_string_value("region", @region)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end

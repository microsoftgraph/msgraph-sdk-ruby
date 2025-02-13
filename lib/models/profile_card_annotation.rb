require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ProfileCardAnnotation
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # If present, the value of this field is used by the profile card as the default property label in the experience (for example, 'Cost Center').
            @display_name
            ## 
            # Each resource in this collection represents the localized value of the attribute name for a given language, used as the default label for that locale. For example, a user with a nb-NO client gets 'Kostnadssenter' as the attribute label, rather than 'Cost Center.'
            @localizations
            ## 
            # The OdataType property
            @odata_type
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
            ## Instantiates a new ProfileCardAnnotation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a profile_card_annotation
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ProfileCardAnnotation.new
            end
            ## 
            ## Gets the displayName property value. If present, the value of this field is used by the profile card as the default property label in the experience (for example, 'Cost Center').
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. If present, the value of this field is used by the profile card as the default property label in the experience (for example, 'Cost Center').
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
                return {
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "localizations" => lambda {|n| @localizations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DisplayNameLocalization.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the localizations property value. Each resource in this collection represents the localized value of the attribute name for a given language, used as the default label for that locale. For example, a user with a nb-NO client gets 'Kostnadssenter' as the attribute label, rather than 'Cost Center.'
            ## @return a display_name_localization
            ## 
            def localizations
                return @localizations
            end
            ## 
            ## Sets the localizations property value. Each resource in this collection represents the localized value of the attribute name for a given language, used as the default label for that locale. For example, a user with a nb-NO client gets 'Kostnadssenter' as the attribute label, rather than 'Cost Center.'
            ## @param value Value to set for the localizations property.
            ## @return a void
            ## 
            def localizations=(value)
                @localizations = value
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
                writer.write_string_value("displayName", @display_name)
                writer.write_collection_of_object_values("localizations", @localizations)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end

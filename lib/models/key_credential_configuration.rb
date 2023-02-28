require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class KeyCredentialConfiguration
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The maxLifetime property
            @max_lifetime
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The restrictForAppsCreatedAfterDateTime property
            @restrict_for_apps_created_after_date_time
            ## 
            # The restrictionType property
            @restriction_type
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
            ## Instantiates a new keyCredentialConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a key_credential_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return KeyCredentialConfiguration.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "maxLifetime" => lambda {|n| @max_lifetime = n.get_duration_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "restrictForAppsCreatedAfterDateTime" => lambda {|n| @restrict_for_apps_created_after_date_time = n.get_date_time_value() },
                    "restrictionType" => lambda {|n| @restriction_type = n.get_enum_value(MicrosoftGraph::Models::AppKeyCredentialRestrictionType) },
                }
            end
            ## 
            ## Gets the maxLifetime property value. The maxLifetime property
            ## @return a microsoft_kiota_abstractions::_i_s_o_duration
            ## 
            def max_lifetime
                return @max_lifetime
            end
            ## 
            ## Sets the maxLifetime property value. The maxLifetime property
            ## @param value Value to set for the max_lifetime property.
            ## @return a void
            ## 
            def max_lifetime=(value)
                @max_lifetime = value
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
            ## Gets the restrictForAppsCreatedAfterDateTime property value. The restrictForAppsCreatedAfterDateTime property
            ## @return a date_time
            ## 
            def restrict_for_apps_created_after_date_time
                return @restrict_for_apps_created_after_date_time
            end
            ## 
            ## Sets the restrictForAppsCreatedAfterDateTime property value. The restrictForAppsCreatedAfterDateTime property
            ## @param value Value to set for the restrict_for_apps_created_after_date_time property.
            ## @return a void
            ## 
            def restrict_for_apps_created_after_date_time=(value)
                @restrict_for_apps_created_after_date_time = value
            end
            ## 
            ## Gets the restrictionType property value. The restrictionType property
            ## @return a app_key_credential_restriction_type
            ## 
            def restriction_type
                return @restriction_type
            end
            ## 
            ## Sets the restrictionType property value. The restrictionType property
            ## @param value Value to set for the restriction_type property.
            ## @return a void
            ## 
            def restriction_type=(value)
                @restriction_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_duration_value("maxLifetime", @max_lifetime)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_date_time_value("restrictForAppsCreatedAfterDateTime", @restrict_for_apps_created_after_date_time)
                writer.write_enum_value("restrictionType", @restriction_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end

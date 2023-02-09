require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AuthenticationMethodFeatureConfiguration
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # A single entity that is excluded from this feature.
            @exclude_target
            ## 
            # A single entity that is included in this feature.
            @include_target
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Enable or disable the feature. Possible values are: default, enabled, disabled, unknownFutureValue. The default value is used when the configuration hasn't been explicitly set and uses the default behavior of Azure AD for the setting. The default value is disabled.
            @state
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
            ## Instantiates a new authenticationMethodFeatureConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a authentication_method_feature_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AuthenticationMethodFeatureConfiguration.new
            end
            ## 
            ## Gets the excludeTarget property value. A single entity that is excluded from this feature.
            ## @return a feature_target
            ## 
            def exclude_target
                return @exclude_target
            end
            ## 
            ## Sets the excludeTarget property value. A single entity that is excluded from this feature.
            ## @param value Value to set for the exclude_target property.
            ## @return a void
            ## 
            def exclude_target=(value)
                @exclude_target = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "excludeTarget" => lambda {|n| @exclude_target = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::FeatureTarget.create_from_discriminator_value(pn) }) },
                    "includeTarget" => lambda {|n| @include_target = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::FeatureTarget.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "state" => lambda {|n| @state = n.get_enum_value(MicrosoftGraph::Models::AdvancedConfigState) },
                }
            end
            ## 
            ## Gets the includeTarget property value. A single entity that is included in this feature.
            ## @return a feature_target
            ## 
            def include_target
                return @include_target
            end
            ## 
            ## Sets the includeTarget property value. A single entity that is included in this feature.
            ## @param value Value to set for the include_target property.
            ## @return a void
            ## 
            def include_target=(value)
                @include_target = value
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
                writer.write_object_value("excludeTarget", @exclude_target)
                writer.write_object_value("includeTarget", @include_target)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("state", @state)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the state property value. Enable or disable the feature. Possible values are: default, enabled, disabled, unknownFutureValue. The default value is used when the configuration hasn't been explicitly set and uses the default behavior of Azure AD for the setting. The default value is disabled.
            ## @return a advanced_config_state
            ## 
            def state
                return @state
            end
            ## 
            ## Sets the state property value. Enable or disable the feature. Possible values are: default, enabled, disabled, unknownFutureValue. The default value is used when the configuration hasn't been explicitly set and uses the default behavior of Azure AD for the setting. The default value is disabled.
            ## @param value Value to set for the state property.
            ## @return a void
            ## 
            def state=(value)
                @state = value
            end
        end
    end
end

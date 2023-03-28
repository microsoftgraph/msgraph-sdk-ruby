require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class VoiceAuthenticationMethodConfiguration < MicrosoftGraph::Models::AuthenticationMethodConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # A collection of groups that are enabled to use the authentication method. Expanded by default.
            @include_targets
            ## 
            # true if users can register office phones, otherwise, false.
            @is_office_phone_allowed
            ## 
            ## Instantiates a new VoiceAuthenticationMethodConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.voiceAuthenticationMethodConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a voice_authentication_method_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return VoiceAuthenticationMethodConfiguration.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "includeTargets" => lambda {|n| @include_targets = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AuthenticationMethodTarget.create_from_discriminator_value(pn) }) },
                    "isOfficePhoneAllowed" => lambda {|n| @is_office_phone_allowed = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the includeTargets property value. A collection of groups that are enabled to use the authentication method. Expanded by default.
            ## @return a authentication_method_target
            ## 
            def include_targets
                return @include_targets
            end
            ## 
            ## Sets the includeTargets property value. A collection of groups that are enabled to use the authentication method. Expanded by default.
            ## @param value Value to set for the include_targets property.
            ## @return a void
            ## 
            def include_targets=(value)
                @include_targets = value
            end
            ## 
            ## Gets the isOfficePhoneAllowed property value. true if users can register office phones, otherwise, false.
            ## @return a boolean
            ## 
            def is_office_phone_allowed
                return @is_office_phone_allowed
            end
            ## 
            ## Sets the isOfficePhoneAllowed property value. true if users can register office phones, otherwise, false.
            ## @param value Value to set for the is_office_phone_allowed property.
            ## @return a void
            ## 
            def is_office_phone_allowed=(value)
                @is_office_phone_allowed = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("includeTargets", @include_targets)
                writer.write_boolean_value("isOfficePhoneAllowed", @is_office_phone_allowed)
            end
        end
    end
end

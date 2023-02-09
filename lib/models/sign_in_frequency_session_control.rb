require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SignInFrequencySessionControl < MicrosoftGraph::Models::ConditionalAccessSessionControl
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The possible values are primaryAndSecondaryAuthentication, secondaryAuthentication, unknownFutureValue.
            @authentication_type
            ## 
            # The possible values are timeBased, everyTime, unknownFutureValue.
            @frequency_interval
            ## 
            # Possible values are: days, hours.
            @type
            ## 
            # The number of days or hours.
            @value
            ## 
            ## Gets the authenticationType property value. The possible values are primaryAndSecondaryAuthentication, secondaryAuthentication, unknownFutureValue.
            ## @return a sign_in_frequency_authentication_type
            ## 
            def authentication_type
                return @authentication_type
            end
            ## 
            ## Sets the authenticationType property value. The possible values are primaryAndSecondaryAuthentication, secondaryAuthentication, unknownFutureValue.
            ## @param value Value to set for the authentication_type property.
            ## @return a void
            ## 
            def authentication_type=(value)
                @authentication_type = value
            end
            ## 
            ## Instantiates a new SignInFrequencySessionControl and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.signInFrequencySessionControl"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a sign_in_frequency_session_control
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SignInFrequencySessionControl.new
            end
            ## 
            ## Gets the frequencyInterval property value. The possible values are timeBased, everyTime, unknownFutureValue.
            ## @return a sign_in_frequency_interval
            ## 
            def frequency_interval
                return @frequency_interval
            end
            ## 
            ## Sets the frequencyInterval property value. The possible values are timeBased, everyTime, unknownFutureValue.
            ## @param value Value to set for the frequency_interval property.
            ## @return a void
            ## 
            def frequency_interval=(value)
                @frequency_interval = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "authenticationType" => lambda {|n| @authentication_type = n.get_enum_value(MicrosoftGraph::Models::SignInFrequencyAuthenticationType) },
                    "frequencyInterval" => lambda {|n| @frequency_interval = n.get_enum_value(MicrosoftGraph::Models::SignInFrequencyInterval) },
                    "type" => lambda {|n| @type = n.get_enum_value(MicrosoftGraph::Models::SigninFrequencyType) },
                    "value" => lambda {|n| @value = n.get_number_value() },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("authenticationType", @authentication_type)
                writer.write_enum_value("frequencyInterval", @frequency_interval)
                writer.write_enum_value("type", @type)
                writer.write_number_value("value", @value)
            end
            ## 
            ## Gets the type property value. Possible values are: days, hours.
            ## @return a signin_frequency_type
            ## 
            def type
                return @type
            end
            ## 
            ## Sets the type property value. Possible values are: days, hours.
            ## @param value Value to set for the type property.
            ## @return a void
            ## 
            def type=(value)
                @type = value
            end
            ## 
            ## Gets the value property value. The number of days or hours.
            ## @return a integer
            ## 
            def value
                return @value
            end
            ## 
            ## Sets the value property value. The number of days or hours.
            ## @param value Value to set for the value property.
            ## @return a void
            ## 
            def value=(value)
                @value = value
            end
        end
    end
end

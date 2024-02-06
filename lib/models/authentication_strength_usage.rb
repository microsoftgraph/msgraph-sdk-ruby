require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AuthenticationStrengthUsage
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The mfa property
            @mfa
            ## 
            # The none property
            @none
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
            ## @param value Value to set for the additionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new authenticationStrengthUsage and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a authentication_strength_usage
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AuthenticationStrengthUsage.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "mfa" => lambda {|n| @mfa = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ConditionalAccessPolicy.create_from_discriminator_value(pn) }) },
                    "none" => lambda {|n| @none = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ConditionalAccessPolicy.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the mfa property value. The mfa property
            ## @return a conditional_access_policy
            ## 
            def mfa
                return @mfa
            end
            ## 
            ## Sets the mfa property value. The mfa property
            ## @param value Value to set for the mfa property.
            ## @return a void
            ## 
            def mfa=(value)
                @mfa = value
            end
            ## 
            ## Gets the none property value. The none property
            ## @return a conditional_access_policy
            ## 
            def none
                return @none
            end
            ## 
            ## Sets the none property value. The none property
            ## @param value Value to set for the none property.
            ## @return a void
            ## 
            def none=(value)
                @none = value
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
                writer.write_collection_of_object_values("mfa", @mfa) unless @mfa.nil?
                writer.write_collection_of_object_values("none", @none) unless @none.nil?
                writer.write_string_value("@odata.type", @odata_type) unless @odata_type.nil?
                writer.write_additional_data(@additional_data) unless @additional_data.nil?
            end
        end
    end
end

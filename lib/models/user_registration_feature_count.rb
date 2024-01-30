require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class UserRegistrationFeatureCount
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The feature property
            @feature
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Number of users.
            @user_count
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
            ## Instantiates a new userRegistrationFeatureCount and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a user_registration_feature_count
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserRegistrationFeatureCount.new
            end
            ## 
            ## Gets the feature property value. The feature property
            ## @return a authentication_method_feature
            ## 
            def feature
                return @feature
            end
            ## 
            ## Sets the feature property value. The feature property
            ## @param value Value to set for the feature property.
            ## @return a void
            ## 
            def feature=(value)
                @feature = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "feature" => lambda {|n| @feature = n.get_enum_value(MicrosoftGraph::Models::AuthenticationMethodFeature) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "userCount" => lambda {|n| @user_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                }
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
                writer.write_enum_value("feature", @feature)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("userCount", @user_count)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the userCount property value. Number of users.
            ## @return a int64
            ## 
            def user_count
                return @user_count
            end
            ## 
            ## Sets the userCount property value. Number of users.
            ## @param value Value to set for the userCount property.
            ## @return a void
            ## 
            def user_count=(value)
                @user_count = value
            end
        end
    end
end

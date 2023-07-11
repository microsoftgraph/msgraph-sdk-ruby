require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class UserRegistrationFeatureSummary
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Total number of users accounts, excluding those that are blocked.
            @total_user_count
            ## 
            # Number of users registered or capable for multi-factor authentication, self-service password reset, and passwordless authentication.
            @user_registration_feature_counts
            ## 
            # The role type of the user. Possible values are: all, privilegedAdmin, admin, user, unknownFutureValue.
            @user_roles
            ## 
            # User type. Possible values are: all, member, guest, unknownFutureValue.
            @user_types
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
            ## Instantiates a new userRegistrationFeatureSummary and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a user_registration_feature_summary
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserRegistrationFeatureSummary.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "totalUserCount" => lambda {|n| @total_user_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "userRegistrationFeatureCounts" => lambda {|n| @user_registration_feature_counts = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::UserRegistrationFeatureCount.create_from_discriminator_value(pn) }) },
                    "userRoles" => lambda {|n| @user_roles = n.get_enum_value(MicrosoftGraph::Models::IncludedUserRoles) },
                    "userTypes" => lambda {|n| @user_types = n.get_enum_value(MicrosoftGraph::Models::IncludedUserTypes) },
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
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("totalUserCount", @total_user_count)
                writer.write_collection_of_object_values("userRegistrationFeatureCounts", @user_registration_feature_counts)
                writer.write_enum_value("userRoles", @user_roles)
                writer.write_enum_value("userTypes", @user_types)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the totalUserCount property value. Total number of users accounts, excluding those that are blocked.
            ## @return a int64
            ## 
            def total_user_count
                return @total_user_count
            end
            ## 
            ## Sets the totalUserCount property value. Total number of users accounts, excluding those that are blocked.
            ## @param value Value to set for the total_user_count property.
            ## @return a void
            ## 
            def total_user_count=(value)
                @total_user_count = value
            end
            ## 
            ## Gets the userRegistrationFeatureCounts property value. Number of users registered or capable for multi-factor authentication, self-service password reset, and passwordless authentication.
            ## @return a user_registration_feature_count
            ## 
            def user_registration_feature_counts
                return @user_registration_feature_counts
            end
            ## 
            ## Sets the userRegistrationFeatureCounts property value. Number of users registered or capable for multi-factor authentication, self-service password reset, and passwordless authentication.
            ## @param value Value to set for the user_registration_feature_counts property.
            ## @return a void
            ## 
            def user_registration_feature_counts=(value)
                @user_registration_feature_counts = value
            end
            ## 
            ## Gets the userRoles property value. The role type of the user. Possible values are: all, privilegedAdmin, admin, user, unknownFutureValue.
            ## @return a included_user_roles
            ## 
            def user_roles
                return @user_roles
            end
            ## 
            ## Sets the userRoles property value. The role type of the user. Possible values are: all, privilegedAdmin, admin, user, unknownFutureValue.
            ## @param value Value to set for the user_roles property.
            ## @return a void
            ## 
            def user_roles=(value)
                @user_roles = value
            end
            ## 
            ## Gets the userTypes property value. User type. Possible values are: all, member, guest, unknownFutureValue.
            ## @return a included_user_types
            ## 
            def user_types
                return @user_types
            end
            ## 
            ## Sets the userTypes property value. User type. Possible values are: all, member, guest, unknownFutureValue.
            ## @param value Value to set for the user_types property.
            ## @return a void
            ## 
            def user_types=(value)
                @user_types = value
            end
        end
    end
end

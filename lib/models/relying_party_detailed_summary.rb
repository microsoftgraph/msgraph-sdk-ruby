require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class RelyingPartyDetailedSummary < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The failedSignInCount property
            @failed_sign_in_count
            ## 
            # The migrationStatus property
            @migration_status
            ## 
            # The migrationValidationDetails property
            @migration_validation_details
            ## 
            # The relyingPartyId property
            @relying_party_id
            ## 
            # The relyingPartyName property
            @relying_party_name
            ## 
            # The replyUrls property
            @reply_urls
            ## 
            # The serviceId property
            @service_id
            ## 
            # The signInSuccessRate property
            @sign_in_success_rate
            ## 
            # The successfulSignInCount property
            @successful_sign_in_count
            ## 
            # The totalSignInCount property
            @total_sign_in_count
            ## 
            # The uniqueUserCount property
            @unique_user_count
            ## 
            ## Instantiates a new RelyingPartyDetailedSummary and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a relying_party_detailed_summary
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return RelyingPartyDetailedSummary.new
            end
            ## 
            ## Gets the failedSignInCount property value. The failedSignInCount property
            ## @return a int64
            ## 
            def failed_sign_in_count
                return @failed_sign_in_count
            end
            ## 
            ## Sets the failedSignInCount property value. The failedSignInCount property
            ## @param value Value to set for the failedSignInCount property.
            ## @return a void
            ## 
            def failed_sign_in_count=(value)
                @failed_sign_in_count = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "failedSignInCount" => lambda {|n| @failed_sign_in_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "migrationStatus" => lambda {|n| @migration_status = n.get_enum_value(MicrosoftGraph::Models::MigrationStatus) },
                    "migrationValidationDetails" => lambda {|n| @migration_validation_details = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::KeyValuePair.create_from_discriminator_value(pn) }) },
                    "relyingPartyId" => lambda {|n| @relying_party_id = n.get_string_value() },
                    "relyingPartyName" => lambda {|n| @relying_party_name = n.get_string_value() },
                    "replyUrls" => lambda {|n| @reply_urls = n.get_collection_of_primitive_values(String) },
                    "serviceId" => lambda {|n| @service_id = n.get_string_value() },
                    "signInSuccessRate" => lambda {|n| @sign_in_success_rate = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "successfulSignInCount" => lambda {|n| @successful_sign_in_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "totalSignInCount" => lambda {|n| @total_sign_in_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "uniqueUserCount" => lambda {|n| @unique_user_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the migrationStatus property value. The migrationStatus property
            ## @return a migration_status
            ## 
            def migration_status
                return @migration_status
            end
            ## 
            ## Sets the migrationStatus property value. The migrationStatus property
            ## @param value Value to set for the migrationStatus property.
            ## @return a void
            ## 
            def migration_status=(value)
                @migration_status = value
            end
            ## 
            ## Gets the migrationValidationDetails property value. The migrationValidationDetails property
            ## @return a key_value_pair
            ## 
            def migration_validation_details
                return @migration_validation_details
            end
            ## 
            ## Sets the migrationValidationDetails property value. The migrationValidationDetails property
            ## @param value Value to set for the migrationValidationDetails property.
            ## @return a void
            ## 
            def migration_validation_details=(value)
                @migration_validation_details = value
            end
            ## 
            ## Gets the relyingPartyId property value. The relyingPartyId property
            ## @return a string
            ## 
            def relying_party_id
                return @relying_party_id
            end
            ## 
            ## Sets the relyingPartyId property value. The relyingPartyId property
            ## @param value Value to set for the relyingPartyId property.
            ## @return a void
            ## 
            def relying_party_id=(value)
                @relying_party_id = value
            end
            ## 
            ## Gets the relyingPartyName property value. The relyingPartyName property
            ## @return a string
            ## 
            def relying_party_name
                return @relying_party_name
            end
            ## 
            ## Sets the relyingPartyName property value. The relyingPartyName property
            ## @param value Value to set for the relyingPartyName property.
            ## @return a void
            ## 
            def relying_party_name=(value)
                @relying_party_name = value
            end
            ## 
            ## Gets the replyUrls property value. The replyUrls property
            ## @return a string
            ## 
            def reply_urls
                return @reply_urls
            end
            ## 
            ## Sets the replyUrls property value. The replyUrls property
            ## @param value Value to set for the replyUrls property.
            ## @return a void
            ## 
            def reply_urls=(value)
                @reply_urls = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("failedSignInCount", @failed_sign_in_count)
                writer.write_enum_value("migrationStatus", @migration_status)
                writer.write_collection_of_object_values("migrationValidationDetails", @migration_validation_details)
                writer.write_string_value("relyingPartyId", @relying_party_id)
                writer.write_string_value("relyingPartyName", @relying_party_name)
                writer.write_collection_of_primitive_values("replyUrls", @reply_urls)
                writer.write_string_value("serviceId", @service_id)
                writer.write_object_value("signInSuccessRate", @sign_in_success_rate)
                writer.write_object_value("successfulSignInCount", @successful_sign_in_count)
                writer.write_object_value("totalSignInCount", @total_sign_in_count)
                writer.write_object_value("uniqueUserCount", @unique_user_count)
            end
            ## 
            ## Gets the serviceId property value. The serviceId property
            ## @return a string
            ## 
            def service_id
                return @service_id
            end
            ## 
            ## Sets the serviceId property value. The serviceId property
            ## @param value Value to set for the serviceId property.
            ## @return a void
            ## 
            def service_id=(value)
                @service_id = value
            end
            ## 
            ## Gets the signInSuccessRate property value. The signInSuccessRate property
            ## @return a double
            ## 
            def sign_in_success_rate
                return @sign_in_success_rate
            end
            ## 
            ## Sets the signInSuccessRate property value. The signInSuccessRate property
            ## @param value Value to set for the signInSuccessRate property.
            ## @return a void
            ## 
            def sign_in_success_rate=(value)
                @sign_in_success_rate = value
            end
            ## 
            ## Gets the successfulSignInCount property value. The successfulSignInCount property
            ## @return a int64
            ## 
            def successful_sign_in_count
                return @successful_sign_in_count
            end
            ## 
            ## Sets the successfulSignInCount property value. The successfulSignInCount property
            ## @param value Value to set for the successfulSignInCount property.
            ## @return a void
            ## 
            def successful_sign_in_count=(value)
                @successful_sign_in_count = value
            end
            ## 
            ## Gets the totalSignInCount property value. The totalSignInCount property
            ## @return a int64
            ## 
            def total_sign_in_count
                return @total_sign_in_count
            end
            ## 
            ## Sets the totalSignInCount property value. The totalSignInCount property
            ## @param value Value to set for the totalSignInCount property.
            ## @return a void
            ## 
            def total_sign_in_count=(value)
                @total_sign_in_count = value
            end
            ## 
            ## Gets the uniqueUserCount property value. The uniqueUserCount property
            ## @return a int64
            ## 
            def unique_user_count
                return @unique_user_count
            end
            ## 
            ## Sets the uniqueUserCount property value. The uniqueUserCount property
            ## @param value Value to set for the uniqueUserCount property.
            ## @return a void
            ## 
            def unique_user_count=(value)
                @unique_user_count = value
            end
        end
    end
end

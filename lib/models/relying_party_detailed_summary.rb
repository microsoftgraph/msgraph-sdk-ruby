require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class RelyingPartyDetailedSummary < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Number of failed sign ins on AD FS in the period specified. Supports $orderby, $filter (eq).
            @failed_sign_in_count
            ## 
            # The migrationStatus property
            @migration_status
            ## 
            # Specifies all the validations checks done on applications config details.
            @migration_validation_details
            ## 
            # Identifies the relying party to this federation service. It's used when issuing claims to the relying party. Supports $orderby, $filter (eq).
            @relying_party_id
            ## 
            # Name of the relying party's website or other entity on the Internet that uses an identity provider to authenticate a user who wants to log in. Supports $orderby, $filter (eq).
            @relying_party_name
            ## 
            # Specifies where the relying party expects to receive the token.
            @reply_urls
            ## 
            # Uniquely identifies the Active Directory forest. Supports $orderby, $filter (eq).
            @service_id
            ## 
            # Calculated as Number of successful / (Number of successful + Number of failed sign ins) or successfulSignInCount / totalSignInCount on AD FS in the period specified. Supports $orderby, $filter (eq).
            @sign_in_success_rate
            ## 
            # Number of successful sign ins on AD FS. Supports $orderby, $filter (eq).
            @successful_sign_in_count
            ## 
            # Number of successful + failed sign ins on AD FS in the period specified. Supports $orderby, $filter (eq).
            @total_sign_in_count
            ## 
            # Number of unique users that signed into the application. Supports $orderby, $filter (eq).
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
            ## Gets the failedSignInCount property value. Number of failed sign ins on AD FS in the period specified. Supports $orderby, $filter (eq).
            ## @return a int64
            ## 
            def failed_sign_in_count
                return @failed_sign_in_count
            end
            ## 
            ## Sets the failedSignInCount property value. Number of failed sign ins on AD FS in the period specified. Supports $orderby, $filter (eq).
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
            ## Gets the migrationValidationDetails property value. Specifies all the validations checks done on applications config details.
            ## @return a key_value_pair
            ## 
            def migration_validation_details
                return @migration_validation_details
            end
            ## 
            ## Sets the migrationValidationDetails property value. Specifies all the validations checks done on applications config details.
            ## @param value Value to set for the migrationValidationDetails property.
            ## @return a void
            ## 
            def migration_validation_details=(value)
                @migration_validation_details = value
            end
            ## 
            ## Gets the relyingPartyId property value. Identifies the relying party to this federation service. It's used when issuing claims to the relying party. Supports $orderby, $filter (eq).
            ## @return a string
            ## 
            def relying_party_id
                return @relying_party_id
            end
            ## 
            ## Sets the relyingPartyId property value. Identifies the relying party to this federation service. It's used when issuing claims to the relying party. Supports $orderby, $filter (eq).
            ## @param value Value to set for the relyingPartyId property.
            ## @return a void
            ## 
            def relying_party_id=(value)
                @relying_party_id = value
            end
            ## 
            ## Gets the relyingPartyName property value. Name of the relying party's website or other entity on the Internet that uses an identity provider to authenticate a user who wants to log in. Supports $orderby, $filter (eq).
            ## @return a string
            ## 
            def relying_party_name
                return @relying_party_name
            end
            ## 
            ## Sets the relyingPartyName property value. Name of the relying party's website or other entity on the Internet that uses an identity provider to authenticate a user who wants to log in. Supports $orderby, $filter (eq).
            ## @param value Value to set for the relyingPartyName property.
            ## @return a void
            ## 
            def relying_party_name=(value)
                @relying_party_name = value
            end
            ## 
            ## Gets the replyUrls property value. Specifies where the relying party expects to receive the token.
            ## @return a string
            ## 
            def reply_urls
                return @reply_urls
            end
            ## 
            ## Sets the replyUrls property value. Specifies where the relying party expects to receive the token.
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
            ## Gets the serviceId property value. Uniquely identifies the Active Directory forest. Supports $orderby, $filter (eq).
            ## @return a string
            ## 
            def service_id
                return @service_id
            end
            ## 
            ## Sets the serviceId property value. Uniquely identifies the Active Directory forest. Supports $orderby, $filter (eq).
            ## @param value Value to set for the serviceId property.
            ## @return a void
            ## 
            def service_id=(value)
                @service_id = value
            end
            ## 
            ## Gets the signInSuccessRate property value. Calculated as Number of successful / (Number of successful + Number of failed sign ins) or successfulSignInCount / totalSignInCount on AD FS in the period specified. Supports $orderby, $filter (eq).
            ## @return a double
            ## 
            def sign_in_success_rate
                return @sign_in_success_rate
            end
            ## 
            ## Sets the signInSuccessRate property value. Calculated as Number of successful / (Number of successful + Number of failed sign ins) or successfulSignInCount / totalSignInCount on AD FS in the period specified. Supports $orderby, $filter (eq).
            ## @param value Value to set for the signInSuccessRate property.
            ## @return a void
            ## 
            def sign_in_success_rate=(value)
                @sign_in_success_rate = value
            end
            ## 
            ## Gets the successfulSignInCount property value. Number of successful sign ins on AD FS. Supports $orderby, $filter (eq).
            ## @return a int64
            ## 
            def successful_sign_in_count
                return @successful_sign_in_count
            end
            ## 
            ## Sets the successfulSignInCount property value. Number of successful sign ins on AD FS. Supports $orderby, $filter (eq).
            ## @param value Value to set for the successfulSignInCount property.
            ## @return a void
            ## 
            def successful_sign_in_count=(value)
                @successful_sign_in_count = value
            end
            ## 
            ## Gets the totalSignInCount property value. Number of successful + failed sign ins on AD FS in the period specified. Supports $orderby, $filter (eq).
            ## @return a int64
            ## 
            def total_sign_in_count
                return @total_sign_in_count
            end
            ## 
            ## Sets the totalSignInCount property value. Number of successful + failed sign ins on AD FS in the period specified. Supports $orderby, $filter (eq).
            ## @param value Value to set for the totalSignInCount property.
            ## @return a void
            ## 
            def total_sign_in_count=(value)
                @total_sign_in_count = value
            end
            ## 
            ## Gets the uniqueUserCount property value. Number of unique users that signed into the application. Supports $orderby, $filter (eq).
            ## @return a int64
            ## 
            def unique_user_count
                return @unique_user_count
            end
            ## 
            ## Sets the uniqueUserCount property value. Number of unique users that signed into the application. Supports $orderby, $filter (eq).
            ## @param value Value to set for the uniqueUserCount property.
            ## @return a void
            ## 
            def unique_user_count=(value)
                @unique_user_count = value
            end
        end
    end
end

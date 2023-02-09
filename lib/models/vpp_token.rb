require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # You purchase multiple licenses for iOS apps through the Apple Volume Purchase Program for Business or Education. This involves setting up an Apple VPP account from the Apple website and uploading the Apple VPP Business or Education token to Intune. You can then synchronize your volume purchase information with Intune and track your volume-purchased app use. You can upload multiple Apple VPP Business or Education tokens.
        class VppToken < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The apple Id associated with the given Apple Volume Purchase Program Token.
            @apple_id
            ## 
            # Whether or not apps for the VPP token will be automatically updated.
            @automatically_update_apps
            ## 
            # Whether or not apps for the VPP token will be automatically updated.
            @country_or_region
            ## 
            # The expiration date time of the Apple Volume Purchase Program Token.
            @expiration_date_time
            ## 
            # Last modification date time associated with the Apple Volume Purchase Program Token.
            @last_modified_date_time
            ## 
            # The last time when an application sync was done with the Apple volume purchase program service using the the Apple Volume Purchase Program Token.
            @last_sync_date_time
            ## 
            # Possible sync statuses associated with an Apple Volume Purchase Program token.
            @last_sync_status
            ## 
            # The organization associated with the Apple Volume Purchase Program Token
            @organization_name
            ## 
            # Possible states associated with an Apple Volume Purchase Program token.
            @state
            ## 
            # The Apple Volume Purchase Program Token string downloaded from the Apple Volume Purchase Program.
            @token
            ## 
            # Possible types of an Apple Volume Purchase Program token.
            @vpp_token_account_type
            ## 
            ## Gets the appleId property value. The apple Id associated with the given Apple Volume Purchase Program Token.
            ## @return a string
            ## 
            def apple_id
                return @apple_id
            end
            ## 
            ## Sets the appleId property value. The apple Id associated with the given Apple Volume Purchase Program Token.
            ## @param value Value to set for the apple_id property.
            ## @return a void
            ## 
            def apple_id=(value)
                @apple_id = value
            end
            ## 
            ## Gets the automaticallyUpdateApps property value. Whether or not apps for the VPP token will be automatically updated.
            ## @return a boolean
            ## 
            def automatically_update_apps
                return @automatically_update_apps
            end
            ## 
            ## Sets the automaticallyUpdateApps property value. Whether or not apps for the VPP token will be automatically updated.
            ## @param value Value to set for the automatically_update_apps property.
            ## @return a void
            ## 
            def automatically_update_apps=(value)
                @automatically_update_apps = value
            end
            ## 
            ## Instantiates a new vppToken and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the countryOrRegion property value. Whether or not apps for the VPP token will be automatically updated.
            ## @return a string
            ## 
            def country_or_region
                return @country_or_region
            end
            ## 
            ## Sets the countryOrRegion property value. Whether or not apps for the VPP token will be automatically updated.
            ## @param value Value to set for the country_or_region property.
            ## @return a void
            ## 
            def country_or_region=(value)
                @country_or_region = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a vpp_token
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return VppToken.new
            end
            ## 
            ## Gets the expirationDateTime property value. The expiration date time of the Apple Volume Purchase Program Token.
            ## @return a date_time
            ## 
            def expiration_date_time
                return @expiration_date_time
            end
            ## 
            ## Sets the expirationDateTime property value. The expiration date time of the Apple Volume Purchase Program Token.
            ## @param value Value to set for the expiration_date_time property.
            ## @return a void
            ## 
            def expiration_date_time=(value)
                @expiration_date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "appleId" => lambda {|n| @apple_id = n.get_string_value() },
                    "automaticallyUpdateApps" => lambda {|n| @automatically_update_apps = n.get_boolean_value() },
                    "countryOrRegion" => lambda {|n| @country_or_region = n.get_string_value() },
                    "expirationDateTime" => lambda {|n| @expiration_date_time = n.get_date_time_value() },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "lastSyncDateTime" => lambda {|n| @last_sync_date_time = n.get_date_time_value() },
                    "lastSyncStatus" => lambda {|n| @last_sync_status = n.get_enum_value(MicrosoftGraph::Models::VppTokenSyncStatus) },
                    "organizationName" => lambda {|n| @organization_name = n.get_string_value() },
                    "state" => lambda {|n| @state = n.get_enum_value(MicrosoftGraph::Models::VppTokenState) },
                    "token" => lambda {|n| @token = n.get_string_value() },
                    "vppTokenAccountType" => lambda {|n| @vpp_token_account_type = n.get_enum_value(MicrosoftGraph::Models::VppTokenAccountType) },
                })
            end
            ## 
            ## Gets the lastModifiedDateTime property value. Last modification date time associated with the Apple Volume Purchase Program Token.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. Last modification date time associated with the Apple Volume Purchase Program Token.
            ## @param value Value to set for the last_modified_date_time property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the lastSyncDateTime property value. The last time when an application sync was done with the Apple volume purchase program service using the the Apple Volume Purchase Program Token.
            ## @return a date_time
            ## 
            def last_sync_date_time
                return @last_sync_date_time
            end
            ## 
            ## Sets the lastSyncDateTime property value. The last time when an application sync was done with the Apple volume purchase program service using the the Apple Volume Purchase Program Token.
            ## @param value Value to set for the last_sync_date_time property.
            ## @return a void
            ## 
            def last_sync_date_time=(value)
                @last_sync_date_time = value
            end
            ## 
            ## Gets the lastSyncStatus property value. Possible sync statuses associated with an Apple Volume Purchase Program token.
            ## @return a vpp_token_sync_status
            ## 
            def last_sync_status
                return @last_sync_status
            end
            ## 
            ## Sets the lastSyncStatus property value. Possible sync statuses associated with an Apple Volume Purchase Program token.
            ## @param value Value to set for the last_sync_status property.
            ## @return a void
            ## 
            def last_sync_status=(value)
                @last_sync_status = value
            end
            ## 
            ## Gets the organizationName property value. The organization associated with the Apple Volume Purchase Program Token
            ## @return a string
            ## 
            def organization_name
                return @organization_name
            end
            ## 
            ## Sets the organizationName property value. The organization associated with the Apple Volume Purchase Program Token
            ## @param value Value to set for the organization_name property.
            ## @return a void
            ## 
            def organization_name=(value)
                @organization_name = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("appleId", @apple_id)
                writer.write_boolean_value("automaticallyUpdateApps", @automatically_update_apps)
                writer.write_string_value("countryOrRegion", @country_or_region)
                writer.write_date_time_value("expirationDateTime", @expiration_date_time)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_date_time_value("lastSyncDateTime", @last_sync_date_time)
                writer.write_enum_value("lastSyncStatus", @last_sync_status)
                writer.write_string_value("organizationName", @organization_name)
                writer.write_enum_value("state", @state)
                writer.write_string_value("token", @token)
                writer.write_enum_value("vppTokenAccountType", @vpp_token_account_type)
            end
            ## 
            ## Gets the state property value. Possible states associated with an Apple Volume Purchase Program token.
            ## @return a vpp_token_state
            ## 
            def state
                return @state
            end
            ## 
            ## Sets the state property value. Possible states associated with an Apple Volume Purchase Program token.
            ## @param value Value to set for the state property.
            ## @return a void
            ## 
            def state=(value)
                @state = value
            end
            ## 
            ## Gets the token property value. The Apple Volume Purchase Program Token string downloaded from the Apple Volume Purchase Program.
            ## @return a string
            ## 
            def token
                return @token
            end
            ## 
            ## Sets the token property value. The Apple Volume Purchase Program Token string downloaded from the Apple Volume Purchase Program.
            ## @param value Value to set for the token property.
            ## @return a void
            ## 
            def token=(value)
                @token = value
            end
            ## 
            ## Gets the vppTokenAccountType property value. Possible types of an Apple Volume Purchase Program token.
            ## @return a vpp_token_account_type
            ## 
            def vpp_token_account_type
                return @vpp_token_account_type
            end
            ## 
            ## Sets the vppTokenAccountType property value. Possible types of an Apple Volume Purchase Program token.
            ## @param value Value to set for the vpp_token_account_type property.
            ## @return a void
            ## 
            def vpp_token_account_type=(value)
                @vpp_token_account_type = value
            end
        end
    end
end

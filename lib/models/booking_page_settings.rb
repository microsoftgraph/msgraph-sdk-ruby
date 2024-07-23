require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class BookingPageSettings
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # The accessControl property
            @access_control
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Custom color for bookings page. Value should be in Hex format. Example: `#123456`.
            @booking_page_color_code
            ## 
            # The time zone of the customer. For a list of possible values, see [dateTimeTimeZone](https://learn.microsoft.com/en-us/graph/api/resources/datetimetimezone?view=graph-rest-beta).
            @business_time_zone
            ## 
            # Customer consent message that is displayed in the Booking page.
            @customer_consent_message
            ## 
            # Enforcing One Time Password (OTP) during appointment creation.
            @enforce_one_time_password
            ## 
            # Enable display of business logo display on the Bookings page.
            @is_business_logo_display_enabled
            ## 
            # Enforces customer consent on the customer consent message before appointment is booked.
            @is_customer_consent_enabled
            ## 
            # Disable booking page to be indexed by search engines. False by default.
            @is_search_engine_indexability_disabled
            ## 
            # If business time zone the default value for the time slots that we show in the bookings page. False by default.
            @is_time_slot_time_zone_set_to_business_time_zone
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The URL of the business' Privacy Policy.
            @privacy_policy_web_url
            ## 
            # The URL of the business' Terms and Conditions.
            @terms_and_conditions_web_url
            ## 
            ## Gets the accessControl property value. The accessControl property
            ## @return a booking_page_access_control
            ## 
            def access_control
                return @access_control
            end
            ## 
            ## Sets the accessControl property value. The accessControl property
            ## @param value Value to set for the accessControl property.
            ## @return a void
            ## 
            def access_control=(value)
                @access_control = value
            end
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
            ## Gets the bookingPageColorCode property value. Custom color for bookings page. Value should be in Hex format. Example: `#123456`.
            ## @return a string
            ## 
            def booking_page_color_code
                return @booking_page_color_code
            end
            ## 
            ## Sets the bookingPageColorCode property value. Custom color for bookings page. Value should be in Hex format. Example: `#123456`.
            ## @param value Value to set for the bookingPageColorCode property.
            ## @return a void
            ## 
            def booking_page_color_code=(value)
                @booking_page_color_code = value
            end
            ## 
            ## Gets the businessTimeZone property value. The time zone of the customer. For a list of possible values, see [dateTimeTimeZone](https://learn.microsoft.com/en-us/graph/api/resources/datetimetimezone?view=graph-rest-beta).
            ## @return a string
            ## 
            def business_time_zone
                return @business_time_zone
            end
            ## 
            ## Sets the businessTimeZone property value. The time zone of the customer. For a list of possible values, see [dateTimeTimeZone](https://learn.microsoft.com/en-us/graph/api/resources/datetimetimezone?view=graph-rest-beta).
            ## @param value Value to set for the businessTimeZone property.
            ## @return a void
            ## 
            def business_time_zone=(value)
                @business_time_zone = value
            end
            ## 
            ## Instantiates a new BookingPageSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a booking_page_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return BookingPageSettings.new
            end
            ## 
            ## Gets the customerConsentMessage property value. Customer consent message that is displayed in the Booking page.
            ## @return a string
            ## 
            def customer_consent_message
                return @customer_consent_message
            end
            ## 
            ## Sets the customerConsentMessage property value. Customer consent message that is displayed in the Booking page.
            ## @param value Value to set for the customerConsentMessage property.
            ## @return a void
            ## 
            def customer_consent_message=(value)
                @customer_consent_message = value
            end
            ## 
            ## Gets the enforceOneTimePassword property value. Enforcing One Time Password (OTP) during appointment creation.
            ## @return a boolean
            ## 
            def enforce_one_time_password
                return @enforce_one_time_password
            end
            ## 
            ## Sets the enforceOneTimePassword property value. Enforcing One Time Password (OTP) during appointment creation.
            ## @param value Value to set for the enforceOneTimePassword property.
            ## @return a void
            ## 
            def enforce_one_time_password=(value)
                @enforce_one_time_password = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "accessControl" => lambda {|n| @access_control = n.get_enum_value(MicrosoftGraph::Models::BookingPageAccessControl) },
                    "bookingPageColorCode" => lambda {|n| @booking_page_color_code = n.get_string_value() },
                    "businessTimeZone" => lambda {|n| @business_time_zone = n.get_string_value() },
                    "customerConsentMessage" => lambda {|n| @customer_consent_message = n.get_string_value() },
                    "enforceOneTimePassword" => lambda {|n| @enforce_one_time_password = n.get_boolean_value() },
                    "isBusinessLogoDisplayEnabled" => lambda {|n| @is_business_logo_display_enabled = n.get_boolean_value() },
                    "isCustomerConsentEnabled" => lambda {|n| @is_customer_consent_enabled = n.get_boolean_value() },
                    "isSearchEngineIndexabilityDisabled" => lambda {|n| @is_search_engine_indexability_disabled = n.get_boolean_value() },
                    "isTimeSlotTimeZoneSetToBusinessTimeZone" => lambda {|n| @is_time_slot_time_zone_set_to_business_time_zone = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "privacyPolicyWebUrl" => lambda {|n| @privacy_policy_web_url = n.get_string_value() },
                    "termsAndConditionsWebUrl" => lambda {|n| @terms_and_conditions_web_url = n.get_string_value() },
                }
            end
            ## 
            ## Gets the isBusinessLogoDisplayEnabled property value. Enable display of business logo display on the Bookings page.
            ## @return a boolean
            ## 
            def is_business_logo_display_enabled
                return @is_business_logo_display_enabled
            end
            ## 
            ## Sets the isBusinessLogoDisplayEnabled property value. Enable display of business logo display on the Bookings page.
            ## @param value Value to set for the isBusinessLogoDisplayEnabled property.
            ## @return a void
            ## 
            def is_business_logo_display_enabled=(value)
                @is_business_logo_display_enabled = value
            end
            ## 
            ## Gets the isCustomerConsentEnabled property value. Enforces customer consent on the customer consent message before appointment is booked.
            ## @return a boolean
            ## 
            def is_customer_consent_enabled
                return @is_customer_consent_enabled
            end
            ## 
            ## Sets the isCustomerConsentEnabled property value. Enforces customer consent on the customer consent message before appointment is booked.
            ## @param value Value to set for the isCustomerConsentEnabled property.
            ## @return a void
            ## 
            def is_customer_consent_enabled=(value)
                @is_customer_consent_enabled = value
            end
            ## 
            ## Gets the isSearchEngineIndexabilityDisabled property value. Disable booking page to be indexed by search engines. False by default.
            ## @return a boolean
            ## 
            def is_search_engine_indexability_disabled
                return @is_search_engine_indexability_disabled
            end
            ## 
            ## Sets the isSearchEngineIndexabilityDisabled property value. Disable booking page to be indexed by search engines. False by default.
            ## @param value Value to set for the isSearchEngineIndexabilityDisabled property.
            ## @return a void
            ## 
            def is_search_engine_indexability_disabled=(value)
                @is_search_engine_indexability_disabled = value
            end
            ## 
            ## Gets the isTimeSlotTimeZoneSetToBusinessTimeZone property value. If business time zone the default value for the time slots that we show in the bookings page. False by default.
            ## @return a boolean
            ## 
            def is_time_slot_time_zone_set_to_business_time_zone
                return @is_time_slot_time_zone_set_to_business_time_zone
            end
            ## 
            ## Sets the isTimeSlotTimeZoneSetToBusinessTimeZone property value. If business time zone the default value for the time slots that we show in the bookings page. False by default.
            ## @param value Value to set for the isTimeSlotTimeZoneSetToBusinessTimeZone property.
            ## @return a void
            ## 
            def is_time_slot_time_zone_set_to_business_time_zone=(value)
                @is_time_slot_time_zone_set_to_business_time_zone = value
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
            ## Gets the privacyPolicyWebUrl property value. The URL of the business' Privacy Policy.
            ## @return a string
            ## 
            def privacy_policy_web_url
                return @privacy_policy_web_url
            end
            ## 
            ## Sets the privacyPolicyWebUrl property value. The URL of the business' Privacy Policy.
            ## @param value Value to set for the privacyPolicyWebUrl property.
            ## @return a void
            ## 
            def privacy_policy_web_url=(value)
                @privacy_policy_web_url = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_enum_value("accessControl", @access_control)
                writer.write_string_value("bookingPageColorCode", @booking_page_color_code)
                writer.write_string_value("businessTimeZone", @business_time_zone)
                writer.write_string_value("customerConsentMessage", @customer_consent_message)
                writer.write_boolean_value("enforceOneTimePassword", @enforce_one_time_password)
                writer.write_boolean_value("isBusinessLogoDisplayEnabled", @is_business_logo_display_enabled)
                writer.write_boolean_value("isCustomerConsentEnabled", @is_customer_consent_enabled)
                writer.write_boolean_value("isSearchEngineIndexabilityDisabled", @is_search_engine_indexability_disabled)
                writer.write_boolean_value("isTimeSlotTimeZoneSetToBusinessTimeZone", @is_time_slot_time_zone_set_to_business_time_zone)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("privacyPolicyWebUrl", @privacy_policy_web_url)
                writer.write_string_value("termsAndConditionsWebUrl", @terms_and_conditions_web_url)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the termsAndConditionsWebUrl property value. The URL of the business' Terms and Conditions.
            ## @return a string
            ## 
            def terms_and_conditions_web_url
                return @terms_and_conditions_web_url
            end
            ## 
            ## Sets the termsAndConditionsWebUrl property value. The URL of the business' Terms and Conditions.
            ## @param value Value to set for the termsAndConditionsWebUrl property.
            ## @return a void
            ## 
            def terms_and_conditions_web_url=(value)
                @terms_and_conditions_web_url = value
            end
        end
    end
end

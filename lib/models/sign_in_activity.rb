require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SignInActivity
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The lastNonInteractiveSignInDateTime property
            @last_non_interactive_sign_in_date_time
            ## 
            # The lastNonInteractiveSignInRequestId property
            @last_non_interactive_sign_in_request_id
            ## 
            # The lastSignInDateTime property
            @last_sign_in_date_time
            ## 
            # The lastSignInRequestId property
            @last_sign_in_request_id
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
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new signInActivity and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a sign_in_activity
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SignInActivity.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "lastNonInteractiveSignInDateTime" => lambda {|n| @last_non_interactive_sign_in_date_time = n.get_date_time_value() },
                    "lastNonInteractiveSignInRequestId" => lambda {|n| @last_non_interactive_sign_in_request_id = n.get_string_value() },
                    "lastSignInDateTime" => lambda {|n| @last_sign_in_date_time = n.get_date_time_value() },
                    "lastSignInRequestId" => lambda {|n| @last_sign_in_request_id = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the lastNonInteractiveSignInDateTime property value. The lastNonInteractiveSignInDateTime property
            ## @return a date_time
            ## 
            def last_non_interactive_sign_in_date_time
                return @last_non_interactive_sign_in_date_time
            end
            ## 
            ## Sets the lastNonInteractiveSignInDateTime property value. The lastNonInteractiveSignInDateTime property
            ## @param value Value to set for the last_non_interactive_sign_in_date_time property.
            ## @return a void
            ## 
            def last_non_interactive_sign_in_date_time=(value)
                @last_non_interactive_sign_in_date_time = value
            end
            ## 
            ## Gets the lastNonInteractiveSignInRequestId property value. The lastNonInteractiveSignInRequestId property
            ## @return a string
            ## 
            def last_non_interactive_sign_in_request_id
                return @last_non_interactive_sign_in_request_id
            end
            ## 
            ## Sets the lastNonInteractiveSignInRequestId property value. The lastNonInteractiveSignInRequestId property
            ## @param value Value to set for the last_non_interactive_sign_in_request_id property.
            ## @return a void
            ## 
            def last_non_interactive_sign_in_request_id=(value)
                @last_non_interactive_sign_in_request_id = value
            end
            ## 
            ## Gets the lastSignInDateTime property value. The lastSignInDateTime property
            ## @return a date_time
            ## 
            def last_sign_in_date_time
                return @last_sign_in_date_time
            end
            ## 
            ## Sets the lastSignInDateTime property value. The lastSignInDateTime property
            ## @param value Value to set for the last_sign_in_date_time property.
            ## @return a void
            ## 
            def last_sign_in_date_time=(value)
                @last_sign_in_date_time = value
            end
            ## 
            ## Gets the lastSignInRequestId property value. The lastSignInRequestId property
            ## @return a string
            ## 
            def last_sign_in_request_id
                return @last_sign_in_request_id
            end
            ## 
            ## Sets the lastSignInRequestId property value. The lastSignInRequestId property
            ## @param value Value to set for the last_sign_in_request_id property.
            ## @return a void
            ## 
            def last_sign_in_request_id=(value)
                @last_sign_in_request_id = value
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
                writer.write_date_time_value("lastNonInteractiveSignInDateTime", @last_non_interactive_sign_in_date_time)
                writer.write_string_value("lastNonInteractiveSignInRequestId", @last_non_interactive_sign_in_request_id)
                writer.write_date_time_value("lastSignInDateTime", @last_sign_in_date_time)
                writer.write_string_value("lastSignInRequestId", @last_sign_in_request_id)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end

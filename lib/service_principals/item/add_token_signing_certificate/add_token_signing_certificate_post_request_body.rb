require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph'
require_relative '../../service_principals'
require_relative '../item'
require_relative './add_token_signing_certificate'

module MicrosoftGraph
    module ServicePrincipals
        module Item
            module AddTokenSigningCertificate
                class AddTokenSigningCertificatePostRequestBody
                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                    @additional_data
                    ## 
                    # The displayName property
                    @display_name
                    ## 
                    # The endDateTime property
                    @end_date_time
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
                    ## Instantiates a new addTokenSigningCertificatePostRequestBody and sets the default values.
                    ## @return a void
                    ## 
                    def initialize()
                        @additional_data = Hash.new
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parseNode The parse node to use to read the discriminator value and create the object
                    ## @return a add_token_signing_certificate_post_request_body
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return AddTokenSigningCertificatePostRequestBody.new
                    end
                    ## 
                    ## Gets the displayName property value. The displayName property
                    ## @return a string
                    ## 
                    def display_name
                        return @display_name
                    end
                    ## 
                    ## Sets the displayName property value. The displayName property
                    ## @param value Value to set for the display_name property.
                    ## @return a void
                    ## 
                    def display_name=(value)
                        @display_name = value
                    end
                    ## 
                    ## Gets the endDateTime property value. The endDateTime property
                    ## @return a date_time
                    ## 
                    def end_date_time
                        return @end_date_time
                    end
                    ## 
                    ## Sets the endDateTime property value. The endDateTime property
                    ## @param value Value to set for the end_date_time property.
                    ## @return a void
                    ## 
                    def end_date_time=(value)
                        @end_date_time = value
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "displayName" => lambda {|n| @display_name = n.get_string_value() },
                            "endDateTime" => lambda {|n| @end_date_time = n.get_date_time_value() },
                        }
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_string_value("displayName", @display_name)
                        writer.write_date_time_value("endDateTime", @end_date_time)
                        writer.write_additional_data(@additional_data)
                    end
                end
            end
        end
    end
end

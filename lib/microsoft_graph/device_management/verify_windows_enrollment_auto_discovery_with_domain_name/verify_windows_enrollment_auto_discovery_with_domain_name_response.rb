require 'microsoft_kiota_abstractions'
require_relative '../device_management'
require_relative './verify_windows_enrollment_auto_discovery_with_domain_name'

module MicrosoftGraph::DeviceManagement::VerifyWindowsEnrollmentAutoDiscoveryWithDomainName
    ## 
    # Provides operations to call the verifyWindowsEnrollmentAutoDiscovery method.
    class VerifyWindowsEnrollmentAutoDiscoveryWithDomainNameResponse
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The value property
        @value
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
        ## Instantiates a new verifyWindowsEnrollmentAutoDiscoveryWithDomainNameResponse and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a verify_windows_enrollment_auto_discovery_with_domain_name_response
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return VerifyWindowsEnrollmentAutoDiscoveryWithDomainNameResponse.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "value" => lambda {|n| @value = n.get_boolean_value() },
            }
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_boolean_value("value", @value)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the value property value. The value property
        ## @return a boolean
        ## 
        def value
            return @value
        end
        ## 
        ## Sets the value property value. The value property
        ## @param value Value to set for the value property.
        ## @return a void
        ## 
        def value=(value)
            @value = value
        end
    end
end
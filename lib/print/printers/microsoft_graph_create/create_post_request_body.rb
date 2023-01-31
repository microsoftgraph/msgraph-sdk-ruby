require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph'
require_relative '../../../models/print_certificate_signing_request'
require_relative '../../print'
require_relative '../printers'
require_relative './microsoft_graph_create'

module MicrosoftGraph::Print::Printers::MicrosoftGraphCreate
    class CreatePostRequestBody
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        @certificate_signing_request
        @connector_id
        @display_name
        @has_physical_device
        @manufacturer
        @model
        @physical_device_id
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
        ## Gets the certificateSigningRequest property value. 
        ## @return a print_certificate_signing_request
        ## 
        def certificate_signing_request
            return @certificate_signing_request
        end
        ## 
        ## Sets the certificateSigningRequest property value. 
        ## @param value Value to set for the certificateSigningRequest property.
        ## @return a void
        ## 
        def certificate_signing_request=(value)
            @certificate_signing_request = value
        end
        ## 
        ## Gets the connectorId property value. 
        ## @return a string
        ## 
        def connector_id
            return @connector_id
        end
        ## 
        ## Sets the connectorId property value. 
        ## @param value Value to set for the connectorId property.
        ## @return a void
        ## 
        def connector_id=(value)
            @connector_id = value
        end
        ## 
        ## Instantiates a new createPostRequestBody and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a create_post_request_body
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return CreatePostRequestBody.new
        end
        ## 
        ## Gets the displayName property value. 
        ## @return a string
        ## 
        def display_name
            return @display_name
        end
        ## 
        ## Sets the displayName property value. 
        ## @param value Value to set for the displayName property.
        ## @return a void
        ## 
        def display_name=(value)
            @display_name = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "certificateSigningRequest" => lambda {|n| @certificate_signing_request = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PrintCertificateSigningRequest.create_from_discriminator_value(pn) }) },
                "connectorId" => lambda {|n| @connector_id = n.get_string_value() },
                "displayName" => lambda {|n| @display_name = n.get_string_value() },
                "hasPhysicalDevice" => lambda {|n| @has_physical_device = n.get_boolean_value() },
                "manufacturer" => lambda {|n| @manufacturer = n.get_string_value() },
                "model" => lambda {|n| @model = n.get_string_value() },
                "physicalDeviceId" => lambda {|n| @physical_device_id = n.get_string_value() },
            }
        end
        ## 
        ## Gets the hasPhysicalDevice property value. 
        ## @return a boolean
        ## 
        def has_physical_device
            return @has_physical_device
        end
        ## 
        ## Sets the hasPhysicalDevice property value. 
        ## @param value Value to set for the hasPhysicalDevice property.
        ## @return a void
        ## 
        def has_physical_device=(value)
            @has_physical_device = value
        end
        ## 
        ## Gets the manufacturer property value. 
        ## @return a string
        ## 
        def manufacturer
            return @manufacturer
        end
        ## 
        ## Sets the manufacturer property value. 
        ## @param value Value to set for the manufacturer property.
        ## @return a void
        ## 
        def manufacturer=(value)
            @manufacturer = value
        end
        ## 
        ## Gets the model property value. 
        ## @return a string
        ## 
        def model
            return @model
        end
        ## 
        ## Sets the model property value. 
        ## @param value Value to set for the model property.
        ## @return a void
        ## 
        def model=(value)
            @model = value
        end
        ## 
        ## Gets the physicalDeviceId property value. 
        ## @return a string
        ## 
        def physical_device_id
            return @physical_device_id
        end
        ## 
        ## Sets the physicalDeviceId property value. 
        ## @param value Value to set for the physicalDeviceId property.
        ## @return a void
        ## 
        def physical_device_id=(value)
            @physical_device_id = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_object_value("certificateSigningRequest", @certificate_signing_request)
            writer.write_string_value("connectorId", @connector_id)
            writer.write_string_value("displayName", @display_name)
            writer.write_boolean_value("hasPhysicalDevice", @has_physical_device)
            writer.write_string_value("manufacturer", @manufacturer)
            writer.write_string_value("model", @model)
            writer.write_string_value("physicalDeviceId", @physical_device_id)
            writer.write_additional_data(@additional_data)
        end
    end
end

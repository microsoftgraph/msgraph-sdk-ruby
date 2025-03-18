require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ServiceProvisioningXmlError < MicrosoftGraph::Models::ServiceProvisioningError
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Error Information published by the Federated Service as an xml string.
            @error_detail
            ## 
            ## Instantiates a new ServiceProvisioningXmlError and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.serviceProvisioningXmlError"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a service_provisioning_xml_error
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ServiceProvisioningXmlError.new
            end
            ## 
            ## Gets the errorDetail property value. Error Information published by the Federated Service as an xml string.
            ## @return a string
            ## 
            def error_detail
                return @error_detail
            end
            ## 
            ## Sets the errorDetail property value. Error Information published by the Federated Service as an xml string.
            ## @param value Value to set for the errorDetail property.
            ## @return a void
            ## 
            def error_detail=(value)
                @error_detail = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "errorDetail" => lambda {|n| @error_detail = n.get_string_value() },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("errorDetail", @error_detail)
            end
        end
    end
end

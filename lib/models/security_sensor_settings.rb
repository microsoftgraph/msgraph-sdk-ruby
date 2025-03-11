require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SecuritySensorSettings
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Description of the sensor.
            @description
            ## 
            # DNS names for the domain controller
            @domain_controller_dns_names
            ## 
            # Indicates whether to delay updates for the sensor.
            @is_delayed_deployment_enabled
            ## 
            # The networkAdapters property
            @network_adapters
            ## 
            # The OdataType property
            @odata_type
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
            ## Instantiates a new SecuritySensorSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_sensor_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecuritySensorSettings.new
            end
            ## 
            ## Gets the description property value. Description of the sensor.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. Description of the sensor.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the domainControllerDnsNames property value. DNS names for the domain controller
            ## @return a string
            ## 
            def domain_controller_dns_names
                return @domain_controller_dns_names
            end
            ## 
            ## Sets the domainControllerDnsNames property value. DNS names for the domain controller
            ## @param value Value to set for the domainControllerDnsNames property.
            ## @return a void
            ## 
            def domain_controller_dns_names=(value)
                @domain_controller_dns_names = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "domainControllerDnsNames" => lambda {|n| @domain_controller_dns_names = n.get_collection_of_primitive_values(String) },
                    "isDelayedDeploymentEnabled" => lambda {|n| @is_delayed_deployment_enabled = n.get_boolean_value() },
                    "networkAdapters" => lambda {|n| @network_adapters = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SecurityNetworkAdapter.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the isDelayedDeploymentEnabled property value. Indicates whether to delay updates for the sensor.
            ## @return a boolean
            ## 
            def is_delayed_deployment_enabled
                return @is_delayed_deployment_enabled
            end
            ## 
            ## Sets the isDelayedDeploymentEnabled property value. Indicates whether to delay updates for the sensor.
            ## @param value Value to set for the isDelayedDeploymentEnabled property.
            ## @return a void
            ## 
            def is_delayed_deployment_enabled=(value)
                @is_delayed_deployment_enabled = value
            end
            ## 
            ## Gets the networkAdapters property value. The networkAdapters property
            ## @return a security_network_adapter
            ## 
            def network_adapters
                return @network_adapters
            end
            ## 
            ## Sets the networkAdapters property value. The networkAdapters property
            ## @param value Value to set for the networkAdapters property.
            ## @return a void
            ## 
            def network_adapters=(value)
                @network_adapters = value
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("description", @description)
                writer.write_collection_of_primitive_values("domainControllerDnsNames", @domain_controller_dns_names)
                writer.write_boolean_value("isDelayedDeploymentEnabled", @is_delayed_deployment_enabled)
                writer.write_collection_of_object_values("networkAdapters", @network_adapters)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end

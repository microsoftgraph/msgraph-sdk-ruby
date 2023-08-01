require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './security'

module MicrosoftGraph
    module Models
        module Security
            class KubernetesServicePort
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The appProtocol property
                @app_protocol
                ## 
                # The name property
                @name
                ## 
                # The nodePort property
                @node_port
                ## 
                # The OdataType property
                @odata_type
                ## 
                # The port property
                @port
                ## 
                # The protocol property
                @protocol
                ## 
                # The targetPort property
                @target_port
                ## 
                ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                ## @return a i_dictionary
                ## 
                def additional_data
                    return @additional_data
                end
                ## 
                ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                ## @param value Value to set for the additionalData property.
                ## @return a void
                ## 
                def additional_data=(value)
                    @additional_data = value
                end
                ## 
                ## Gets the appProtocol property value. The appProtocol property
                ## @return a string
                ## 
                def app_protocol
                    return @app_protocol
                end
                ## 
                ## Sets the appProtocol property value. The appProtocol property
                ## @param value Value to set for the appProtocol property.
                ## @return a void
                ## 
                def app_protocol=(value)
                    @app_protocol = value
                end
                ## 
                ## Instantiates a new kubernetesServicePort and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a kubernetes_service_port
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return KubernetesServicePort.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "appProtocol" => lambda {|n| @app_protocol = n.get_string_value() },
                        "name" => lambda {|n| @name = n.get_string_value() },
                        "nodePort" => lambda {|n| @node_port = n.get_number_value() },
                        "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                        "port" => lambda {|n| @port = n.get_number_value() },
                        "protocol" => lambda {|n| @protocol = n.get_enum_value(MicrosoftGraph::Models::Security::ContainerPortProtocol) },
                        "targetPort" => lambda {|n| @target_port = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the name property value. The name property
                ## @return a string
                ## 
                def name
                    return @name
                end
                ## 
                ## Sets the name property value. The name property
                ## @param value Value to set for the name property.
                ## @return a void
                ## 
                def name=(value)
                    @name = value
                end
                ## 
                ## Gets the nodePort property value. The nodePort property
                ## @return a integer
                ## 
                def node_port
                    return @node_port
                end
                ## 
                ## Sets the nodePort property value. The nodePort property
                ## @param value Value to set for the nodePort property.
                ## @return a void
                ## 
                def node_port=(value)
                    @node_port = value
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
                ## Gets the port property value. The port property
                ## @return a integer
                ## 
                def port
                    return @port
                end
                ## 
                ## Sets the port property value. The port property
                ## @param value Value to set for the port property.
                ## @return a void
                ## 
                def port=(value)
                    @port = value
                end
                ## 
                ## Gets the protocol property value. The protocol property
                ## @return a container_port_protocol
                ## 
                def protocol
                    return @protocol
                end
                ## 
                ## Sets the protocol property value. The protocol property
                ## @param value Value to set for the protocol property.
                ## @return a void
                ## 
                def protocol=(value)
                    @protocol = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_string_value("appProtocol", @app_protocol)
                    writer.write_string_value("name", @name)
                    writer.write_number_value("nodePort", @node_port)
                    writer.write_string_value("@odata.type", @odata_type)
                    writer.write_number_value("port", @port)
                    writer.write_enum_value("protocol", @protocol)
                    writer.write_string_value("targetPort", @target_port)
                    writer.write_additional_data(@additional_data)
                end
                ## 
                ## Gets the targetPort property value. The targetPort property
                ## @return a string
                ## 
                def target_port
                    return @target_port
                end
                ## 
                ## Sets the targetPort property value. The targetPort property
                ## @param value Value to set for the targetPort property.
                ## @return a void
                ## 
                def target_port=(value)
                    @target_port = value
                end
            end
        end
    end
end

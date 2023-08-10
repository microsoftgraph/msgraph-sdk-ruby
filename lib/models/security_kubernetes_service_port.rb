require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SecurityKubernetesServicePort
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The application protocol for this port.
            @app_protocol
            ## 
            # The name of this port within the service.
            @name
            ## 
            # The port on each node on which this service is exposed when the type is either NodePort or LoadBalancer.
            @node_port
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The port that this service exposes.
            @port
            ## 
            # The protocol name. Possible values are: udp, tcp, sctp, unknownFutureValue.
            @protocol
            ## 
            # The name or number of the port to access on the pods targeted by the service. The port number must be in the range 1 to 65535. The name must be an IANASVCNAME.
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
            ## Gets the appProtocol property value. The application protocol for this port.
            ## @return a string
            ## 
            def app_protocol
                return @app_protocol
            end
            ## 
            ## Sets the appProtocol property value. The application protocol for this port.
            ## @param value Value to set for the appProtocol property.
            ## @return a void
            ## 
            def app_protocol=(value)
                @app_protocol = value
            end
            ## 
            ## Instantiates a new securityKubernetesServicePort and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_kubernetes_service_port
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityKubernetesServicePort.new
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
                    "protocol" => lambda {|n| @protocol = n.get_enum_value(MicrosoftGraph::Models::SecurityContainerPortProtocol) },
                    "targetPort" => lambda {|n| @target_port = n.get_string_value() },
                }
            end
            ## 
            ## Gets the name property value. The name of this port within the service.
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. The name of this port within the service.
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
            end
            ## 
            ## Gets the nodePort property value. The port on each node on which this service is exposed when the type is either NodePort or LoadBalancer.
            ## @return a integer
            ## 
            def node_port
                return @node_port
            end
            ## 
            ## Sets the nodePort property value. The port on each node on which this service is exposed when the type is either NodePort or LoadBalancer.
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
            ## Gets the port property value. The port that this service exposes.
            ## @return a integer
            ## 
            def port
                return @port
            end
            ## 
            ## Sets the port property value. The port that this service exposes.
            ## @param value Value to set for the port property.
            ## @return a void
            ## 
            def port=(value)
                @port = value
            end
            ## 
            ## Gets the protocol property value. The protocol name. Possible values are: udp, tcp, sctp, unknownFutureValue.
            ## @return a security_container_port_protocol
            ## 
            def protocol
                return @protocol
            end
            ## 
            ## Sets the protocol property value. The protocol name. Possible values are: udp, tcp, sctp, unknownFutureValue.
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
            ## Gets the targetPort property value. The name or number of the port to access on the pods targeted by the service. The port number must be in the range 1 to 65535. The name must be an IANASVCNAME.
            ## @return a string
            ## 
            def target_port
                return @target_port
            end
            ## 
            ## Sets the targetPort property value. The name or number of the port to access on the pods targeted by the service. The port number must be in the range 1 to 65535. The name must be an IANASVCNAME.
            ## @param value Value to set for the targetPort property.
            ## @return a void
            ## 
            def target_port=(value)
                @target_port = value
            end
        end
    end
end

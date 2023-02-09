require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class DomainDnsSrvRecord < MicrosoftGraph::Models::DomainDnsRecord
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Value to use when configuring the Target property of the SRV record at the DNS host.
            @name_target
            ## 
            # Value to use when configuring the port property of the SRV record at the DNS host.
            @port
            ## 
            # Value to use when configuring the priority property of the SRV record at the DNS host.
            @priority
            ## 
            # Value to use when configuring the protocol property of the SRV record at the DNS host.
            @protocol
            ## 
            # Value to use when configuring the service property of the SRV record at the DNS host.
            @service
            ## 
            # Value to use when configuring the weight property of the SRV record at the DNS host.
            @weight
            ## 
            ## Instantiates a new DomainDnsSrvRecord and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a domain_dns_srv_record
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DomainDnsSrvRecord.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "nameTarget" => lambda {|n| @name_target = n.get_string_value() },
                    "port" => lambda {|n| @port = n.get_number_value() },
                    "priority" => lambda {|n| @priority = n.get_number_value() },
                    "protocol" => lambda {|n| @protocol = n.get_string_value() },
                    "service" => lambda {|n| @service = n.get_string_value() },
                    "weight" => lambda {|n| @weight = n.get_number_value() },
                })
            end
            ## 
            ## Gets the nameTarget property value. Value to use when configuring the Target property of the SRV record at the DNS host.
            ## @return a string
            ## 
            def name_target
                return @name_target
            end
            ## 
            ## Sets the nameTarget property value. Value to use when configuring the Target property of the SRV record at the DNS host.
            ## @param value Value to set for the name_target property.
            ## @return a void
            ## 
            def name_target=(value)
                @name_target = value
            end
            ## 
            ## Gets the port property value. Value to use when configuring the port property of the SRV record at the DNS host.
            ## @return a integer
            ## 
            def port
                return @port
            end
            ## 
            ## Sets the port property value. Value to use when configuring the port property of the SRV record at the DNS host.
            ## @param value Value to set for the port property.
            ## @return a void
            ## 
            def port=(value)
                @port = value
            end
            ## 
            ## Gets the priority property value. Value to use when configuring the priority property of the SRV record at the DNS host.
            ## @return a integer
            ## 
            def priority
                return @priority
            end
            ## 
            ## Sets the priority property value. Value to use when configuring the priority property of the SRV record at the DNS host.
            ## @param value Value to set for the priority property.
            ## @return a void
            ## 
            def priority=(value)
                @priority = value
            end
            ## 
            ## Gets the protocol property value. Value to use when configuring the protocol property of the SRV record at the DNS host.
            ## @return a string
            ## 
            def protocol
                return @protocol
            end
            ## 
            ## Sets the protocol property value. Value to use when configuring the protocol property of the SRV record at the DNS host.
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
                super
                writer.write_string_value("nameTarget", @name_target)
                writer.write_number_value("port", @port)
                writer.write_number_value("priority", @priority)
                writer.write_string_value("protocol", @protocol)
                writer.write_string_value("service", @service)
                writer.write_number_value("weight", @weight)
            end
            ## 
            ## Gets the service property value. Value to use when configuring the service property of the SRV record at the DNS host.
            ## @return a string
            ## 
            def service
                return @service
            end
            ## 
            ## Sets the service property value. Value to use when configuring the service property of the SRV record at the DNS host.
            ## @param value Value to set for the service property.
            ## @return a void
            ## 
            def service=(value)
                @service = value
            end
            ## 
            ## Gets the weight property value. Value to use when configuring the weight property of the SRV record at the DNS host.
            ## @return a integer
            ## 
            def weight
                return @weight
            end
            ## 
            ## Sets the weight property value. Value to use when configuring the weight property of the SRV record at the DNS host.
            ## @param value Value to set for the weight property.
            ## @return a void
            ## 
            def weight=(value)
                @weight = value
            end
        end
    end
end

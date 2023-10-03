require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SecurityIpAddress < MicrosoftGraph::Models::SecurityHost
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The details about the autonomous system to which this IP address belongs.
            @autonomous_system
            ## 
            # The country/region for this IP address.
            @country_or_region
            ## 
            # The hosting company listed for this host.
            @hosting_provider
            ## 
            # The block of IP addresses this IP address belongs to.
            @netblock
            ## 
            ## Gets the autonomousSystem property value. The details about the autonomous system to which this IP address belongs.
            ## @return a security_autonomous_system
            ## 
            def autonomous_system
                return @autonomous_system
            end
            ## 
            ## Sets the autonomousSystem property value. The details about the autonomous system to which this IP address belongs.
            ## @param value Value to set for the autonomousSystem property.
            ## @return a void
            ## 
            def autonomous_system=(value)
                @autonomous_system = value
            end
            ## 
            ## Instantiates a new securityIpAddress and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.security.ipAddress"
            end
            ## 
            ## Gets the countryOrRegion property value. The country/region for this IP address.
            ## @return a string
            ## 
            def country_or_region
                return @country_or_region
            end
            ## 
            ## Sets the countryOrRegion property value. The country/region for this IP address.
            ## @param value Value to set for the countryOrRegion property.
            ## @return a void
            ## 
            def country_or_region=(value)
                @country_or_region = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_ip_address
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityIpAddress.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "autonomousSystem" => lambda {|n| @autonomous_system = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecurityAutonomousSystem.create_from_discriminator_value(pn) }) },
                    "countryOrRegion" => lambda {|n| @country_or_region = n.get_string_value() },
                    "hostingProvider" => lambda {|n| @hosting_provider = n.get_string_value() },
                    "netblock" => lambda {|n| @netblock = n.get_string_value() },
                })
            end
            ## 
            ## Gets the hostingProvider property value. The hosting company listed for this host.
            ## @return a string
            ## 
            def hosting_provider
                return @hosting_provider
            end
            ## 
            ## Sets the hostingProvider property value. The hosting company listed for this host.
            ## @param value Value to set for the hostingProvider property.
            ## @return a void
            ## 
            def hosting_provider=(value)
                @hosting_provider = value
            end
            ## 
            ## Gets the netblock property value. The block of IP addresses this IP address belongs to.
            ## @return a string
            ## 
            def netblock
                return @netblock
            end
            ## 
            ## Sets the netblock property value. The block of IP addresses this IP address belongs to.
            ## @param value Value to set for the netblock property.
            ## @return a void
            ## 
            def netblock=(value)
                @netblock = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("autonomousSystem", @autonomous_system)
                writer.write_string_value("countryOrRegion", @country_or_region)
                writer.write_string_value("hostingProvider", @hosting_provider)
                writer.write_string_value("netblock", @netblock)
            end
        end
    end
end

require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class PrintConnector < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The connector's version.
            @app_version
            ## 
            # The name of the connector.
            @display_name
            ## 
            # The connector machine's hostname.
            @fully_qualified_domain_name
            ## 
            # The physical and/or organizational location of the connector.
            @location
            ## 
            # The connector machine's operating system version.
            @operating_system
            ## 
            # The DateTimeOffset when the connector was registered.
            @registered_date_time
            ## 
            ## Gets the appVersion property value. The connector's version.
            ## @return a string
            ## 
            def app_version
                return @app_version
            end
            ## 
            ## Sets the appVersion property value. The connector's version.
            ## @param value Value to set for the app_version property.
            ## @return a void
            ## 
            def app_version=(value)
                @app_version = value
            end
            ## 
            ## Instantiates a new printConnector and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a print_connector
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PrintConnector.new
            end
            ## 
            ## Gets the displayName property value. The name of the connector.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The name of the connector.
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the fullyQualifiedDomainName property value. The connector machine's hostname.
            ## @return a string
            ## 
            def fully_qualified_domain_name
                return @fully_qualified_domain_name
            end
            ## 
            ## Sets the fullyQualifiedDomainName property value. The connector machine's hostname.
            ## @param value Value to set for the fully_qualified_domain_name property.
            ## @return a void
            ## 
            def fully_qualified_domain_name=(value)
                @fully_qualified_domain_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "appVersion" => lambda {|n| @app_version = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "fullyQualifiedDomainName" => lambda {|n| @fully_qualified_domain_name = n.get_string_value() },
                    "location" => lambda {|n| @location = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PrinterLocation.create_from_discriminator_value(pn) }) },
                    "operatingSystem" => lambda {|n| @operating_system = n.get_string_value() },
                    "registeredDateTime" => lambda {|n| @registered_date_time = n.get_date_time_value() },
                })
            end
            ## 
            ## Gets the location property value. The physical and/or organizational location of the connector.
            ## @return a printer_location
            ## 
            def location
                return @location
            end
            ## 
            ## Sets the location property value. The physical and/or organizational location of the connector.
            ## @param value Value to set for the location property.
            ## @return a void
            ## 
            def location=(value)
                @location = value
            end
            ## 
            ## Gets the operatingSystem property value. The connector machine's operating system version.
            ## @return a string
            ## 
            def operating_system
                return @operating_system
            end
            ## 
            ## Sets the operatingSystem property value. The connector machine's operating system version.
            ## @param value Value to set for the operating_system property.
            ## @return a void
            ## 
            def operating_system=(value)
                @operating_system = value
            end
            ## 
            ## Gets the registeredDateTime property value. The DateTimeOffset when the connector was registered.
            ## @return a date_time
            ## 
            def registered_date_time
                return @registered_date_time
            end
            ## 
            ## Sets the registeredDateTime property value. The DateTimeOffset when the connector was registered.
            ## @param value Value to set for the registered_date_time property.
            ## @return a void
            ## 
            def registered_date_time=(value)
                @registered_date_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("appVersion", @app_version)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("fullyQualifiedDomainName", @fully_qualified_domain_name)
                writer.write_object_value("location", @location)
                writer.write_string_value("operatingSystem", @operating_system)
                writer.write_date_time_value("registeredDateTime", @registered_date_time)
            end
        end
    end
end

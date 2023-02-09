require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ManagedApp < MicrosoftGraph::Models::MobileApp
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # A managed (MAM) application's availability.
            @app_availability
            ## 
            # The Application's version.
            @version
            ## 
            ## Gets the appAvailability property value. A managed (MAM) application's availability.
            ## @return a managed_app_availability
            ## 
            def app_availability
                return @app_availability
            end
            ## 
            ## Sets the appAvailability property value. A managed (MAM) application's availability.
            ## @param value Value to set for the app_availability property.
            ## @return a void
            ## 
            def app_availability=(value)
                @app_availability = value
            end
            ## 
            ## Instantiates a new ManagedApp and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.managedApp"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a managed_app
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.managedAndroidLobApp"
                            return ManagedAndroidLobApp.new
                        when "#microsoft.graph.managedAndroidStoreApp"
                            return ManagedAndroidStoreApp.new
                        when "#microsoft.graph.managedIOSLobApp"
                            return ManagedIOSLobApp.new
                        when "#microsoft.graph.managedIOSStoreApp"
                            return ManagedIOSStoreApp.new
                        when "#microsoft.graph.managedMobileLobApp"
                            return ManagedMobileLobApp.new
                    end
                end
                return ManagedApp.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "appAvailability" => lambda {|n| @app_availability = n.get_enum_value(MicrosoftGraph::Models::ManagedAppAvailability) },
                    "version" => lambda {|n| @version = n.get_string_value() },
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
                writer.write_enum_value("appAvailability", @app_availability)
                writer.write_string_value("version", @version)
            end
            ## 
            ## Gets the version property value. The Application's version.
            ## @return a string
            ## 
            def version
                return @version
            end
            ## 
            ## Sets the version property value. The Application's version.
            ## @param value Value to set for the version property.
            ## @return a void
            ## 
            def version=(value)
                @version = value
            end
        end
    end
end

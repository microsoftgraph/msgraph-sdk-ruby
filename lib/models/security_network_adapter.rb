require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SecurityNetworkAdapter < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Indicates whether the network adapter is selected for capturing and analyzing network traffic.
            @is_enabled
            ## 
            # The name of the network adapter.
            @name
            ## 
            ## Instantiates a new SecurityNetworkAdapter and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_network_adapter
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityNetworkAdapter.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "isEnabled" => lambda {|n| @is_enabled = n.get_boolean_value() },
                    "name" => lambda {|n| @name = n.get_string_value() },
                })
            end
            ## 
            ## Gets the isEnabled property value. Indicates whether the network adapter is selected for capturing and analyzing network traffic.
            ## @return a boolean
            ## 
            def is_enabled
                return @is_enabled
            end
            ## 
            ## Sets the isEnabled property value. Indicates whether the network adapter is selected for capturing and analyzing network traffic.
            ## @param value Value to set for the isEnabled property.
            ## @return a void
            ## 
            def is_enabled=(value)
                @is_enabled = value
            end
            ## 
            ## Gets the name property value. The name of the network adapter.
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. The name of the network adapter.
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("isEnabled", @is_enabled)
                writer.write_string_value("name", @name)
            end
        end
    end
end

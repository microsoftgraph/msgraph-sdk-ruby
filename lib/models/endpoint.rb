require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Endpoint < MicrosoftGraph::Models::DirectoryObject
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The capability property
            @capability
            ## 
            # The providerId property
            @provider_id
            ## 
            # The providerName property
            @provider_name
            ## 
            # The providerResourceId property
            @provider_resource_id
            ## 
            # The uri property
            @uri
            ## 
            ## Gets the capability property value. The capability property
            ## @return a string
            ## 
            def capability
                return @capability
            end
            ## 
            ## Sets the capability property value. The capability property
            ## @param value Value to set for the capability property.
            ## @return a void
            ## 
            def capability=(value)
                @capability = value
            end
            ## 
            ## Instantiates a new endpoint and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.endpoint"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a endpoint
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Endpoint.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "capability" => lambda {|n| @capability = n.get_string_value() },
                    "providerId" => lambda {|n| @provider_id = n.get_string_value() },
                    "providerName" => lambda {|n| @provider_name = n.get_string_value() },
                    "providerResourceId" => lambda {|n| @provider_resource_id = n.get_string_value() },
                    "uri" => lambda {|n| @uri = n.get_string_value() },
                })
            end
            ## 
            ## Gets the providerId property value. The providerId property
            ## @return a string
            ## 
            def provider_id
                return @provider_id
            end
            ## 
            ## Sets the providerId property value. The providerId property
            ## @param value Value to set for the provider_id property.
            ## @return a void
            ## 
            def provider_id=(value)
                @provider_id = value
            end
            ## 
            ## Gets the providerName property value. The providerName property
            ## @return a string
            ## 
            def provider_name
                return @provider_name
            end
            ## 
            ## Sets the providerName property value. The providerName property
            ## @param value Value to set for the provider_name property.
            ## @return a void
            ## 
            def provider_name=(value)
                @provider_name = value
            end
            ## 
            ## Gets the providerResourceId property value. The providerResourceId property
            ## @return a string
            ## 
            def provider_resource_id
                return @provider_resource_id
            end
            ## 
            ## Sets the providerResourceId property value. The providerResourceId property
            ## @param value Value to set for the provider_resource_id property.
            ## @return a void
            ## 
            def provider_resource_id=(value)
                @provider_resource_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("capability", @capability)
                writer.write_string_value("providerId", @provider_id)
                writer.write_string_value("providerName", @provider_name)
                writer.write_string_value("providerResourceId", @provider_resource_id)
                writer.write_string_value("uri", @uri)
            end
            ## 
            ## Gets the uri property value. The uri property
            ## @return a string
            ## 
            def uri
                return @uri
            end
            ## 
            ## Sets the uri property value. The uri property
            ## @param value Value to set for the uri property.
            ## @return a void
            ## 
            def uri=(value)
                @uri = value
            end
        end
    end
end

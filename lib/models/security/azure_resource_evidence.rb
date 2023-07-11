require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './security'

module MicrosoftGraph
    module Models
        module Security
            class AzureResourceEvidence < MicrosoftGraph::Models::Security::AlertEvidence
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The unique identifier for the Azure resource.
                @resource_id
                ## 
                # The name of the resource.
                @resource_name
                ## 
                # The type of the resource.
                @resource_type
                ## 
                ## Instantiates a new azureResourceEvidence and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a azure_resource_evidence
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return AzureResourceEvidence.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "resourceId" => lambda {|n| @resource_id = n.get_string_value() },
                        "resourceName" => lambda {|n| @resource_name = n.get_string_value() },
                        "resourceType" => lambda {|n| @resource_type = n.get_string_value() },
                    })
                end
                ## 
                ## Gets the resourceId property value. The unique identifier for the Azure resource.
                ## @return a string
                ## 
                def resource_id
                    return @resource_id
                end
                ## 
                ## Sets the resourceId property value. The unique identifier for the Azure resource.
                ## @param value Value to set for the resource_id property.
                ## @return a void
                ## 
                def resource_id=(value)
                    @resource_id = value
                end
                ## 
                ## Gets the resourceName property value. The name of the resource.
                ## @return a string
                ## 
                def resource_name
                    return @resource_name
                end
                ## 
                ## Sets the resourceName property value. The name of the resource.
                ## @param value Value to set for the resource_name property.
                ## @return a void
                ## 
                def resource_name=(value)
                    @resource_name = value
                end
                ## 
                ## Gets the resourceType property value. The type of the resource.
                ## @return a string
                ## 
                def resource_type
                    return @resource_type
                end
                ## 
                ## Sets the resourceType property value. The type of the resource.
                ## @param value Value to set for the resource_type property.
                ## @return a void
                ## 
                def resource_type=(value)
                    @resource_type = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_string_value("resourceId", @resource_id)
                    writer.write_string_value("resourceName", @resource_name)
                    writer.write_string_value("resourceType", @resource_type)
                end
            end
        end
    end
end

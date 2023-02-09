require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './external_connectors'

module MicrosoftGraph
    module Models
        module ExternalConnectors
            class ExternalItem < MicrosoftGraph::Models::Entity
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # An array of access control entries. Each entry specifies the access granted to a user or group. Required.
                @acl
                ## 
                # A plain-text  representation of the contents of the item. The text in this property is full-text indexed. Optional.
                @content
                ## 
                # A property bag with the properties of the item. The properties MUST conform to the schema defined for the externalConnection. Required.
                @properties
                ## 
                ## Gets the acl property value. An array of access control entries. Each entry specifies the access granted to a user or group. Required.
                ## @return a acl
                ## 
                def acl
                    return @acl
                end
                ## 
                ## Sets the acl property value. An array of access control entries. Each entry specifies the access granted to a user or group. Required.
                ## @param value Value to set for the acl property.
                ## @return a void
                ## 
                def acl=(value)
                    @acl = value
                end
                ## 
                ## Instantiates a new externalItem and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Gets the content property value. A plain-text  representation of the contents of the item. The text in this property is full-text indexed. Optional.
                ## @return a external_item_content
                ## 
                def content
                    return @content
                end
                ## 
                ## Sets the content property value. A plain-text  representation of the contents of the item. The text in this property is full-text indexed. Optional.
                ## @param value Value to set for the content property.
                ## @return a void
                ## 
                def content=(value)
                    @content = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a external_item
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return ExternalItem.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "acl" => lambda {|n| @acl = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ExternalConnectors::Acl.create_from_discriminator_value(pn) }) },
                        "content" => lambda {|n| @content = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ExternalConnectors::ExternalItemContent.create_from_discriminator_value(pn) }) },
                        "properties" => lambda {|n| @properties = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ExternalConnectors::Properties.create_from_discriminator_value(pn) }) },
                    })
                end
                ## 
                ## Gets the properties property value. A property bag with the properties of the item. The properties MUST conform to the schema defined for the externalConnection. Required.
                ## @return a properties
                ## 
                def properties
                    return @properties
                end
                ## 
                ## Sets the properties property value. A property bag with the properties of the item. The properties MUST conform to the schema defined for the externalConnection. Required.
                ## @param value Value to set for the properties property.
                ## @return a void
                ## 
                def properties=(value)
                    @properties = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_collection_of_object_values("acl", @acl)
                    writer.write_object_value("content", @content)
                    writer.write_object_value("properties", @properties)
                end
            end
        end
    end
end

require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class DirectoryDefinition < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The discoverabilities property
            @discoverabilities
            ## 
            # Represents the discovery date and time using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @discovery_date_time
            ## 
            # Name of the directory. Must be unique within the synchronization schema. Not nullable.
            @name
            ## 
            # Collection of objects supported by the directory.
            @objects
            ## 
            # Whether this object is read-only.
            @read_only
            ## 
            # Read only value that indicates version discovered. null if discovery has not yet occurred.
            @version
            ## 
            ## Instantiates a new directoryDefinition and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a directory_definition
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DirectoryDefinition.new
            end
            ## 
            ## Gets the discoverabilities property value. The discoverabilities property
            ## @return a directory_definition_discoverabilities
            ## 
            def discoverabilities
                return @discoverabilities
            end
            ## 
            ## Sets the discoverabilities property value. The discoverabilities property
            ## @param value Value to set for the discoverabilities property.
            ## @return a void
            ## 
            def discoverabilities=(value)
                @discoverabilities = value
            end
            ## 
            ## Gets the discoveryDateTime property value. Represents the discovery date and time using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def discovery_date_time
                return @discovery_date_time
            end
            ## 
            ## Sets the discoveryDateTime property value. Represents the discovery date and time using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the discoveryDateTime property.
            ## @return a void
            ## 
            def discovery_date_time=(value)
                @discovery_date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "discoverabilities" => lambda {|n| @discoverabilities = n.get_enum_value(MicrosoftGraph::Models::DirectoryDefinitionDiscoverabilities) },
                    "discoveryDateTime" => lambda {|n| @discovery_date_time = n.get_date_time_value() },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "objects" => lambda {|n| @objects = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ObjectDefinition.create_from_discriminator_value(pn) }) },
                    "readOnly" => lambda {|n| @read_only = n.get_boolean_value() },
                    "version" => lambda {|n| @version = n.get_string_value() },
                })
            end
            ## 
            ## Gets the name property value. Name of the directory. Must be unique within the synchronization schema. Not nullable.
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. Name of the directory. Must be unique within the synchronization schema. Not nullable.
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
            end
            ## 
            ## Gets the objects property value. Collection of objects supported by the directory.
            ## @return a object_definition
            ## 
            def objects
                return @objects
            end
            ## 
            ## Sets the objects property value. Collection of objects supported by the directory.
            ## @param value Value to set for the objects property.
            ## @return a void
            ## 
            def objects=(value)
                @objects = value
            end
            ## 
            ## Gets the readOnly property value. Whether this object is read-only.
            ## @return a boolean
            ## 
            def read_only
                return @read_only
            end
            ## 
            ## Sets the readOnly property value. Whether this object is read-only.
            ## @param value Value to set for the readOnly property.
            ## @return a void
            ## 
            def read_only=(value)
                @read_only = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("discoverabilities", @discoverabilities)
                writer.write_date_time_value("discoveryDateTime", @discovery_date_time)
                writer.write_string_value("name", @name)
                writer.write_collection_of_object_values("objects", @objects)
                writer.write_boolean_value("readOnly", @read_only)
                writer.write_string_value("version", @version)
            end
            ## 
            ## Gets the version property value. Read only value that indicates version discovered. null if discovery has not yet occurred.
            ## @return a string
            ## 
            def version
                return @version
            end
            ## 
            ## Sets the version property value. Read only value that indicates version discovered. null if discovery has not yet occurred.
            ## @param value Value to set for the version property.
            ## @return a void
            ## 
            def version=(value)
                @version = value
            end
        end
    end
end

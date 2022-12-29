require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraph::Models
    class DirectoryRoleTemplate < MicrosoftGraph::Models::DirectoryObject
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The description to set for the directory role. Read-only.
        @description
        ## 
        # The display name to set for the directory role. Read-only.
        @display_name
        ## 
        ## Instantiates a new DirectoryRoleTemplate and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.directoryRoleTemplate"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a directory_role_template
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return DirectoryRoleTemplate.new
        end
        ## 
        ## Gets the description property value. The description to set for the directory role. Read-only.
        ## @return a string
        ## 
        def description
            return @description
        end
        ## 
        ## Sets the description property value. The description to set for the directory role. Read-only.
        ## @param value Value to set for the description property.
        ## @return a void
        ## 
        def description=(value)
            @description = value
        end
        ## 
        ## Gets the displayName property value. The display name to set for the directory role. Read-only.
        ## @return a string
        ## 
        def display_name
            return @display_name
        end
        ## 
        ## Sets the displayName property value. The display name to set for the directory role. Read-only.
        ## @param value Value to set for the displayName property.
        ## @return a void
        ## 
        def display_name=(value)
            @display_name = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "description" => lambda {|n| @description = n.get_string_value() },
                "displayName" => lambda {|n| @display_name = n.get_string_value() },
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
            writer.write_string_value("description", @description)
            writer.write_string_value("displayName", @display_name)
        end
    end
end

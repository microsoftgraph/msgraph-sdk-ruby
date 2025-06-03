require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class DriveProtectionUnit < MicrosoftGraph::Models::ProtectionUnitBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # ID of the directory object.
            @directory_object_id
            ## 
            # Display name of the directory object.
            @display_name
            ## 
            # Email associated with the directory object.
            @email
            ## 
            ## Instantiates a new DriveProtectionUnit and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.driveProtectionUnit"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a drive_protection_unit
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DriveProtectionUnit.new
            end
            ## 
            ## Gets the directoryObjectId property value. ID of the directory object.
            ## @return a string
            ## 
            def directory_object_id
                return @directory_object_id
            end
            ## 
            ## Sets the directoryObjectId property value. ID of the directory object.
            ## @param value Value to set for the directoryObjectId property.
            ## @return a void
            ## 
            def directory_object_id=(value)
                @directory_object_id = value
            end
            ## 
            ## Gets the displayName property value. Display name of the directory object.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Display name of the directory object.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the email property value. Email associated with the directory object.
            ## @return a string
            ## 
            def email
                return @email
            end
            ## 
            ## Sets the email property value. Email associated with the directory object.
            ## @param value Value to set for the email property.
            ## @return a void
            ## 
            def email=(value)
                @email = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "directoryObjectId" => lambda {|n| @directory_object_id = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "email" => lambda {|n| @email = n.get_string_value() },
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
                writer.write_string_value("directoryObjectId", @directory_object_id)
            end
        end
    end
end

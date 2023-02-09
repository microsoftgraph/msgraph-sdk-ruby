require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Folder
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Number of children contained immediately within this container.
            @child_count
            ## 
            # The OdataType property
            @odata_type
            ## 
            # A collection of properties defining the recommended view for the folder.
            @view
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the childCount property value. Number of children contained immediately within this container.
            ## @return a integer
            ## 
            def child_count
                return @child_count
            end
            ## 
            ## Sets the childCount property value. Number of children contained immediately within this container.
            ## @param value Value to set for the child_count property.
            ## @return a void
            ## 
            def child_count=(value)
                @child_count = value
            end
            ## 
            ## Instantiates a new folder and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a folder
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Folder.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "childCount" => lambda {|n| @child_count = n.get_number_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "view" => lambda {|n| @view = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::FolderView.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_number_value("childCount", @child_count)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("view", @view)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the view property value. A collection of properties defining the recommended view for the folder.
            ## @return a folder_view
            ## 
            def view
                return @view
            end
            ## 
            ## Sets the view property value. A collection of properties defining the recommended view for the folder.
            ## @param value Value to set for the view property.
            ## @return a void
            ## 
            def view=(value)
                @view = value
            end
        end
    end
end

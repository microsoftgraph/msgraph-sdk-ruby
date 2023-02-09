require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class FolderView
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The method by which the folder should be sorted.
            @sort_by
            ## 
            # If true, indicates that items should be sorted in descending order. Otherwise, items should be sorted ascending.
            @sort_order
            ## 
            # The type of view that should be used to represent the folder.
            @view_type
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
            ## Instantiates a new folderView and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a folder_view
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return FolderView.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "sortBy" => lambda {|n| @sort_by = n.get_string_value() },
                    "sortOrder" => lambda {|n| @sort_order = n.get_string_value() },
                    "viewType" => lambda {|n| @view_type = n.get_string_value() },
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
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("sortBy", @sort_by)
                writer.write_string_value("sortOrder", @sort_order)
                writer.write_string_value("viewType", @view_type)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the sortBy property value. The method by which the folder should be sorted.
            ## @return a string
            ## 
            def sort_by
                return @sort_by
            end
            ## 
            ## Sets the sortBy property value. The method by which the folder should be sorted.
            ## @param value Value to set for the sort_by property.
            ## @return a void
            ## 
            def sort_by=(value)
                @sort_by = value
            end
            ## 
            ## Gets the sortOrder property value. If true, indicates that items should be sorted in descending order. Otherwise, items should be sorted ascending.
            ## @return a string
            ## 
            def sort_order
                return @sort_order
            end
            ## 
            ## Sets the sortOrder property value. If true, indicates that items should be sorted in descending order. Otherwise, items should be sorted ascending.
            ## @param value Value to set for the sort_order property.
            ## @return a void
            ## 
            def sort_order=(value)
                @sort_order = value
            end
            ## 
            ## Gets the viewType property value. The type of view that should be used to represent the folder.
            ## @return a string
            ## 
            def view_type
                return @view_type
            end
            ## 
            ## Sets the viewType property value. The type of view that should be used to represent the folder.
            ## @param value Value to set for the view_type property.
            ## @return a void
            ## 
            def view_type=(value)
                @view_type = value
            end
        end
    end
end

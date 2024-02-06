require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class RecentNotebook
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The name of the notebook.
            @display_name
            ## 
            # The date and time when the notebook was last modified. The timestamp represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            @last_accessed_time
            ## 
            # Links for opening the notebook. The oneNoteClientURL link opens the notebook in the OneNote client, if it's installed. The oneNoteWebURL link opens the notebook in OneNote on the web.
            @links
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The backend store where the Notebook resides, either OneDriveForBusiness or OneDrive.
            @source_service
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the additionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new recentNotebook and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a recent_notebook
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return RecentNotebook.new
            end
            ## 
            ## Gets the displayName property value. The name of the notebook.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The name of the notebook.
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
                return {
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "lastAccessedTime" => lambda {|n| @last_accessed_time = n.get_date_time_value() },
                    "links" => lambda {|n| @links = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::RecentNotebookLinks.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "sourceService" => lambda {|n| @source_service = n.get_enum_value(MicrosoftGraph::Models::OnenoteSourceService) },
                }
            end
            ## 
            ## Gets the lastAccessedTime property value. The date and time when the notebook was last modified. The timestamp represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            ## @return a date_time
            ## 
            def last_accessed_time
                return @last_accessed_time
            end
            ## 
            ## Sets the lastAccessedTime property value. The date and time when the notebook was last modified. The timestamp represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            ## @param value Value to set for the lastAccessedTime property.
            ## @return a void
            ## 
            def last_accessed_time=(value)
                @last_accessed_time = value
            end
            ## 
            ## Gets the links property value. Links for opening the notebook. The oneNoteClientURL link opens the notebook in the OneNote client, if it's installed. The oneNoteWebURL link opens the notebook in OneNote on the web.
            ## @return a recent_notebook_links
            ## 
            def links
                return @links
            end
            ## 
            ## Sets the links property value. Links for opening the notebook. The oneNoteClientURL link opens the notebook in the OneNote client, if it's installed. The oneNoteWebURL link opens the notebook in OneNote on the web.
            ## @param value Value to set for the links property.
            ## @return a void
            ## 
            def links=(value)
                @links = value
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
            ## @param value Value to set for the @odata.type property.
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
                writer.write_string_value("displayName", @display_name) unless @display_name.nil?
                writer.write_date_time_value("lastAccessedTime", @last_accessed_time) unless @last_accessed_time.nil?
                writer.write_object_value("links", @links) unless @links.nil?
                writer.write_string_value("@odata.type", @odata_type) unless @odata_type.nil?
                writer.write_enum_value("sourceService", @source_service) unless @source_service.nil?
                writer.write_additional_data(@additional_data) unless @additional_data.nil?
            end
            ## 
            ## Gets the sourceService property value. The backend store where the Notebook resides, either OneDriveForBusiness or OneDrive.
            ## @return a onenote_source_service
            ## 
            def source_service
                return @source_service
            end
            ## 
            ## Sets the sourceService property value. The backend store where the Notebook resides, either OneDriveForBusiness or OneDrive.
            ## @param value Value to set for the sourceService property.
            ## @return a void
            ## 
            def source_service=(value)
                @source_service = value
            end
        end
    end
end

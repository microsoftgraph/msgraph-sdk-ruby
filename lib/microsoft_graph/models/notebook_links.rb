require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraph::Models
    class NotebookLinks
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The OdataType property
        @odata_type
        ## 
        # Opens the notebook in the OneNote native client if it's installed.
        @one_note_client_url
        ## 
        # Opens the notebook in OneNote on the web.
        @one_note_web_url
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
        ## Instantiates a new notebookLinks and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a notebook_links
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return NotebookLinks.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "oneNoteClientUrl" => lambda {|n| @one_note_client_url = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ExternalLink.create_from_discriminator_value(pn) }) },
                "oneNoteWebUrl" => lambda {|n| @one_note_web_url = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ExternalLink.create_from_discriminator_value(pn) }) },
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
        ## @param value Value to set for the OdataType property.
        ## @return a void
        ## 
        def odata_type=(value)
            @odata_type = value
        end
        ## 
        ## Gets the oneNoteClientUrl property value. Opens the notebook in the OneNote native client if it's installed.
        ## @return a external_link
        ## 
        def one_note_client_url
            return @one_note_client_url
        end
        ## 
        ## Sets the oneNoteClientUrl property value. Opens the notebook in the OneNote native client if it's installed.
        ## @param value Value to set for the oneNoteClientUrl property.
        ## @return a void
        ## 
        def one_note_client_url=(value)
            @one_note_client_url = value
        end
        ## 
        ## Gets the oneNoteWebUrl property value. Opens the notebook in OneNote on the web.
        ## @return a external_link
        ## 
        def one_note_web_url
            return @one_note_web_url
        end
        ## 
        ## Sets the oneNoteWebUrl property value. Opens the notebook in OneNote on the web.
        ## @param value Value to set for the oneNoteWebUrl property.
        ## @return a void
        ## 
        def one_note_web_url=(value)
            @one_note_web_url = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_object_value("oneNoteClientUrl", @one_note_client_url)
            writer.write_object_value("oneNoteWebUrl", @one_note_web_url)
            writer.write_additional_data(@additional_data)
        end
    end
end

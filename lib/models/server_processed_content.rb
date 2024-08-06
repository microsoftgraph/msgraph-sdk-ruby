require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ServerProcessedContent
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # A key-value map where keys are string identifiers and values are rich text with HTML format. SharePoint servers treat the values as HTML content and run services like safety checks, search index and link fixup on them.
            @html_strings
            ## 
            # A key-value map where keys are string identifiers and values are image sources. SharePoint servers treat the values as image sources and run services like search index and link fixup on them.
            @image_sources
            ## 
            # A key-value map where keys are string identifiers and values are links. SharePoint servers treat the values as links and run services like link fixup on them.
            @links
            ## 
            # The OdataType property
            @odata_type
            ## 
            # A key-value map where keys are string identifiers and values are strings that should be search indexed.
            @searchable_plain_texts
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new ServerProcessedContent and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a server_processed_content
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ServerProcessedContent.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "htmlStrings" => lambda {|n| @html_strings = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::MetaDataKeyStringPair.create_from_discriminator_value(pn) }) },
                    "imageSources" => lambda {|n| @image_sources = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::MetaDataKeyStringPair.create_from_discriminator_value(pn) }) },
                    "links" => lambda {|n| @links = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::MetaDataKeyStringPair.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "searchablePlainTexts" => lambda {|n| @searchable_plain_texts = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::MetaDataKeyStringPair.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the htmlStrings property value. A key-value map where keys are string identifiers and values are rich text with HTML format. SharePoint servers treat the values as HTML content and run services like safety checks, search index and link fixup on them.
            ## @return a meta_data_key_string_pair
            ## 
            def html_strings
                return @html_strings
            end
            ## 
            ## Sets the htmlStrings property value. A key-value map where keys are string identifiers and values are rich text with HTML format. SharePoint servers treat the values as HTML content and run services like safety checks, search index and link fixup on them.
            ## @param value Value to set for the htmlStrings property.
            ## @return a void
            ## 
            def html_strings=(value)
                @html_strings = value
            end
            ## 
            ## Gets the imageSources property value. A key-value map where keys are string identifiers and values are image sources. SharePoint servers treat the values as image sources and run services like search index and link fixup on them.
            ## @return a meta_data_key_string_pair
            ## 
            def image_sources
                return @image_sources
            end
            ## 
            ## Sets the imageSources property value. A key-value map where keys are string identifiers and values are image sources. SharePoint servers treat the values as image sources and run services like search index and link fixup on them.
            ## @param value Value to set for the imageSources property.
            ## @return a void
            ## 
            def image_sources=(value)
                @image_sources = value
            end
            ## 
            ## Gets the links property value. A key-value map where keys are string identifiers and values are links. SharePoint servers treat the values as links and run services like link fixup on them.
            ## @return a meta_data_key_string_pair
            ## 
            def links
                return @links
            end
            ## 
            ## Sets the links property value. A key-value map where keys are string identifiers and values are links. SharePoint servers treat the values as links and run services like link fixup on them.
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
            ## Gets the searchablePlainTexts property value. A key-value map where keys are string identifiers and values are strings that should be search indexed.
            ## @return a meta_data_key_string_pair
            ## 
            def searchable_plain_texts
                return @searchable_plain_texts
            end
            ## 
            ## Sets the searchablePlainTexts property value. A key-value map where keys are string identifiers and values are strings that should be search indexed.
            ## @param value Value to set for the searchablePlainTexts property.
            ## @return a void
            ## 
            def searchable_plain_texts=(value)
                @searchable_plain_texts = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_collection_of_object_values("htmlStrings", @html_strings)
                writer.write_collection_of_object_values("imageSources", @image_sources)
                writer.write_collection_of_object_values("links", @links)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_collection_of_object_values("searchablePlainTexts", @searchable_plain_texts)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end

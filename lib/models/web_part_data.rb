require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class WebPartData
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The dataVersion property
            @data_version
            ## 
            # The description property
            @description
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The properties property
            @properties
            ## 
            # The serverProcessedContent property
            @server_processed_content
            ## 
            # The title property
            @title
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
            ## Instantiates a new WebPartData and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a web_part_data
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WebPartData.new
            end
            ## 
            ## Gets the dataVersion property value. The dataVersion property
            ## @return a string
            ## 
            def data_version
                return @data_version
            end
            ## 
            ## Sets the dataVersion property value. The dataVersion property
            ## @param value Value to set for the dataVersion property.
            ## @return a void
            ## 
            def data_version=(value)
                @data_version = value
            end
            ## 
            ## Gets the description property value. The description property
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The description property
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "dataVersion" => lambda {|n| @data_version = n.get_string_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "properties" => lambda {|n| @properties = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                    "serverProcessedContent" => lambda {|n| @server_processed_content = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ServerProcessedContent.create_from_discriminator_value(pn) }) },
                    "title" => lambda {|n| @title = n.get_string_value() },
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
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the properties property value. The properties property
            ## @return a json
            ## 
            def properties
                return @properties
            end
            ## 
            ## Sets the properties property value. The properties property
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
                writer.write_string_value("dataVersion", @data_version)
                writer.write_string_value("description", @description)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("properties", @properties)
                writer.write_object_value("serverProcessedContent", @server_processed_content)
                writer.write_string_value("title", @title)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the serverProcessedContent property value. The serverProcessedContent property
            ## @return a server_processed_content
            ## 
            def server_processed_content
                return @server_processed_content
            end
            ## 
            ## Sets the serverProcessedContent property value. The serverProcessedContent property
            ## @param value Value to set for the serverProcessedContent property.
            ## @return a void
            ## 
            def server_processed_content=(value)
                @server_processed_content = value
            end
            ## 
            ## Gets the title property value. The title property
            ## @return a string
            ## 
            def title
                return @title
            end
            ## 
            ## Sets the title property value. The title property
            ## @param value Value to set for the title property.
            ## @return a void
            ## 
            def title=(value)
                @title = value
            end
        end
    end
end

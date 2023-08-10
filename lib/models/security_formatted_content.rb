require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SecurityFormattedContent
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The content of this formattedContent.
            @content
            ## 
            # The format of the content. The possible values are: text, html, markdown, unknownFutureValue.
            @format
            ## 
            # The OdataType property
            @odata_type
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
            ## Instantiates a new securityFormattedContent and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the content property value. The content of this formattedContent.
            ## @return a string
            ## 
            def content
                return @content
            end
            ## 
            ## Sets the content property value. The content of this formattedContent.
            ## @param value Value to set for the content property.
            ## @return a void
            ## 
            def content=(value)
                @content = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_formatted_content
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityFormattedContent.new
            end
            ## 
            ## Gets the format property value. The format of the content. The possible values are: text, html, markdown, unknownFutureValue.
            ## @return a security_content_format
            ## 
            def format
                return @format
            end
            ## 
            ## Sets the format property value. The format of the content. The possible values are: text, html, markdown, unknownFutureValue.
            ## @param value Value to set for the format property.
            ## @return a void
            ## 
            def format=(value)
                @format = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "content" => lambda {|n| @content = n.get_string_value() },
                    "format" => lambda {|n| @format = n.get_enum_value(MicrosoftGraph::Models::SecurityContentFormat) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("content", @content)
                writer.write_enum_value("format", @format)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end

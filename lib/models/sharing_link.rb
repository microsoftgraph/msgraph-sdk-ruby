require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SharingLink
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The app the link is associated with.
            @application
            ## 
            # The OdataType property
            @odata_type
            ## 
            # If true then the user can only use this link to view the item on the web, and cannot use it to download the contents of the item. Only for OneDrive for Business and SharePoint.
            @prevents_download
            ## 
            # The scope of the link represented by this permission. Value anonymous indicates the link is usable by anyone, organization indicates the link is only usable for users signed into the same tenant.
            @scope
            ## 
            # The type of the link created.
            @type
            ## 
            # For embed links, this property contains the HTML code for an <iframe> element that will embed the item in a webpage.
            @web_html
            ## 
            # A URL that opens the item in the browser on the OneDrive website.
            @web_url
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
            ## Gets the application property value. The app the link is associated with.
            ## @return a identity
            ## 
            def application
                return @application
            end
            ## 
            ## Sets the application property value. The app the link is associated with.
            ## @param value Value to set for the application property.
            ## @return a void
            ## 
            def application=(value)
                @application = value
            end
            ## 
            ## Instantiates a new sharingLink and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a sharing_link
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SharingLink.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "application" => lambda {|n| @application = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Identity.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "preventsDownload" => lambda {|n| @prevents_download = n.get_boolean_value() },
                    "scope" => lambda {|n| @scope = n.get_string_value() },
                    "type" => lambda {|n| @type = n.get_string_value() },
                    "webHtml" => lambda {|n| @web_html = n.get_string_value() },
                    "webUrl" => lambda {|n| @web_url = n.get_string_value() },
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
            ## Gets the preventsDownload property value. If true then the user can only use this link to view the item on the web, and cannot use it to download the contents of the item. Only for OneDrive for Business and SharePoint.
            ## @return a boolean
            ## 
            def prevents_download
                return @prevents_download
            end
            ## 
            ## Sets the preventsDownload property value. If true then the user can only use this link to view the item on the web, and cannot use it to download the contents of the item. Only for OneDrive for Business and SharePoint.
            ## @param value Value to set for the prevents_download property.
            ## @return a void
            ## 
            def prevents_download=(value)
                @prevents_download = value
            end
            ## 
            ## Gets the scope property value. The scope of the link represented by this permission. Value anonymous indicates the link is usable by anyone, organization indicates the link is only usable for users signed into the same tenant.
            ## @return a string
            ## 
            def scope
                return @scope
            end
            ## 
            ## Sets the scope property value. The scope of the link represented by this permission. Value anonymous indicates the link is usable by anyone, organization indicates the link is only usable for users signed into the same tenant.
            ## @param value Value to set for the scope property.
            ## @return a void
            ## 
            def scope=(value)
                @scope = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("application", @application)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_boolean_value("preventsDownload", @prevents_download)
                writer.write_string_value("scope", @scope)
                writer.write_string_value("type", @type)
                writer.write_string_value("webHtml", @web_html)
                writer.write_string_value("webUrl", @web_url)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the type property value. The type of the link created.
            ## @return a string
            ## 
            def type
                return @type
            end
            ## 
            ## Sets the type property value. The type of the link created.
            ## @param value Value to set for the type property.
            ## @return a void
            ## 
            def type=(value)
                @type = value
            end
            ## 
            ## Gets the webHtml property value. For embed links, this property contains the HTML code for an <iframe> element that will embed the item in a webpage.
            ## @return a string
            ## 
            def web_html
                return @web_html
            end
            ## 
            ## Sets the webHtml property value. For embed links, this property contains the HTML code for an <iframe> element that will embed the item in a webpage.
            ## @param value Value to set for the web_html property.
            ## @return a void
            ## 
            def web_html=(value)
                @web_html = value
            end
            ## 
            ## Gets the webUrl property value. A URL that opens the item in the browser on the OneDrive website.
            ## @return a string
            ## 
            def web_url
                return @web_url
            end
            ## 
            ## Sets the webUrl property value. A URL that opens the item in the browser on the OneDrive website.
            ## @param value Value to set for the web_url property.
            ## @return a void
            ## 
            def web_url=(value)
                @web_url = value
            end
        end
    end
end

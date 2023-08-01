require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class BrowserSharedCookieHistory
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The comment for the shared cookie.
            @comment
            ## 
            # The name of the cookie.
            @display_name
            ## 
            # Controls whether a cookie is a host-only or domain cookie.
            @host_only
            ## 
            # The URL of the cookie.
            @host_or_domain
            ## 
            # The lastModifiedBy property
            @last_modified_by
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The path of the cookie.
            @path
            ## 
            # The date and time when the cookie was last published.
            @published_date_time
            ## 
            # Specifies how the cookies are shared between Microsoft Edge and Internet Explorer. The possible values are: microsoftEdge, internetExplorer11, both, unknownFutureValue.
            @source_environment
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
            ## Gets the comment property value. The comment for the shared cookie.
            ## @return a string
            ## 
            def comment
                return @comment
            end
            ## 
            ## Sets the comment property value. The comment for the shared cookie.
            ## @param value Value to set for the comment property.
            ## @return a void
            ## 
            def comment=(value)
                @comment = value
            end
            ## 
            ## Instantiates a new browserSharedCookieHistory and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a browser_shared_cookie_history
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return BrowserSharedCookieHistory.new
            end
            ## 
            ## Gets the displayName property value. The name of the cookie.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The name of the cookie.
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
                    "comment" => lambda {|n| @comment = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "hostOnly" => lambda {|n| @host_only = n.get_boolean_value() },
                    "hostOrDomain" => lambda {|n| @host_or_domain = n.get_string_value() },
                    "lastModifiedBy" => lambda {|n| @last_modified_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "path" => lambda {|n| @path = n.get_string_value() },
                    "publishedDateTime" => lambda {|n| @published_date_time = n.get_date_time_value() },
                    "sourceEnvironment" => lambda {|n| @source_environment = n.get_enum_value(MicrosoftGraph::Models::BrowserSharedCookieSourceEnvironment) },
                }
            end
            ## 
            ## Gets the hostOnly property value. Controls whether a cookie is a host-only or domain cookie.
            ## @return a boolean
            ## 
            def host_only
                return @host_only
            end
            ## 
            ## Sets the hostOnly property value. Controls whether a cookie is a host-only or domain cookie.
            ## @param value Value to set for the hostOnly property.
            ## @return a void
            ## 
            def host_only=(value)
                @host_only = value
            end
            ## 
            ## Gets the hostOrDomain property value. The URL of the cookie.
            ## @return a string
            ## 
            def host_or_domain
                return @host_or_domain
            end
            ## 
            ## Sets the hostOrDomain property value. The URL of the cookie.
            ## @param value Value to set for the hostOrDomain property.
            ## @return a void
            ## 
            def host_or_domain=(value)
                @host_or_domain = value
            end
            ## 
            ## Gets the lastModifiedBy property value. The lastModifiedBy property
            ## @return a identity_set
            ## 
            def last_modified_by
                return @last_modified_by
            end
            ## 
            ## Sets the lastModifiedBy property value. The lastModifiedBy property
            ## @param value Value to set for the lastModifiedBy property.
            ## @return a void
            ## 
            def last_modified_by=(value)
                @last_modified_by = value
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
            ## Gets the path property value. The path of the cookie.
            ## @return a string
            ## 
            def path
                return @path
            end
            ## 
            ## Sets the path property value. The path of the cookie.
            ## @param value Value to set for the path property.
            ## @return a void
            ## 
            def path=(value)
                @path = value
            end
            ## 
            ## Gets the publishedDateTime property value. The date and time when the cookie was last published.
            ## @return a date_time
            ## 
            def published_date_time
                return @published_date_time
            end
            ## 
            ## Sets the publishedDateTime property value. The date and time when the cookie was last published.
            ## @param value Value to set for the publishedDateTime property.
            ## @return a void
            ## 
            def published_date_time=(value)
                @published_date_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("comment", @comment)
                writer.write_string_value("displayName", @display_name)
                writer.write_boolean_value("hostOnly", @host_only)
                writer.write_string_value("hostOrDomain", @host_or_domain)
                writer.write_object_value("lastModifiedBy", @last_modified_by)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("path", @path)
                writer.write_date_time_value("publishedDateTime", @published_date_time)
                writer.write_enum_value("sourceEnvironment", @source_environment)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the sourceEnvironment property value. Specifies how the cookies are shared between Microsoft Edge and Internet Explorer. The possible values are: microsoftEdge, internetExplorer11, both, unknownFutureValue.
            ## @return a browser_shared_cookie_source_environment
            ## 
            def source_environment
                return @source_environment
            end
            ## 
            ## Sets the sourceEnvironment property value. Specifies how the cookies are shared between Microsoft Edge and Internet Explorer. The possible values are: microsoftEdge, internetExplorer11, both, unknownFutureValue.
            ## @param value Value to set for the sourceEnvironment property.
            ## @return a void
            ## 
            def source_environment=(value)
                @source_environment = value
            end
        end
    end
end

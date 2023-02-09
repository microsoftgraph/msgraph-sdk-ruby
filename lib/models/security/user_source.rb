require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './security'

module MicrosoftGraph
    module Models
        module Security
            class UserSource < MicrosoftGraph::Models::Security::DataSource
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Email address of the user's mailbox.
                @email
                ## 
                # Specifies which sources are included in this group. Possible values are: mailbox, site.
                @included_sources
                ## 
                # The URL of the user's OneDrive for Business site. Read-only.
                @site_web_url
                ## 
                ## Instantiates a new UserSource and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                    @odata_type = "#microsoft.graph.security.userSource"
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a user_source
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return UserSource.new
                end
                ## 
                ## Gets the email property value. Email address of the user's mailbox.
                ## @return a string
                ## 
                def email
                    return @email
                end
                ## 
                ## Sets the email property value. Email address of the user's mailbox.
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
                        "email" => lambda {|n| @email = n.get_string_value() },
                        "includedSources" => lambda {|n| @included_sources = n.get_enum_value(MicrosoftGraph::Models::Security::SourceType) },
                        "siteWebUrl" => lambda {|n| @site_web_url = n.get_string_value() },
                    })
                end
                ## 
                ## Gets the includedSources property value. Specifies which sources are included in this group. Possible values are: mailbox, site.
                ## @return a source_type
                ## 
                def included_sources
                    return @included_sources
                end
                ## 
                ## Sets the includedSources property value. Specifies which sources are included in this group. Possible values are: mailbox, site.
                ## @param value Value to set for the included_sources property.
                ## @return a void
                ## 
                def included_sources=(value)
                    @included_sources = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_string_value("email", @email)
                    writer.write_enum_value("includedSources", @included_sources)
                    writer.write_string_value("siteWebUrl", @site_web_url)
                end
                ## 
                ## Gets the siteWebUrl property value. The URL of the user's OneDrive for Business site. Read-only.
                ## @return a string
                ## 
                def site_web_url
                    return @site_web_url
                end
                ## 
                ## Sets the siteWebUrl property value. The URL of the user's OneDrive for Business site. Read-only.
                ## @param value Value to set for the site_web_url property.
                ## @return a void
                ## 
                def site_web_url=(value)
                    @site_web_url = value
                end
            end
        end
    end
end

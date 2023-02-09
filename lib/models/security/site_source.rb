require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './security'

module MicrosoftGraph
    module Models
        module Security
            class SiteSource < MicrosoftGraph::Models::Security::DataSource
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The site property
                @site
                ## 
                ## Instantiates a new SiteSource and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                    @odata_type = "#microsoft.graph.security.siteSource"
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a site_source
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return SiteSource.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "site" => lambda {|n| @site = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Site.create_from_discriminator_value(pn) }) },
                    })
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_object_value("site", @site)
                end
                ## 
                ## Gets the site property value. The site property
                ## @return a site
                ## 
                def site
                    return @site
                end
                ## 
                ## Sets the site property value. The site property
                ## @param value Value to set for the site property.
                ## @return a void
                ## 
                def site=(value)
                    @site = value
                end
            end
        end
    end
end

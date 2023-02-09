require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './security'

module MicrosoftGraph
    module Models
        module Security
            class UrlEvidence < MicrosoftGraph::Models::Security::AlertEvidence
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The Unique Resource Locator (URL).
                @url
                ## 
                ## Instantiates a new UrlEvidence and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a url_evidence
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return UrlEvidence.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "url" => lambda {|n| @url = n.get_string_value() },
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
                    writer.write_string_value("url", @url)
                end
                ## 
                ## Gets the url property value. The Unique Resource Locator (URL).
                ## @return a string
                ## 
                def url
                    return @url
                end
                ## 
                ## Sets the url property value. The Unique Resource Locator (URL).
                ## @param value Value to set for the url property.
                ## @return a void
                ## 
                def url=(value)
                    @url = value
                end
            end
        end
    end
end

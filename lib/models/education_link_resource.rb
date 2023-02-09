require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class EducationLinkResource < MicrosoftGraph::Models::EducationResource
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # URL to the resource.
            @link
            ## 
            ## Instantiates a new EducationLinkResource and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.educationLinkResource"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a education_link_resource
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EducationLinkResource.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "link" => lambda {|n| @link = n.get_string_value() },
                })
            end
            ## 
            ## Gets the link property value. URL to the resource.
            ## @return a string
            ## 
            def link
                return @link
            end
            ## 
            ## Sets the link property value. URL to the resource.
            ## @param value Value to set for the link property.
            ## @return a void
            ## 
            def link=(value)
                @link = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("link", @link)
            end
        end
    end
end

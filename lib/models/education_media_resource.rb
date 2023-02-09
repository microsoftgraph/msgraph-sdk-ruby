require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class EducationMediaResource < MicrosoftGraph::Models::EducationResource
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Location of the file on shared point folder. Required
            @file_url
            ## 
            ## Instantiates a new EducationMediaResource and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.educationMediaResource"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a education_media_resource
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EducationMediaResource.new
            end
            ## 
            ## Gets the fileUrl property value. Location of the file on shared point folder. Required
            ## @return a string
            ## 
            def file_url
                return @file_url
            end
            ## 
            ## Sets the fileUrl property value. Location of the file on shared point folder. Required
            ## @param value Value to set for the file_url property.
            ## @return a void
            ## 
            def file_url=(value)
                @file_url = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "fileUrl" => lambda {|n| @file_url = n.get_string_value() },
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
                writer.write_string_value("fileUrl", @file_url)
            end
        end
    end
end

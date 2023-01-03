require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraph::Models
    class EducationPowerPointResource < MicrosoftGraph::Models::EducationResource
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Location of the file on disk.
        @file_url
        ## 
        ## Instantiates a new EducationPowerPointResource and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.educationPowerPointResource"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a education_power_point_resource
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return EducationPowerPointResource.new
        end
        ## 
        ## Gets the fileUrl property value. Location of the file on disk.
        ## @return a string
        ## 
        def file_url
            return @file_url
        end
        ## 
        ## Sets the fileUrl property value. Location of the file on disk.
        ## @param value Value to set for the fileUrl property.
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

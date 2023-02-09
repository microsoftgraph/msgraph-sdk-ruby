require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class FileAssessmentRequest < MicrosoftGraph::Models::ThreatAssessmentRequest
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Base64 encoded file content. The file content cannot fetch back because it isn't stored.
            @content_data
            ## 
            # The file name.
            @file_name
            ## 
            ## Instantiates a new FileAssessmentRequest and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.fileAssessmentRequest"
            end
            ## 
            ## Gets the contentData property value. Base64 encoded file content. The file content cannot fetch back because it isn't stored.
            ## @return a string
            ## 
            def content_data
                return @content_data
            end
            ## 
            ## Sets the contentData property value. Base64 encoded file content. The file content cannot fetch back because it isn't stored.
            ## @param value Value to set for the content_data property.
            ## @return a void
            ## 
            def content_data=(value)
                @content_data = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a file_assessment_request
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return FileAssessmentRequest.new
            end
            ## 
            ## Gets the fileName property value. The file name.
            ## @return a string
            ## 
            def file_name
                return @file_name
            end
            ## 
            ## Sets the fileName property value. The file name.
            ## @param value Value to set for the file_name property.
            ## @return a void
            ## 
            def file_name=(value)
                @file_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "contentData" => lambda {|n| @content_data = n.get_string_value() },
                    "fileName" => lambda {|n| @file_name = n.get_string_value() },
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
                writer.write_string_value("contentData", @content_data)
                writer.write_string_value("fileName", @file_name)
            end
        end
    end
end

require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ProcessingError < MicrosoftGraph::Models::ClassificationError
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The errorType property
            @error_type
            ## 
            ## Instantiates a new ProcessingError and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a processing_error
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ProcessingError.new
            end
            ## 
            ## Gets the errorType property value. The errorType property
            ## @return a content_processing_error_type
            ## 
            def error_type
                return @error_type
            end
            ## 
            ## Sets the errorType property value. The errorType property
            ## @param value Value to set for the errorType property.
            ## @return a void
            ## 
            def error_type=(value)
                @error_type = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "errorType" => lambda {|n| @error_type = n.get_enum_value(MicrosoftGraph::Models::ContentProcessingErrorType) },
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
                writer.write_enum_value("errorType", @error_type)
            end
        end
    end
end

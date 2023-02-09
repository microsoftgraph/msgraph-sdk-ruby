require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AccessPackageTextInputQuestion < MicrosoftGraph::Models::AccessPackageQuestion
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Indicates whether the answer will be in single or multiple line format.
            @is_single_line_question
            ## 
            # The regular expression pattern which any answer to this question must match.
            @regex_pattern
            ## 
            ## Instantiates a new AccessPackageTextInputQuestion and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.accessPackageTextInputQuestion"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a access_package_text_input_question
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AccessPackageTextInputQuestion.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "isSingleLineQuestion" => lambda {|n| @is_single_line_question = n.get_boolean_value() },
                    "regexPattern" => lambda {|n| @regex_pattern = n.get_string_value() },
                })
            end
            ## 
            ## Gets the isSingleLineQuestion property value. Indicates whether the answer will be in single or multiple line format.
            ## @return a boolean
            ## 
            def is_single_line_question
                return @is_single_line_question
            end
            ## 
            ## Sets the isSingleLineQuestion property value. Indicates whether the answer will be in single or multiple line format.
            ## @param value Value to set for the is_single_line_question property.
            ## @return a void
            ## 
            def is_single_line_question=(value)
                @is_single_line_question = value
            end
            ## 
            ## Gets the regexPattern property value. The regular expression pattern which any answer to this question must match.
            ## @return a string
            ## 
            def regex_pattern
                return @regex_pattern
            end
            ## 
            ## Sets the regexPattern property value. The regular expression pattern which any answer to this question must match.
            ## @param value Value to set for the regex_pattern property.
            ## @return a void
            ## 
            def regex_pattern=(value)
                @regex_pattern = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("isSingleLineQuestion", @is_single_line_question)
                writer.write_string_value("regexPattern", @regex_pattern)
            end
        end
    end
end

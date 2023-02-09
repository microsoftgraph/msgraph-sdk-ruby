require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ThreatAssessmentResult < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @created_date_time
            ## 
            # The result message for each threat assessment.
            @message
            ## 
            # The threat assessment result type. Possible values are: checkPolicy, rescan.
            @result_type
            ## 
            ## Instantiates a new threatAssessmentResult and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a threat_assessment_result
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ThreatAssessmentResult.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "message" => lambda {|n| @message = n.get_string_value() },
                    "resultType" => lambda {|n| @result_type = n.get_enum_value(MicrosoftGraph::Models::ThreatAssessmentResultType) },
                })
            end
            ## 
            ## Gets the message property value. The result message for each threat assessment.
            ## @return a string
            ## 
            def message
                return @message
            end
            ## 
            ## Sets the message property value. The result message for each threat assessment.
            ## @param value Value to set for the message property.
            ## @return a void
            ## 
            def message=(value)
                @message = value
            end
            ## 
            ## Gets the resultType property value. The threat assessment result type. Possible values are: checkPolicy, rescan.
            ## @return a threat_assessment_result_type
            ## 
            def result_type
                return @result_type
            end
            ## 
            ## Sets the resultType property value. The threat assessment result type. Possible values are: checkPolicy, rescan.
            ## @param value Value to set for the result_type property.
            ## @return a void
            ## 
            def result_type=(value)
                @result_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("message", @message)
                writer.write_enum_value("resultType", @result_type)
            end
        end
    end
end

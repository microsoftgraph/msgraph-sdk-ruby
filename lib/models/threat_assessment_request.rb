require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ThreatAssessmentRequest < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The category property
            @category
            ## 
            # The content type of threat assessment. Possible values are: mail, url, file.
            @content_type
            ## 
            # The threat assessment request creator.
            @created_by
            ## 
            # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @created_date_time
            ## 
            # The expectedAssessment property
            @expected_assessment
            ## 
            # The source of the threat assessment request. Possible values are: administrator.
            @request_source
            ## 
            # A collection of threat assessment results. Read-only. By default, a GET /threatAssessmentRequests/{id} does not return this property unless you apply $expand on it.
            @results
            ## 
            # The assessment process status. Possible values are: pending, completed.
            @status
            ## 
            ## Gets the category property value. The category property
            ## @return a threat_category
            ## 
            def category
                return @category
            end
            ## 
            ## Sets the category property value. The category property
            ## @param value Value to set for the category property.
            ## @return a void
            ## 
            def category=(value)
                @category = value
            end
            ## 
            ## Instantiates a new threatAssessmentRequest and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the contentType property value. The content type of threat assessment. Possible values are: mail, url, file.
            ## @return a threat_assessment_content_type
            ## 
            def content_type
                return @content_type
            end
            ## 
            ## Sets the contentType property value. The content type of threat assessment. Possible values are: mail, url, file.
            ## @param value Value to set for the content_type property.
            ## @return a void
            ## 
            def content_type=(value)
                @content_type = value
            end
            ## 
            ## Gets the createdBy property value. The threat assessment request creator.
            ## @return a identity_set
            ## 
            def created_by
                return @created_by
            end
            ## 
            ## Sets the createdBy property value. The threat assessment request creator.
            ## @param value Value to set for the created_by property.
            ## @return a void
            ## 
            def created_by=(value)
                @created_by = value
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
            ## @return a threat_assessment_request
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.emailFileAssessmentRequest"
                            return EmailFileAssessmentRequest.new
                        when "#microsoft.graph.fileAssessmentRequest"
                            return FileAssessmentRequest.new
                        when "#microsoft.graph.mailAssessmentRequest"
                            return MailAssessmentRequest.new
                        when "#microsoft.graph.urlAssessmentRequest"
                            return UrlAssessmentRequest.new
                    end
                end
                return ThreatAssessmentRequest.new
            end
            ## 
            ## Gets the expectedAssessment property value. The expectedAssessment property
            ## @return a threat_expected_assessment
            ## 
            def expected_assessment
                return @expected_assessment
            end
            ## 
            ## Sets the expectedAssessment property value. The expectedAssessment property
            ## @param value Value to set for the expected_assessment property.
            ## @return a void
            ## 
            def expected_assessment=(value)
                @expected_assessment = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "category" => lambda {|n| @category = n.get_enum_value(MicrosoftGraph::Models::ThreatCategory) },
                    "contentType" => lambda {|n| @content_type = n.get_enum_value(MicrosoftGraph::Models::ThreatAssessmentContentType) },
                    "createdBy" => lambda {|n| @created_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "expectedAssessment" => lambda {|n| @expected_assessment = n.get_enum_value(MicrosoftGraph::Models::ThreatExpectedAssessment) },
                    "requestSource" => lambda {|n| @request_source = n.get_enum_value(MicrosoftGraph::Models::ThreatAssessmentRequestSource) },
                    "results" => lambda {|n| @results = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ThreatAssessmentResult.create_from_discriminator_value(pn) }) },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraph::Models::ThreatAssessmentStatus) },
                })
            end
            ## 
            ## Gets the requestSource property value. The source of the threat assessment request. Possible values are: administrator.
            ## @return a threat_assessment_request_source
            ## 
            def request_source
                return @request_source
            end
            ## 
            ## Sets the requestSource property value. The source of the threat assessment request. Possible values are: administrator.
            ## @param value Value to set for the request_source property.
            ## @return a void
            ## 
            def request_source=(value)
                @request_source = value
            end
            ## 
            ## Gets the results property value. A collection of threat assessment results. Read-only. By default, a GET /threatAssessmentRequests/{id} does not return this property unless you apply $expand on it.
            ## @return a threat_assessment_result
            ## 
            def results
                return @results
            end
            ## 
            ## Sets the results property value. A collection of threat assessment results. Read-only. By default, a GET /threatAssessmentRequests/{id} does not return this property unless you apply $expand on it.
            ## @param value Value to set for the results property.
            ## @return a void
            ## 
            def results=(value)
                @results = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("category", @category)
                writer.write_enum_value("contentType", @content_type)
                writer.write_object_value("createdBy", @created_by)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_enum_value("expectedAssessment", @expected_assessment)
                writer.write_enum_value("requestSource", @request_source)
                writer.write_collection_of_object_values("results", @results)
                writer.write_enum_value("status", @status)
            end
            ## 
            ## Gets the status property value. The assessment process status. Possible values are: pending, completed.
            ## @return a threat_assessment_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The assessment process status. Possible values are: pending, completed.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
        end
    end
end

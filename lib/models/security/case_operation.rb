require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './security'

module MicrosoftGraph
    module Models
        module Security
            class CaseOperation < MicrosoftGraph::Models::Entity
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The type of action the operation represents. Possible values are: addToReviewSet,applyTags,contentExport,convertToPdf,estimateStatistics, purgeData
                @action
                ## 
                # The date and time the operation was completed.
                @completed_date_time
                ## 
                # The user that created the operation.
                @created_by
                ## 
                # The date and time the operation was created.
                @created_date_time
                ## 
                # The progress of the operation.
                @percent_progress
                ## 
                # Contains success and failure-specific result information.
                @result_info
                ## 
                # The status of the case operation. Possible values are: notStarted, submissionFailed, running, succeeded, partiallySucceeded, failed.
                @status
                ## 
                ## Gets the action property value. The type of action the operation represents. Possible values are: addToReviewSet,applyTags,contentExport,convertToPdf,estimateStatistics, purgeData
                ## @return a case_action
                ## 
                def action
                    return @action
                end
                ## 
                ## Sets the action property value. The type of action the operation represents. Possible values are: addToReviewSet,applyTags,contentExport,convertToPdf,estimateStatistics, purgeData
                ## @param value Value to set for the action property.
                ## @return a void
                ## 
                def action=(value)
                    @action = value
                end
                ## 
                ## Gets the completedDateTime property value. The date and time the operation was completed.
                ## @return a date_time
                ## 
                def completed_date_time
                    return @completed_date_time
                end
                ## 
                ## Sets the completedDateTime property value. The date and time the operation was completed.
                ## @param value Value to set for the completed_date_time property.
                ## @return a void
                ## 
                def completed_date_time=(value)
                    @completed_date_time = value
                end
                ## 
                ## Instantiates a new caseOperation and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Gets the createdBy property value. The user that created the operation.
                ## @return a identity_set
                ## 
                def created_by
                    return @created_by
                end
                ## 
                ## Sets the createdBy property value. The user that created the operation.
                ## @param value Value to set for the created_by property.
                ## @return a void
                ## 
                def created_by=(value)
                    @created_by = value
                end
                ## 
                ## Gets the createdDateTime property value. The date and time the operation was created.
                ## @return a date_time
                ## 
                def created_date_time
                    return @created_date_time
                end
                ## 
                ## Sets the createdDateTime property value. The date and time the operation was created.
                ## @param value Value to set for the created_date_time property.
                ## @return a void
                ## 
                def created_date_time=(value)
                    @created_date_time = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a case_operation
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    mapping_value_node = parse_node.get_child_node("@odata.type")
                    unless mapping_value_node.nil? then
                        mapping_value = mapping_value_node.get_string_value
                        case mapping_value
                            when "#microsoft.graph.security.ediscoveryAddToReviewSetOperation"
                                return EdiscoveryAddToReviewSetOperation.new
                            when "#microsoft.graph.security.ediscoveryEstimateOperation"
                                return EdiscoveryEstimateOperation.new
                            when "#microsoft.graph.security.ediscoveryHoldOperation"
                                return EdiscoveryHoldOperation.new
                            when "#microsoft.graph.security.ediscoveryIndexOperation"
                                return EdiscoveryIndexOperation.new
                            when "#microsoft.graph.security.ediscoveryPurgeDataOperation"
                                return EdiscoveryPurgeDataOperation.new
                            when "#microsoft.graph.security.ediscoveryTagOperation"
                                return EdiscoveryTagOperation.new
                        end
                    end
                    return CaseOperation.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "action" => lambda {|n| @action = n.get_enum_value(MicrosoftGraph::Models::Security::CaseAction) },
                        "completedDateTime" => lambda {|n| @completed_date_time = n.get_date_time_value() },
                        "createdBy" => lambda {|n| @created_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                        "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                        "percentProgress" => lambda {|n| @percent_progress = n.get_number_value() },
                        "resultInfo" => lambda {|n| @result_info = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ResultInfo.create_from_discriminator_value(pn) }) },
                        "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraph::Models::Security::CaseOperationStatus) },
                    })
                end
                ## 
                ## Gets the percentProgress property value. The progress of the operation.
                ## @return a integer
                ## 
                def percent_progress
                    return @percent_progress
                end
                ## 
                ## Sets the percentProgress property value. The progress of the operation.
                ## @param value Value to set for the percent_progress property.
                ## @return a void
                ## 
                def percent_progress=(value)
                    @percent_progress = value
                end
                ## 
                ## Gets the resultInfo property value. Contains success and failure-specific result information.
                ## @return a result_info
                ## 
                def result_info
                    return @result_info
                end
                ## 
                ## Sets the resultInfo property value. Contains success and failure-specific result information.
                ## @param value Value to set for the result_info property.
                ## @return a void
                ## 
                def result_info=(value)
                    @result_info = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_enum_value("action", @action)
                    writer.write_date_time_value("completedDateTime", @completed_date_time)
                    writer.write_object_value("createdBy", @created_by)
                    writer.write_date_time_value("createdDateTime", @created_date_time)
                    writer.write_number_value("percentProgress", @percent_progress)
                    writer.write_object_value("resultInfo", @result_info)
                    writer.write_enum_value("status", @status)
                end
                ## 
                ## Gets the status property value. The status of the case operation. Possible values are: notStarted, submissionFailed, running, succeeded, partiallySucceeded, failed.
                ## @return a case_operation_status
                ## 
                def status
                    return @status
                end
                ## 
                ## Sets the status property value. The status of the case operation. Possible values are: notStarted, submissionFailed, running, succeeded, partiallySucceeded, failed.
                ## @param value Value to set for the status property.
                ## @return a void
                ## 
                def status=(value)
                    @status = value
                end
            end
        end
    end
end

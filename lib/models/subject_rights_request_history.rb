require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SubjectRightsRequestHistory
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Identity of the user who changed the  subject rights request.
            @changed_by
            ## 
            # Data and time when the entity was changed.
            @event_date_time
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The stage when the entity was changed. Possible values are: contentRetrieval, contentReview, generateReport, contentDeletion, caseResolved, unknownFutureValue.
            @stage
            ## 
            # The status of the stage when the entity was changed. Possible values are: notStarted, current, completed, failed, unknownFutureValue.
            @stage_status
            ## 
            # Type of history.
            @type
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the changedBy property value. Identity of the user who changed the  subject rights request.
            ## @return a identity_set
            ## 
            def changed_by
                return @changed_by
            end
            ## 
            ## Sets the changedBy property value. Identity of the user who changed the  subject rights request.
            ## @param value Value to set for the changed_by property.
            ## @return a void
            ## 
            def changed_by=(value)
                @changed_by = value
            end
            ## 
            ## Instantiates a new subjectRightsRequestHistory and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a subject_rights_request_history
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SubjectRightsRequestHistory.new
            end
            ## 
            ## Gets the eventDateTime property value. Data and time when the entity was changed.
            ## @return a date_time
            ## 
            def event_date_time
                return @event_date_time
            end
            ## 
            ## Sets the eventDateTime property value. Data and time when the entity was changed.
            ## @param value Value to set for the event_date_time property.
            ## @return a void
            ## 
            def event_date_time=(value)
                @event_date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "changedBy" => lambda {|n| @changed_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "eventDateTime" => lambda {|n| @event_date_time = n.get_date_time_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "stage" => lambda {|n| @stage = n.get_enum_value(MicrosoftGraph::Models::SubjectRightsRequestStage) },
                    "stageStatus" => lambda {|n| @stage_status = n.get_enum_value(MicrosoftGraph::Models::SubjectRightsRequestStageStatus) },
                    "type" => lambda {|n| @type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("changedBy", @changed_by)
                writer.write_date_time_value("eventDateTime", @event_date_time)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("stage", @stage)
                writer.write_enum_value("stageStatus", @stage_status)
                writer.write_string_value("type", @type)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the stage property value. The stage when the entity was changed. Possible values are: contentRetrieval, contentReview, generateReport, contentDeletion, caseResolved, unknownFutureValue.
            ## @return a subject_rights_request_stage
            ## 
            def stage
                return @stage
            end
            ## 
            ## Sets the stage property value. The stage when the entity was changed. Possible values are: contentRetrieval, contentReview, generateReport, contentDeletion, caseResolved, unknownFutureValue.
            ## @param value Value to set for the stage property.
            ## @return a void
            ## 
            def stage=(value)
                @stage = value
            end
            ## 
            ## Gets the stageStatus property value. The status of the stage when the entity was changed. Possible values are: notStarted, current, completed, failed, unknownFutureValue.
            ## @return a subject_rights_request_stage_status
            ## 
            def stage_status
                return @stage_status
            end
            ## 
            ## Sets the stageStatus property value. The status of the stage when the entity was changed. Possible values are: notStarted, current, completed, failed, unknownFutureValue.
            ## @param value Value to set for the stage_status property.
            ## @return a void
            ## 
            def stage_status=(value)
                @stage_status = value
            end
            ## 
            ## Gets the type property value. Type of history.
            ## @return a string
            ## 
            def type
                return @type
            end
            ## 
            ## Sets the type property value. Type of history.
            ## @param value Value to set for the type property.
            ## @return a void
            ## 
            def type=(value)
                @type = value
            end
        end
    end
end

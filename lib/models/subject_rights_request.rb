require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SubjectRightsRequest < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The approvers property
            @approvers
            ## 
            # Identity that the request is assigned to.
            @assigned_to
            ## 
            # The date and time when the request was closed. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @closed_date_time
            ## 
            # The collaborators property
            @collaborators
            ## 
            # The contentQuery property
            @content_query
            ## 
            # Identity information for the entity that created the request.
            @created_by
            ## 
            # The date and time when the request was created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @created_date_time
            ## 
            # Information about the data subject.
            @data_subject
            ## 
            # The type of the data subject. Possible values are: customer, currentEmployee, formerEmployee, prospectiveEmployee, student, teacher, faculty, other, unknownFutureValue.
            @data_subject_type
            ## 
            # Description for the request.
            @description
            ## 
            # The name of the request.
            @display_name
            ## 
            # The externalId property
            @external_id
            ## 
            # Collection of history change events.
            @history
            ## 
            # The includeAllVersions property
            @include_all_versions
            ## 
            # The includeAuthoredContent property
            @include_authored_content
            ## 
            # Insight about the request.
            @insight
            ## 
            # The date and time when the request is internally due. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @internal_due_date_time
            ## 
            # Identity information for the entity that last modified the request.
            @last_modified_by
            ## 
            # The date and time when the request was last modified. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @last_modified_date_time
            ## 
            # The mailboxlocations property
            @mailboxlocations
            ## 
            # List of notes associcated with the request.
            @notes
            ## 
            # The pauseAfterEstimate property
            @pause_after_estimate
            ## 
            # List of regulations that this request will fulfill.
            @regulations
            ## 
            # The sitelocations property
            @sitelocations
            ## 
            # Information about the different stages for the request.
            @stages
            ## 
            # The status of the request.. Possible values are: active, closed, unknownFutureValue.
            @status
            ## 
            # Information about the Microsoft Teams team that was created for the request.
            @team
            ## 
            # The type of the request. Possible values are: export, delete,  access, tagForAction, unknownFutureValue.
            @type
            ## 
            ## Gets the approvers property value. The approvers property
            ## @return a user
            ## 
            def approvers
                return @approvers
            end
            ## 
            ## Sets the approvers property value. The approvers property
            ## @param value Value to set for the approvers property.
            ## @return a void
            ## 
            def approvers=(value)
                @approvers = value
            end
            ## 
            ## Gets the assignedTo property value. Identity that the request is assigned to.
            ## @return a identity
            ## 
            def assigned_to
                return @assigned_to
            end
            ## 
            ## Sets the assignedTo property value. Identity that the request is assigned to.
            ## @param value Value to set for the assignedTo property.
            ## @return a void
            ## 
            def assigned_to=(value)
                @assigned_to = value
            end
            ## 
            ## Gets the closedDateTime property value. The date and time when the request was closed. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def closed_date_time
                return @closed_date_time
            end
            ## 
            ## Sets the closedDateTime property value. The date and time when the request was closed. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the closedDateTime property.
            ## @return a void
            ## 
            def closed_date_time=(value)
                @closed_date_time = value
            end
            ## 
            ## Gets the collaborators property value. The collaborators property
            ## @return a user
            ## 
            def collaborators
                return @collaborators
            end
            ## 
            ## Sets the collaborators property value. The collaborators property
            ## @param value Value to set for the collaborators property.
            ## @return a void
            ## 
            def collaborators=(value)
                @collaborators = value
            end
            ## 
            ## Instantiates a new subjectRightsRequest and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the contentQuery property value. The contentQuery property
            ## @return a string
            ## 
            def content_query
                return @content_query
            end
            ## 
            ## Sets the contentQuery property value. The contentQuery property
            ## @param value Value to set for the contentQuery property.
            ## @return a void
            ## 
            def content_query=(value)
                @content_query = value
            end
            ## 
            ## Gets the createdBy property value. Identity information for the entity that created the request.
            ## @return a identity_set
            ## 
            def created_by
                return @created_by
            end
            ## 
            ## Sets the createdBy property value. Identity information for the entity that created the request.
            ## @param value Value to set for the createdBy property.
            ## @return a void
            ## 
            def created_by=(value)
                @created_by = value
            end
            ## 
            ## Gets the createdDateTime property value. The date and time when the request was created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The date and time when the request was created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a subject_rights_request
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SubjectRightsRequest.new
            end
            ## 
            ## Gets the dataSubject property value. Information about the data subject.
            ## @return a data_subject
            ## 
            def data_subject
                return @data_subject
            end
            ## 
            ## Sets the dataSubject property value. Information about the data subject.
            ## @param value Value to set for the dataSubject property.
            ## @return a void
            ## 
            def data_subject=(value)
                @data_subject = value
            end
            ## 
            ## Gets the dataSubjectType property value. The type of the data subject. Possible values are: customer, currentEmployee, formerEmployee, prospectiveEmployee, student, teacher, faculty, other, unknownFutureValue.
            ## @return a data_subject_type
            ## 
            def data_subject_type
                return @data_subject_type
            end
            ## 
            ## Sets the dataSubjectType property value. The type of the data subject. Possible values are: customer, currentEmployee, formerEmployee, prospectiveEmployee, student, teacher, faculty, other, unknownFutureValue.
            ## @param value Value to set for the dataSubjectType property.
            ## @return a void
            ## 
            def data_subject_type=(value)
                @data_subject_type = value
            end
            ## 
            ## Gets the description property value. Description for the request.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. Description for the request.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. The name of the request.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The name of the request.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the externalId property value. The externalId property
            ## @return a string
            ## 
            def external_id
                return @external_id
            end
            ## 
            ## Sets the externalId property value. The externalId property
            ## @param value Value to set for the externalId property.
            ## @return a void
            ## 
            def external_id=(value)
                @external_id = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "approvers" => lambda {|n| @approvers = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::User.create_from_discriminator_value(pn) }) },
                    "assignedTo" => lambda {|n| @assigned_to = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Identity.create_from_discriminator_value(pn) }) },
                    "closedDateTime" => lambda {|n| @closed_date_time = n.get_date_time_value() },
                    "collaborators" => lambda {|n| @collaborators = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::User.create_from_discriminator_value(pn) }) },
                    "contentQuery" => lambda {|n| @content_query = n.get_string_value() },
                    "createdBy" => lambda {|n| @created_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "dataSubject" => lambda {|n| @data_subject = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DataSubject.create_from_discriminator_value(pn) }) },
                    "dataSubjectType" => lambda {|n| @data_subject_type = n.get_enum_value(MicrosoftGraph::Models::DataSubjectType) },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "externalId" => lambda {|n| @external_id = n.get_string_value() },
                    "history" => lambda {|n| @history = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SubjectRightsRequestHistory.create_from_discriminator_value(pn) }) },
                    "includeAllVersions" => lambda {|n| @include_all_versions = n.get_boolean_value() },
                    "includeAuthoredContent" => lambda {|n| @include_authored_content = n.get_boolean_value() },
                    "insight" => lambda {|n| @insight = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SubjectRightsRequestDetail.create_from_discriminator_value(pn) }) },
                    "internalDueDateTime" => lambda {|n| @internal_due_date_time = n.get_date_time_value() },
                    "lastModifiedBy" => lambda {|n| @last_modified_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "mailboxlocations" => lambda {|n| @mailboxlocations = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SubjectRightsRequestMailboxLocation.create_from_discriminator_value(pn) }) },
                    "notes" => lambda {|n| @notes = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AuthoredNote.create_from_discriminator_value(pn) }) },
                    "pauseAfterEstimate" => lambda {|n| @pause_after_estimate = n.get_boolean_value() },
                    "regulations" => lambda {|n| @regulations = n.get_collection_of_primitive_values(String) },
                    "sitelocations" => lambda {|n| @sitelocations = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SubjectRightsRequestSiteLocation.create_from_discriminator_value(pn) }) },
                    "stages" => lambda {|n| @stages = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SubjectRightsRequestStageDetail.create_from_discriminator_value(pn) }) },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraph::Models::SubjectRightsRequestStatus) },
                    "team" => lambda {|n| @team = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Team.create_from_discriminator_value(pn) }) },
                    "type" => lambda {|n| @type = n.get_enum_value(MicrosoftGraph::Models::SubjectRightsRequestType) },
                })
            end
            ## 
            ## Gets the history property value. Collection of history change events.
            ## @return a subject_rights_request_history
            ## 
            def history
                return @history
            end
            ## 
            ## Sets the history property value. Collection of history change events.
            ## @param value Value to set for the history property.
            ## @return a void
            ## 
            def history=(value)
                @history = value
            end
            ## 
            ## Gets the includeAllVersions property value. The includeAllVersions property
            ## @return a boolean
            ## 
            def include_all_versions
                return @include_all_versions
            end
            ## 
            ## Sets the includeAllVersions property value. The includeAllVersions property
            ## @param value Value to set for the includeAllVersions property.
            ## @return a void
            ## 
            def include_all_versions=(value)
                @include_all_versions = value
            end
            ## 
            ## Gets the includeAuthoredContent property value. The includeAuthoredContent property
            ## @return a boolean
            ## 
            def include_authored_content
                return @include_authored_content
            end
            ## 
            ## Sets the includeAuthoredContent property value. The includeAuthoredContent property
            ## @param value Value to set for the includeAuthoredContent property.
            ## @return a void
            ## 
            def include_authored_content=(value)
                @include_authored_content = value
            end
            ## 
            ## Gets the insight property value. Insight about the request.
            ## @return a subject_rights_request_detail
            ## 
            def insight
                return @insight
            end
            ## 
            ## Sets the insight property value. Insight about the request.
            ## @param value Value to set for the insight property.
            ## @return a void
            ## 
            def insight=(value)
                @insight = value
            end
            ## 
            ## Gets the internalDueDateTime property value. The date and time when the request is internally due. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def internal_due_date_time
                return @internal_due_date_time
            end
            ## 
            ## Sets the internalDueDateTime property value. The date and time when the request is internally due. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the internalDueDateTime property.
            ## @return a void
            ## 
            def internal_due_date_time=(value)
                @internal_due_date_time = value
            end
            ## 
            ## Gets the lastModifiedBy property value. Identity information for the entity that last modified the request.
            ## @return a identity_set
            ## 
            def last_modified_by
                return @last_modified_by
            end
            ## 
            ## Sets the lastModifiedBy property value. Identity information for the entity that last modified the request.
            ## @param value Value to set for the lastModifiedBy property.
            ## @return a void
            ## 
            def last_modified_by=(value)
                @last_modified_by = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. The date and time when the request was last modified. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. The date and time when the request was last modified. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the lastModifiedDateTime property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the mailboxlocations property value. The mailboxlocations property
            ## @return a subject_rights_request_mailbox_location
            ## 
            def mailboxlocations
                return @mailboxlocations
            end
            ## 
            ## Sets the mailboxlocations property value. The mailboxlocations property
            ## @param value Value to set for the mailboxlocations property.
            ## @return a void
            ## 
            def mailboxlocations=(value)
                @mailboxlocations = value
            end
            ## 
            ## Gets the notes property value. List of notes associcated with the request.
            ## @return a authored_note
            ## 
            def notes
                return @notes
            end
            ## 
            ## Sets the notes property value. List of notes associcated with the request.
            ## @param value Value to set for the notes property.
            ## @return a void
            ## 
            def notes=(value)
                @notes = value
            end
            ## 
            ## Gets the pauseAfterEstimate property value. The pauseAfterEstimate property
            ## @return a boolean
            ## 
            def pause_after_estimate
                return @pause_after_estimate
            end
            ## 
            ## Sets the pauseAfterEstimate property value. The pauseAfterEstimate property
            ## @param value Value to set for the pauseAfterEstimate property.
            ## @return a void
            ## 
            def pause_after_estimate=(value)
                @pause_after_estimate = value
            end
            ## 
            ## Gets the regulations property value. List of regulations that this request will fulfill.
            ## @return a string
            ## 
            def regulations
                return @regulations
            end
            ## 
            ## Sets the regulations property value. List of regulations that this request will fulfill.
            ## @param value Value to set for the regulations property.
            ## @return a void
            ## 
            def regulations=(value)
                @regulations = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("approvers", @approvers)
                writer.write_object_value("assignedTo", @assigned_to)
                writer.write_date_time_value("closedDateTime", @closed_date_time)
                writer.write_collection_of_object_values("collaborators", @collaborators)
                writer.write_string_value("contentQuery", @content_query)
                writer.write_object_value("createdBy", @created_by)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_object_value("dataSubject", @data_subject)
                writer.write_enum_value("dataSubjectType", @data_subject_type)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("externalId", @external_id)
                writer.write_collection_of_object_values("history", @history)
                writer.write_boolean_value("includeAllVersions", @include_all_versions)
                writer.write_boolean_value("includeAuthoredContent", @include_authored_content)
                writer.write_object_value("insight", @insight)
                writer.write_date_time_value("internalDueDateTime", @internal_due_date_time)
                writer.write_object_value("lastModifiedBy", @last_modified_by)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_object_value("mailboxlocations", @mailboxlocations)
                writer.write_collection_of_object_values("notes", @notes)
                writer.write_boolean_value("pauseAfterEstimate", @pause_after_estimate)
                writer.write_collection_of_primitive_values("regulations", @regulations)
                writer.write_object_value("sitelocations", @sitelocations)
                writer.write_collection_of_object_values("stages", @stages)
                writer.write_enum_value("status", @status)
                writer.write_object_value("team", @team)
                writer.write_enum_value("type", @type)
            end
            ## 
            ## Gets the sitelocations property value. The sitelocations property
            ## @return a subject_rights_request_site_location
            ## 
            def sitelocations
                return @sitelocations
            end
            ## 
            ## Sets the sitelocations property value. The sitelocations property
            ## @param value Value to set for the sitelocations property.
            ## @return a void
            ## 
            def sitelocations=(value)
                @sitelocations = value
            end
            ## 
            ## Gets the stages property value. Information about the different stages for the request.
            ## @return a subject_rights_request_stage_detail
            ## 
            def stages
                return @stages
            end
            ## 
            ## Sets the stages property value. Information about the different stages for the request.
            ## @param value Value to set for the stages property.
            ## @return a void
            ## 
            def stages=(value)
                @stages = value
            end
            ## 
            ## Gets the status property value. The status of the request.. Possible values are: active, closed, unknownFutureValue.
            ## @return a subject_rights_request_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The status of the request.. Possible values are: active, closed, unknownFutureValue.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
            ## 
            ## Gets the team property value. Information about the Microsoft Teams team that was created for the request.
            ## @return a team
            ## 
            def team
                return @team
            end
            ## 
            ## Sets the team property value. Information about the Microsoft Teams team that was created for the request.
            ## @param value Value to set for the team property.
            ## @return a void
            ## 
            def team=(value)
                @team = value
            end
            ## 
            ## Gets the type property value. The type of the request. Possible values are: export, delete,  access, tagForAction, unknownFutureValue.
            ## @return a subject_rights_request_type
            ## 
            def type
                return @type
            end
            ## 
            ## Sets the type property value. The type of the request. Possible values are: export, delete,  access, tagForAction, unknownFutureValue.
            ## @param value Value to set for the type property.
            ## @return a void
            ## 
            def type=(value)
                @type = value
            end
        end
    end
end

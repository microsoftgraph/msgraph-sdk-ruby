require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class EducationSubmission < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The outcomes property
            @outcomes
            ## 
            # User who moved the status of this submission to reassigned.
            @reassigned_by
            ## 
            # Moment in time when the submission was reassigned. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            @reassigned_date_time
            ## 
            # Who this submission is assigned to.
            @recipient
            ## 
            # The resources property
            @resources
            ## 
            # Folder where all file resources for this submission need to be stored.
            @resources_folder_url
            ## 
            # User who moved the status of this submission to returned.
            @returned_by
            ## 
            # Moment in time when the submission was returned. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            @returned_date_time
            ## 
            # Read-only. Possible values are: working, submitted, released, returned, and reassigned. Note that you must use the Prefer: include-unknown-enum-members request header to get the following value(s) in this evolvable enum: reassigned.
            @status
            ## 
            # User who moved the resource into the submitted state.
            @submitted_by
            ## 
            # Moment in time when the submission was moved into the submitted state. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            @submitted_date_time
            ## 
            # The submittedResources property
            @submitted_resources
            ## 
            # User who moved the resource from submitted into the working state.
            @unsubmitted_by
            ## 
            # Moment in time when the submission was moved from submitted into the working state. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            @unsubmitted_date_time
            ## 
            ## Instantiates a new educationSubmission and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a education_submission
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EducationSubmission.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "outcomes" => lambda {|n| @outcomes = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::EducationOutcome.create_from_discriminator_value(pn) }) },
                    "reassignedBy" => lambda {|n| @reassigned_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "reassignedDateTime" => lambda {|n| @reassigned_date_time = n.get_date_time_value() },
                    "recipient" => lambda {|n| @recipient = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::EducationSubmissionRecipient.create_from_discriminator_value(pn) }) },
                    "resources" => lambda {|n| @resources = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::EducationSubmissionResource.create_from_discriminator_value(pn) }) },
                    "resourcesFolderUrl" => lambda {|n| @resources_folder_url = n.get_string_value() },
                    "returnedBy" => lambda {|n| @returned_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "returnedDateTime" => lambda {|n| @returned_date_time = n.get_date_time_value() },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraph::Models::EducationSubmissionStatus) },
                    "submittedBy" => lambda {|n| @submitted_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "submittedDateTime" => lambda {|n| @submitted_date_time = n.get_date_time_value() },
                    "submittedResources" => lambda {|n| @submitted_resources = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::EducationSubmissionResource.create_from_discriminator_value(pn) }) },
                    "unsubmittedBy" => lambda {|n| @unsubmitted_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "unsubmittedDateTime" => lambda {|n| @unsubmitted_date_time = n.get_date_time_value() },
                })
            end
            ## 
            ## Gets the outcomes property value. The outcomes property
            ## @return a education_outcome
            ## 
            def outcomes
                return @outcomes
            end
            ## 
            ## Sets the outcomes property value. The outcomes property
            ## @param value Value to set for the outcomes property.
            ## @return a void
            ## 
            def outcomes=(value)
                @outcomes = value
            end
            ## 
            ## Gets the reassignedBy property value. User who moved the status of this submission to reassigned.
            ## @return a identity_set
            ## 
            def reassigned_by
                return @reassigned_by
            end
            ## 
            ## Sets the reassignedBy property value. User who moved the status of this submission to reassigned.
            ## @param value Value to set for the reassigned_by property.
            ## @return a void
            ## 
            def reassigned_by=(value)
                @reassigned_by = value
            end
            ## 
            ## Gets the reassignedDateTime property value. Moment in time when the submission was reassigned. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            ## @return a date_time
            ## 
            def reassigned_date_time
                return @reassigned_date_time
            end
            ## 
            ## Sets the reassignedDateTime property value. Moment in time when the submission was reassigned. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            ## @param value Value to set for the reassigned_date_time property.
            ## @return a void
            ## 
            def reassigned_date_time=(value)
                @reassigned_date_time = value
            end
            ## 
            ## Gets the recipient property value. Who this submission is assigned to.
            ## @return a education_submission_recipient
            ## 
            def recipient
                return @recipient
            end
            ## 
            ## Sets the recipient property value. Who this submission is assigned to.
            ## @param value Value to set for the recipient property.
            ## @return a void
            ## 
            def recipient=(value)
                @recipient = value
            end
            ## 
            ## Gets the resources property value. The resources property
            ## @return a education_submission_resource
            ## 
            def resources
                return @resources
            end
            ## 
            ## Sets the resources property value. The resources property
            ## @param value Value to set for the resources property.
            ## @return a void
            ## 
            def resources=(value)
                @resources = value
            end
            ## 
            ## Gets the resourcesFolderUrl property value. Folder where all file resources for this submission need to be stored.
            ## @return a string
            ## 
            def resources_folder_url
                return @resources_folder_url
            end
            ## 
            ## Sets the resourcesFolderUrl property value. Folder where all file resources for this submission need to be stored.
            ## @param value Value to set for the resources_folder_url property.
            ## @return a void
            ## 
            def resources_folder_url=(value)
                @resources_folder_url = value
            end
            ## 
            ## Gets the returnedBy property value. User who moved the status of this submission to returned.
            ## @return a identity_set
            ## 
            def returned_by
                return @returned_by
            end
            ## 
            ## Sets the returnedBy property value. User who moved the status of this submission to returned.
            ## @param value Value to set for the returned_by property.
            ## @return a void
            ## 
            def returned_by=(value)
                @returned_by = value
            end
            ## 
            ## Gets the returnedDateTime property value. Moment in time when the submission was returned. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            ## @return a date_time
            ## 
            def returned_date_time
                return @returned_date_time
            end
            ## 
            ## Sets the returnedDateTime property value. Moment in time when the submission was returned. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            ## @param value Value to set for the returned_date_time property.
            ## @return a void
            ## 
            def returned_date_time=(value)
                @returned_date_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("outcomes", @outcomes)
                writer.write_object_value("recipient", @recipient)
                writer.write_collection_of_object_values("resources", @resources)
                writer.write_collection_of_object_values("submittedResources", @submitted_resources)
            end
            ## 
            ## Gets the status property value. Read-only. Possible values are: working, submitted, released, returned, and reassigned. Note that you must use the Prefer: include-unknown-enum-members request header to get the following value(s) in this evolvable enum: reassigned.
            ## @return a education_submission_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. Read-only. Possible values are: working, submitted, released, returned, and reassigned. Note that you must use the Prefer: include-unknown-enum-members request header to get the following value(s) in this evolvable enum: reassigned.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
            ## 
            ## Gets the submittedBy property value. User who moved the resource into the submitted state.
            ## @return a identity_set
            ## 
            def submitted_by
                return @submitted_by
            end
            ## 
            ## Sets the submittedBy property value. User who moved the resource into the submitted state.
            ## @param value Value to set for the submitted_by property.
            ## @return a void
            ## 
            def submitted_by=(value)
                @submitted_by = value
            end
            ## 
            ## Gets the submittedDateTime property value. Moment in time when the submission was moved into the submitted state. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            ## @return a date_time
            ## 
            def submitted_date_time
                return @submitted_date_time
            end
            ## 
            ## Sets the submittedDateTime property value. Moment in time when the submission was moved into the submitted state. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            ## @param value Value to set for the submitted_date_time property.
            ## @return a void
            ## 
            def submitted_date_time=(value)
                @submitted_date_time = value
            end
            ## 
            ## Gets the submittedResources property value. The submittedResources property
            ## @return a education_submission_resource
            ## 
            def submitted_resources
                return @submitted_resources
            end
            ## 
            ## Sets the submittedResources property value. The submittedResources property
            ## @param value Value to set for the submitted_resources property.
            ## @return a void
            ## 
            def submitted_resources=(value)
                @submitted_resources = value
            end
            ## 
            ## Gets the unsubmittedBy property value. User who moved the resource from submitted into the working state.
            ## @return a identity_set
            ## 
            def unsubmitted_by
                return @unsubmitted_by
            end
            ## 
            ## Sets the unsubmittedBy property value. User who moved the resource from submitted into the working state.
            ## @param value Value to set for the unsubmitted_by property.
            ## @return a void
            ## 
            def unsubmitted_by=(value)
                @unsubmitted_by = value
            end
            ## 
            ## Gets the unsubmittedDateTime property value. Moment in time when the submission was moved from submitted into the working state. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            ## @return a date_time
            ## 
            def unsubmitted_date_time
                return @unsubmitted_date_time
            end
            ## 
            ## Sets the unsubmittedDateTime property value. Moment in time when the submission was moved from submitted into the working state. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            ## @param value Value to set for the unsubmitted_date_time property.
            ## @return a void
            ## 
            def unsubmitted_date_time=(value)
                @unsubmitted_date_time = value
            end
        end
    end
end

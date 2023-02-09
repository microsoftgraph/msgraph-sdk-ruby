require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ApprovalStage < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Indicates whether the stage is assigned to the calling user to review. Read-only.
            @assigned_to_me
            ## 
            # The label provided by the policy creator to identify an approval stage. Read-only.
            @display_name
            ## 
            # The justification associated with the approval stage decision.
            @justification
            ## 
            # The result of this approval record. Possible values include: NotReviewed, Approved, Denied.
            @review_result
            ## 
            # The identifier of the reviewer. 00000000-0000-0000-0000-000000000000 if the assigned reviewer hasn't reviewed. Read-only.
            @reviewed_by
            ## 
            # The date and time when a decision was recorded. The date and time information uses ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            @reviewed_date_time
            ## 
            # The stage status. Possible values: InProgress, Initializing, Completed, Expired. Read-only.
            @status
            ## 
            ## Gets the assignedToMe property value. Indicates whether the stage is assigned to the calling user to review. Read-only.
            ## @return a boolean
            ## 
            def assigned_to_me
                return @assigned_to_me
            end
            ## 
            ## Sets the assignedToMe property value. Indicates whether the stage is assigned to the calling user to review. Read-only.
            ## @param value Value to set for the assigned_to_me property.
            ## @return a void
            ## 
            def assigned_to_me=(value)
                @assigned_to_me = value
            end
            ## 
            ## Instantiates a new approvalStage and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a approval_stage
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ApprovalStage.new
            end
            ## 
            ## Gets the displayName property value. The label provided by the policy creator to identify an approval stage. Read-only.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The label provided by the policy creator to identify an approval stage. Read-only.
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "assignedToMe" => lambda {|n| @assigned_to_me = n.get_boolean_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "justification" => lambda {|n| @justification = n.get_string_value() },
                    "reviewResult" => lambda {|n| @review_result = n.get_string_value() },
                    "reviewedBy" => lambda {|n| @reviewed_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Identity.create_from_discriminator_value(pn) }) },
                    "reviewedDateTime" => lambda {|n| @reviewed_date_time = n.get_date_time_value() },
                    "status" => lambda {|n| @status = n.get_string_value() },
                })
            end
            ## 
            ## Gets the justification property value. The justification associated with the approval stage decision.
            ## @return a string
            ## 
            def justification
                return @justification
            end
            ## 
            ## Sets the justification property value. The justification associated with the approval stage decision.
            ## @param value Value to set for the justification property.
            ## @return a void
            ## 
            def justification=(value)
                @justification = value
            end
            ## 
            ## Gets the reviewResult property value. The result of this approval record. Possible values include: NotReviewed, Approved, Denied.
            ## @return a string
            ## 
            def review_result
                return @review_result
            end
            ## 
            ## Sets the reviewResult property value. The result of this approval record. Possible values include: NotReviewed, Approved, Denied.
            ## @param value Value to set for the review_result property.
            ## @return a void
            ## 
            def review_result=(value)
                @review_result = value
            end
            ## 
            ## Gets the reviewedBy property value. The identifier of the reviewer. 00000000-0000-0000-0000-000000000000 if the assigned reviewer hasn't reviewed. Read-only.
            ## @return a identity
            ## 
            def reviewed_by
                return @reviewed_by
            end
            ## 
            ## Sets the reviewedBy property value. The identifier of the reviewer. 00000000-0000-0000-0000-000000000000 if the assigned reviewer hasn't reviewed. Read-only.
            ## @param value Value to set for the reviewed_by property.
            ## @return a void
            ## 
            def reviewed_by=(value)
                @reviewed_by = value
            end
            ## 
            ## Gets the reviewedDateTime property value. The date and time when a decision was recorded. The date and time information uses ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            ## @return a date_time
            ## 
            def reviewed_date_time
                return @reviewed_date_time
            end
            ## 
            ## Sets the reviewedDateTime property value. The date and time when a decision was recorded. The date and time information uses ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            ## @param value Value to set for the reviewed_date_time property.
            ## @return a void
            ## 
            def reviewed_date_time=(value)
                @reviewed_date_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("assignedToMe", @assigned_to_me)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("justification", @justification)
                writer.write_string_value("reviewResult", @review_result)
                writer.write_object_value("reviewedBy", @reviewed_by)
                writer.write_date_time_value("reviewedDateTime", @reviewed_date_time)
                writer.write_string_value("status", @status)
            end
            ## 
            ## Gets the status property value. The stage status. Possible values: InProgress, Initializing, Completed, Expired. Read-only.
            ## @return a string
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The stage status. Possible values: InProgress, Initializing, Completed, Expired. Read-only.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
        end
    end
end

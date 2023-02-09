require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AdminConsentRequestPolicy < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Specifies whether the admin consent request feature is enabled or disabled. Required.
            @is_enabled
            ## 
            # Specifies whether reviewers will receive notifications. Required.
            @notify_reviewers
            ## 
            # Specifies whether reviewers will receive reminder emails. Required.
            @reminders_enabled
            ## 
            # Specifies the duration the request is active before it automatically expires if no decision is applied.
            @request_duration_in_days
            ## 
            # The list of reviewers for the admin consent. Required.
            @reviewers
            ## 
            # Specifies the version of this policy. When the policy is updated, this version is updated. Read-only.
            @version
            ## 
            ## Instantiates a new adminConsentRequestPolicy and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a admin_consent_request_policy
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AdminConsentRequestPolicy.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "isEnabled" => lambda {|n| @is_enabled = n.get_boolean_value() },
                    "notifyReviewers" => lambda {|n| @notify_reviewers = n.get_boolean_value() },
                    "remindersEnabled" => lambda {|n| @reminders_enabled = n.get_boolean_value() },
                    "requestDurationInDays" => lambda {|n| @request_duration_in_days = n.get_number_value() },
                    "reviewers" => lambda {|n| @reviewers = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AccessReviewReviewerScope.create_from_discriminator_value(pn) }) },
                    "version" => lambda {|n| @version = n.get_number_value() },
                })
            end
            ## 
            ## Gets the isEnabled property value. Specifies whether the admin consent request feature is enabled or disabled. Required.
            ## @return a boolean
            ## 
            def is_enabled
                return @is_enabled
            end
            ## 
            ## Sets the isEnabled property value. Specifies whether the admin consent request feature is enabled or disabled. Required.
            ## @param value Value to set for the is_enabled property.
            ## @return a void
            ## 
            def is_enabled=(value)
                @is_enabled = value
            end
            ## 
            ## Gets the notifyReviewers property value. Specifies whether reviewers will receive notifications. Required.
            ## @return a boolean
            ## 
            def notify_reviewers
                return @notify_reviewers
            end
            ## 
            ## Sets the notifyReviewers property value. Specifies whether reviewers will receive notifications. Required.
            ## @param value Value to set for the notify_reviewers property.
            ## @return a void
            ## 
            def notify_reviewers=(value)
                @notify_reviewers = value
            end
            ## 
            ## Gets the remindersEnabled property value. Specifies whether reviewers will receive reminder emails. Required.
            ## @return a boolean
            ## 
            def reminders_enabled
                return @reminders_enabled
            end
            ## 
            ## Sets the remindersEnabled property value. Specifies whether reviewers will receive reminder emails. Required.
            ## @param value Value to set for the reminders_enabled property.
            ## @return a void
            ## 
            def reminders_enabled=(value)
                @reminders_enabled = value
            end
            ## 
            ## Gets the requestDurationInDays property value. Specifies the duration the request is active before it automatically expires if no decision is applied.
            ## @return a integer
            ## 
            def request_duration_in_days
                return @request_duration_in_days
            end
            ## 
            ## Sets the requestDurationInDays property value. Specifies the duration the request is active before it automatically expires if no decision is applied.
            ## @param value Value to set for the request_duration_in_days property.
            ## @return a void
            ## 
            def request_duration_in_days=(value)
                @request_duration_in_days = value
            end
            ## 
            ## Gets the reviewers property value. The list of reviewers for the admin consent. Required.
            ## @return a access_review_reviewer_scope
            ## 
            def reviewers
                return @reviewers
            end
            ## 
            ## Sets the reviewers property value. The list of reviewers for the admin consent. Required.
            ## @param value Value to set for the reviewers property.
            ## @return a void
            ## 
            def reviewers=(value)
                @reviewers = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("isEnabled", @is_enabled)
                writer.write_boolean_value("notifyReviewers", @notify_reviewers)
                writer.write_boolean_value("remindersEnabled", @reminders_enabled)
                writer.write_number_value("requestDurationInDays", @request_duration_in_days)
                writer.write_collection_of_object_values("reviewers", @reviewers)
                writer.write_number_value("version", @version)
            end
            ## 
            ## Gets the version property value. Specifies the version of this policy. When the policy is updated, this version is updated. Read-only.
            ## @return a integer
            ## 
            def version
                return @version
            end
            ## 
            ## Sets the version property value. Specifies the version of this policy. When the policy is updated, this version is updated. Read-only.
            ## @param value Value to set for the version property.
            ## @return a void
            ## 
            def version=(value)
                @version = value
            end
        end
    end
end

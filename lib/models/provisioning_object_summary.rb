require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ProvisioningObjectSummary < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            @activity_date_time
            ## 
            # Unique ID of this change in this cycle.
            @change_id
            ## 
            # Unique ID per job iteration.
            @cycle_id
            ## 
            # Indicates how long this provisioning action took to finish. Measured in milliseconds.
            @duration_in_milliseconds
            ## 
            # Details of who initiated this provisioning.
            @initiated_by
            ## 
            # The unique ID for the whole provisioning job.
            @job_id
            ## 
            # Details of each property that was modified in this provisioning action on this object.
            @modified_properties
            ## 
            # Indicates the activity name or the operation name. Possible values are: create, update, delete, stageddelete, disable, other and unknownFutureValue. For a list of activities logged, refer to Azure AD activity list.
            @provisioning_action
            ## 
            # Details of provisioning status.
            @provisioning_status_info
            ## 
            # Details of each step in provisioning.
            @provisioning_steps
            ## 
            # Represents the service principal used for provisioning.
            @service_principal
            ## 
            # Details of source object being provisioned.
            @source_identity
            ## 
            # Details of source system of the object being provisioned.
            @source_system
            ## 
            # Details of target object being provisioned.
            @target_identity
            ## 
            # Details of target system of the object being provisioned.
            @target_system
            ## 
            # Unique Azure AD tenant ID.
            @tenant_id
            ## 
            ## Gets the activityDateTime property value. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            ## @return a date_time
            ## 
            def activity_date_time
                return @activity_date_time
            end
            ## 
            ## Sets the activityDateTime property value. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            ## @param value Value to set for the activity_date_time property.
            ## @return a void
            ## 
            def activity_date_time=(value)
                @activity_date_time = value
            end
            ## 
            ## Gets the changeId property value. Unique ID of this change in this cycle.
            ## @return a string
            ## 
            def change_id
                return @change_id
            end
            ## 
            ## Sets the changeId property value. Unique ID of this change in this cycle.
            ## @param value Value to set for the change_id property.
            ## @return a void
            ## 
            def change_id=(value)
                @change_id = value
            end
            ## 
            ## Instantiates a new provisioningObjectSummary and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a provisioning_object_summary
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ProvisioningObjectSummary.new
            end
            ## 
            ## Gets the cycleId property value. Unique ID per job iteration.
            ## @return a string
            ## 
            def cycle_id
                return @cycle_id
            end
            ## 
            ## Sets the cycleId property value. Unique ID per job iteration.
            ## @param value Value to set for the cycle_id property.
            ## @return a void
            ## 
            def cycle_id=(value)
                @cycle_id = value
            end
            ## 
            ## Gets the durationInMilliseconds property value. Indicates how long this provisioning action took to finish. Measured in milliseconds.
            ## @return a integer
            ## 
            def duration_in_milliseconds
                return @duration_in_milliseconds
            end
            ## 
            ## Sets the durationInMilliseconds property value. Indicates how long this provisioning action took to finish. Measured in milliseconds.
            ## @param value Value to set for the duration_in_milliseconds property.
            ## @return a void
            ## 
            def duration_in_milliseconds=(value)
                @duration_in_milliseconds = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "activityDateTime" => lambda {|n| @activity_date_time = n.get_date_time_value() },
                    "changeId" => lambda {|n| @change_id = n.get_string_value() },
                    "cycleId" => lambda {|n| @cycle_id = n.get_string_value() },
                    "durationInMilliseconds" => lambda {|n| @duration_in_milliseconds = n.get_number_value() },
                    "initiatedBy" => lambda {|n| @initiated_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Initiator.create_from_discriminator_value(pn) }) },
                    "jobId" => lambda {|n| @job_id = n.get_string_value() },
                    "modifiedProperties" => lambda {|n| @modified_properties = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ModifiedProperty.create_from_discriminator_value(pn) }) },
                    "provisioningAction" => lambda {|n| @provisioning_action = n.get_enum_value(MicrosoftGraph::Models::ProvisioningAction) },
                    "provisioningStatusInfo" => lambda {|n| @provisioning_status_info = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ProvisioningStatusInfo.create_from_discriminator_value(pn) }) },
                    "provisioningSteps" => lambda {|n| @provisioning_steps = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ProvisioningStep.create_from_discriminator_value(pn) }) },
                    "servicePrincipal" => lambda {|n| @service_principal = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ProvisioningServicePrincipal.create_from_discriminator_value(pn) }) },
                    "sourceIdentity" => lambda {|n| @source_identity = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ProvisionedIdentity.create_from_discriminator_value(pn) }) },
                    "sourceSystem" => lambda {|n| @source_system = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ProvisioningSystem.create_from_discriminator_value(pn) }) },
                    "targetIdentity" => lambda {|n| @target_identity = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ProvisionedIdentity.create_from_discriminator_value(pn) }) },
                    "targetSystem" => lambda {|n| @target_system = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ProvisioningSystem.create_from_discriminator_value(pn) }) },
                    "tenantId" => lambda {|n| @tenant_id = n.get_string_value() },
                })
            end
            ## 
            ## Gets the initiatedBy property value. Details of who initiated this provisioning.
            ## @return a initiator
            ## 
            def initiated_by
                return @initiated_by
            end
            ## 
            ## Sets the initiatedBy property value. Details of who initiated this provisioning.
            ## @param value Value to set for the initiated_by property.
            ## @return a void
            ## 
            def initiated_by=(value)
                @initiated_by = value
            end
            ## 
            ## Gets the jobId property value. The unique ID for the whole provisioning job.
            ## @return a string
            ## 
            def job_id
                return @job_id
            end
            ## 
            ## Sets the jobId property value. The unique ID for the whole provisioning job.
            ## @param value Value to set for the job_id property.
            ## @return a void
            ## 
            def job_id=(value)
                @job_id = value
            end
            ## 
            ## Gets the modifiedProperties property value. Details of each property that was modified in this provisioning action on this object.
            ## @return a modified_property
            ## 
            def modified_properties
                return @modified_properties
            end
            ## 
            ## Sets the modifiedProperties property value. Details of each property that was modified in this provisioning action on this object.
            ## @param value Value to set for the modified_properties property.
            ## @return a void
            ## 
            def modified_properties=(value)
                @modified_properties = value
            end
            ## 
            ## Gets the provisioningAction property value. Indicates the activity name or the operation name. Possible values are: create, update, delete, stageddelete, disable, other and unknownFutureValue. For a list of activities logged, refer to Azure AD activity list.
            ## @return a provisioning_action
            ## 
            def provisioning_action
                return @provisioning_action
            end
            ## 
            ## Sets the provisioningAction property value. Indicates the activity name or the operation name. Possible values are: create, update, delete, stageddelete, disable, other and unknownFutureValue. For a list of activities logged, refer to Azure AD activity list.
            ## @param value Value to set for the provisioning_action property.
            ## @return a void
            ## 
            def provisioning_action=(value)
                @provisioning_action = value
            end
            ## 
            ## Gets the provisioningStatusInfo property value. Details of provisioning status.
            ## @return a provisioning_status_info
            ## 
            def provisioning_status_info
                return @provisioning_status_info
            end
            ## 
            ## Sets the provisioningStatusInfo property value. Details of provisioning status.
            ## @param value Value to set for the provisioning_status_info property.
            ## @return a void
            ## 
            def provisioning_status_info=(value)
                @provisioning_status_info = value
            end
            ## 
            ## Gets the provisioningSteps property value. Details of each step in provisioning.
            ## @return a provisioning_step
            ## 
            def provisioning_steps
                return @provisioning_steps
            end
            ## 
            ## Sets the provisioningSteps property value. Details of each step in provisioning.
            ## @param value Value to set for the provisioning_steps property.
            ## @return a void
            ## 
            def provisioning_steps=(value)
                @provisioning_steps = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_date_time_value("activityDateTime", @activity_date_time)
                writer.write_string_value("changeId", @change_id)
                writer.write_string_value("cycleId", @cycle_id)
                writer.write_number_value("durationInMilliseconds", @duration_in_milliseconds)
                writer.write_object_value("initiatedBy", @initiated_by)
                writer.write_string_value("jobId", @job_id)
                writer.write_collection_of_object_values("modifiedProperties", @modified_properties)
                writer.write_enum_value("provisioningAction", @provisioning_action)
                writer.write_object_value("provisioningStatusInfo", @provisioning_status_info)
                writer.write_collection_of_object_values("provisioningSteps", @provisioning_steps)
                writer.write_object_value("servicePrincipal", @service_principal)
                writer.write_object_value("sourceIdentity", @source_identity)
                writer.write_object_value("sourceSystem", @source_system)
                writer.write_object_value("targetIdentity", @target_identity)
                writer.write_object_value("targetSystem", @target_system)
                writer.write_string_value("tenantId", @tenant_id)
            end
            ## 
            ## Gets the servicePrincipal property value. Represents the service principal used for provisioning.
            ## @return a provisioning_service_principal
            ## 
            def service_principal
                return @service_principal
            end
            ## 
            ## Sets the servicePrincipal property value. Represents the service principal used for provisioning.
            ## @param value Value to set for the service_principal property.
            ## @return a void
            ## 
            def service_principal=(value)
                @service_principal = value
            end
            ## 
            ## Gets the sourceIdentity property value. Details of source object being provisioned.
            ## @return a provisioned_identity
            ## 
            def source_identity
                return @source_identity
            end
            ## 
            ## Sets the sourceIdentity property value. Details of source object being provisioned.
            ## @param value Value to set for the source_identity property.
            ## @return a void
            ## 
            def source_identity=(value)
                @source_identity = value
            end
            ## 
            ## Gets the sourceSystem property value. Details of source system of the object being provisioned.
            ## @return a provisioning_system
            ## 
            def source_system
                return @source_system
            end
            ## 
            ## Sets the sourceSystem property value. Details of source system of the object being provisioned.
            ## @param value Value to set for the source_system property.
            ## @return a void
            ## 
            def source_system=(value)
                @source_system = value
            end
            ## 
            ## Gets the targetIdentity property value. Details of target object being provisioned.
            ## @return a provisioned_identity
            ## 
            def target_identity
                return @target_identity
            end
            ## 
            ## Sets the targetIdentity property value. Details of target object being provisioned.
            ## @param value Value to set for the target_identity property.
            ## @return a void
            ## 
            def target_identity=(value)
                @target_identity = value
            end
            ## 
            ## Gets the targetSystem property value. Details of target system of the object being provisioned.
            ## @return a provisioning_system
            ## 
            def target_system
                return @target_system
            end
            ## 
            ## Sets the targetSystem property value. Details of target system of the object being provisioned.
            ## @param value Value to set for the target_system property.
            ## @return a void
            ## 
            def target_system=(value)
                @target_system = value
            end
            ## 
            ## Gets the tenantId property value. Unique Azure AD tenant ID.
            ## @return a string
            ## 
            def tenant_id
                return @tenant_id
            end
            ## 
            ## Sets the tenantId property value. Unique Azure AD tenant ID.
            ## @param value Value to set for the tenant_id property.
            ## @return a void
            ## 
            def tenant_id=(value)
                @tenant_id = value
            end
        end
    end
end

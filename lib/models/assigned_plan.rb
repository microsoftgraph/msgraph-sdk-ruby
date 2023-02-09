require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AssignedPlan
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The date and time at which the plan was assigned. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @assigned_date_time
            ## 
            # Condition of the capability assignment. The possible values are Enabled, Warning, Suspended, Deleted, LockedOut. See a detailed description of each value.
            @capability_status
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The name of the service; for example, exchange.
            @service
            ## 
            # A GUID that identifies the service plan. For a complete list of GUIDs and their equivalent friendly service names, see Product names and service plan identifiers for licensing.
            @service_plan_id
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
            ## Gets the assignedDateTime property value. The date and time at which the plan was assigned. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def assigned_date_time
                return @assigned_date_time
            end
            ## 
            ## Sets the assignedDateTime property value. The date and time at which the plan was assigned. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the assigned_date_time property.
            ## @return a void
            ## 
            def assigned_date_time=(value)
                @assigned_date_time = value
            end
            ## 
            ## Gets the capabilityStatus property value. Condition of the capability assignment. The possible values are Enabled, Warning, Suspended, Deleted, LockedOut. See a detailed description of each value.
            ## @return a string
            ## 
            def capability_status
                return @capability_status
            end
            ## 
            ## Sets the capabilityStatus property value. Condition of the capability assignment. The possible values are Enabled, Warning, Suspended, Deleted, LockedOut. See a detailed description of each value.
            ## @param value Value to set for the capability_status property.
            ## @return a void
            ## 
            def capability_status=(value)
                @capability_status = value
            end
            ## 
            ## Instantiates a new assignedPlan and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a assigned_plan
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AssignedPlan.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "assignedDateTime" => lambda {|n| @assigned_date_time = n.get_date_time_value() },
                    "capabilityStatus" => lambda {|n| @capability_status = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "service" => lambda {|n| @service = n.get_string_value() },
                    "servicePlanId" => lambda {|n| @service_plan_id = n.get_guid_value() },
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
                writer.write_date_time_value("assignedDateTime", @assigned_date_time)
                writer.write_string_value("capabilityStatus", @capability_status)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("service", @service)
                writer.write_guid_value("servicePlanId", @service_plan_id)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the service property value. The name of the service; for example, exchange.
            ## @return a string
            ## 
            def service
                return @service
            end
            ## 
            ## Sets the service property value. The name of the service; for example, exchange.
            ## @param value Value to set for the service property.
            ## @return a void
            ## 
            def service=(value)
                @service = value
            end
            ## 
            ## Gets the servicePlanId property value. A GUID that identifies the service plan. For a complete list of GUIDs and their equivalent friendly service names, see Product names and service plan identifiers for licensing.
            ## @return a guid
            ## 
            def service_plan_id
                return @service_plan_id
            end
            ## 
            ## Sets the servicePlanId property value. A GUID that identifies the service plan. For a complete list of GUIDs and their equivalent friendly service names, see Product names and service plan identifiers for licensing.
            ## @param value Value to set for the service_plan_id property.
            ## @return a void
            ## 
            def service_plan_id=(value)
                @service_plan_id = value
            end
        end
    end
end

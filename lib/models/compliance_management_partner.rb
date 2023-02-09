require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # Compliance management partner for all platforms
        class ComplianceManagementPartner < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # User groups which enroll Android devices through partner.
            @android_enrollment_assignments
            ## 
            # Partner onboarded for Android devices.
            @android_onboarded
            ## 
            # Partner display name
            @display_name
            ## 
            # User groups which enroll ios devices through partner.
            @ios_enrollment_assignments
            ## 
            # Partner onboarded for ios devices.
            @ios_onboarded
            ## 
            # Timestamp of last heartbeat after admin onboarded to the compliance management partner
            @last_heartbeat_date_time
            ## 
            # User groups which enroll Mac devices through partner.
            @mac_os_enrollment_assignments
            ## 
            # Partner onboarded for Mac devices.
            @mac_os_onboarded
            ## 
            # Partner state of this tenant.
            @partner_state
            ## 
            ## Gets the androidEnrollmentAssignments property value. User groups which enroll Android devices through partner.
            ## @return a compliance_management_partner_assignment
            ## 
            def android_enrollment_assignments
                return @android_enrollment_assignments
            end
            ## 
            ## Sets the androidEnrollmentAssignments property value. User groups which enroll Android devices through partner.
            ## @param value Value to set for the android_enrollment_assignments property.
            ## @return a void
            ## 
            def android_enrollment_assignments=(value)
                @android_enrollment_assignments = value
            end
            ## 
            ## Gets the androidOnboarded property value. Partner onboarded for Android devices.
            ## @return a boolean
            ## 
            def android_onboarded
                return @android_onboarded
            end
            ## 
            ## Sets the androidOnboarded property value. Partner onboarded for Android devices.
            ## @param value Value to set for the android_onboarded property.
            ## @return a void
            ## 
            def android_onboarded=(value)
                @android_onboarded = value
            end
            ## 
            ## Instantiates a new complianceManagementPartner and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a compliance_management_partner
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ComplianceManagementPartner.new
            end
            ## 
            ## Gets the displayName property value. Partner display name
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Partner display name
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
                    "androidEnrollmentAssignments" => lambda {|n| @android_enrollment_assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ComplianceManagementPartnerAssignment.create_from_discriminator_value(pn) }) },
                    "androidOnboarded" => lambda {|n| @android_onboarded = n.get_boolean_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "iosEnrollmentAssignments" => lambda {|n| @ios_enrollment_assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ComplianceManagementPartnerAssignment.create_from_discriminator_value(pn) }) },
                    "iosOnboarded" => lambda {|n| @ios_onboarded = n.get_boolean_value() },
                    "lastHeartbeatDateTime" => lambda {|n| @last_heartbeat_date_time = n.get_date_time_value() },
                    "macOsEnrollmentAssignments" => lambda {|n| @mac_os_enrollment_assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ComplianceManagementPartnerAssignment.create_from_discriminator_value(pn) }) },
                    "macOsOnboarded" => lambda {|n| @mac_os_onboarded = n.get_boolean_value() },
                    "partnerState" => lambda {|n| @partner_state = n.get_enum_value(MicrosoftGraph::Models::DeviceManagementPartnerTenantState) },
                })
            end
            ## 
            ## Gets the iosEnrollmentAssignments property value. User groups which enroll ios devices through partner.
            ## @return a compliance_management_partner_assignment
            ## 
            def ios_enrollment_assignments
                return @ios_enrollment_assignments
            end
            ## 
            ## Sets the iosEnrollmentAssignments property value. User groups which enroll ios devices through partner.
            ## @param value Value to set for the ios_enrollment_assignments property.
            ## @return a void
            ## 
            def ios_enrollment_assignments=(value)
                @ios_enrollment_assignments = value
            end
            ## 
            ## Gets the iosOnboarded property value. Partner onboarded for ios devices.
            ## @return a boolean
            ## 
            def ios_onboarded
                return @ios_onboarded
            end
            ## 
            ## Sets the iosOnboarded property value. Partner onboarded for ios devices.
            ## @param value Value to set for the ios_onboarded property.
            ## @return a void
            ## 
            def ios_onboarded=(value)
                @ios_onboarded = value
            end
            ## 
            ## Gets the lastHeartbeatDateTime property value. Timestamp of last heartbeat after admin onboarded to the compliance management partner
            ## @return a date_time
            ## 
            def last_heartbeat_date_time
                return @last_heartbeat_date_time
            end
            ## 
            ## Sets the lastHeartbeatDateTime property value. Timestamp of last heartbeat after admin onboarded to the compliance management partner
            ## @param value Value to set for the last_heartbeat_date_time property.
            ## @return a void
            ## 
            def last_heartbeat_date_time=(value)
                @last_heartbeat_date_time = value
            end
            ## 
            ## Gets the macOsEnrollmentAssignments property value. User groups which enroll Mac devices through partner.
            ## @return a compliance_management_partner_assignment
            ## 
            def mac_os_enrollment_assignments
                return @mac_os_enrollment_assignments
            end
            ## 
            ## Sets the macOsEnrollmentAssignments property value. User groups which enroll Mac devices through partner.
            ## @param value Value to set for the mac_os_enrollment_assignments property.
            ## @return a void
            ## 
            def mac_os_enrollment_assignments=(value)
                @mac_os_enrollment_assignments = value
            end
            ## 
            ## Gets the macOsOnboarded property value. Partner onboarded for Mac devices.
            ## @return a boolean
            ## 
            def mac_os_onboarded
                return @mac_os_onboarded
            end
            ## 
            ## Sets the macOsOnboarded property value. Partner onboarded for Mac devices.
            ## @param value Value to set for the mac_os_onboarded property.
            ## @return a void
            ## 
            def mac_os_onboarded=(value)
                @mac_os_onboarded = value
            end
            ## 
            ## Gets the partnerState property value. Partner state of this tenant.
            ## @return a device_management_partner_tenant_state
            ## 
            def partner_state
                return @partner_state
            end
            ## 
            ## Sets the partnerState property value. Partner state of this tenant.
            ## @param value Value to set for the partner_state property.
            ## @return a void
            ## 
            def partner_state=(value)
                @partner_state = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("androidEnrollmentAssignments", @android_enrollment_assignments)
                writer.write_boolean_value("androidOnboarded", @android_onboarded)
                writer.write_string_value("displayName", @display_name)
                writer.write_collection_of_object_values("iosEnrollmentAssignments", @ios_enrollment_assignments)
                writer.write_boolean_value("iosOnboarded", @ios_onboarded)
                writer.write_date_time_value("lastHeartbeatDateTime", @last_heartbeat_date_time)
                writer.write_collection_of_object_values("macOsEnrollmentAssignments", @mac_os_enrollment_assignments)
                writer.write_boolean_value("macOsOnboarded", @mac_os_onboarded)
                writer.write_enum_value("partnerState", @partner_state)
            end
        end
    end
end

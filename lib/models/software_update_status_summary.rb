require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SoftwareUpdateStatusSummary < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Number of compliant devices.
            @compliant_device_count
            ## 
            # Number of compliant users.
            @compliant_user_count
            ## 
            # Number of conflict devices.
            @conflict_device_count
            ## 
            # Number of conflict users.
            @conflict_user_count
            ## 
            # The name of the policy.
            @display_name
            ## 
            # Number of devices had error.
            @error_device_count
            ## 
            # Number of users had error.
            @error_user_count
            ## 
            # Number of non compliant devices.
            @non_compliant_device_count
            ## 
            # Number of non compliant users.
            @non_compliant_user_count
            ## 
            # Number of not applicable devices.
            @not_applicable_device_count
            ## 
            # Number of not applicable users.
            @not_applicable_user_count
            ## 
            # Number of remediated devices.
            @remediated_device_count
            ## 
            # Number of remediated users.
            @remediated_user_count
            ## 
            # Number of unknown devices.
            @unknown_device_count
            ## 
            # Number of unknown users.
            @unknown_user_count
            ## 
            ## Gets the compliantDeviceCount property value. Number of compliant devices.
            ## @return a integer
            ## 
            def compliant_device_count
                return @compliant_device_count
            end
            ## 
            ## Sets the compliantDeviceCount property value. Number of compliant devices.
            ## @param value Value to set for the compliant_device_count property.
            ## @return a void
            ## 
            def compliant_device_count=(value)
                @compliant_device_count = value
            end
            ## 
            ## Gets the compliantUserCount property value. Number of compliant users.
            ## @return a integer
            ## 
            def compliant_user_count
                return @compliant_user_count
            end
            ## 
            ## Sets the compliantUserCount property value. Number of compliant users.
            ## @param value Value to set for the compliant_user_count property.
            ## @return a void
            ## 
            def compliant_user_count=(value)
                @compliant_user_count = value
            end
            ## 
            ## Gets the conflictDeviceCount property value. Number of conflict devices.
            ## @return a integer
            ## 
            def conflict_device_count
                return @conflict_device_count
            end
            ## 
            ## Sets the conflictDeviceCount property value. Number of conflict devices.
            ## @param value Value to set for the conflict_device_count property.
            ## @return a void
            ## 
            def conflict_device_count=(value)
                @conflict_device_count = value
            end
            ## 
            ## Gets the conflictUserCount property value. Number of conflict users.
            ## @return a integer
            ## 
            def conflict_user_count
                return @conflict_user_count
            end
            ## 
            ## Sets the conflictUserCount property value. Number of conflict users.
            ## @param value Value to set for the conflict_user_count property.
            ## @return a void
            ## 
            def conflict_user_count=(value)
                @conflict_user_count = value
            end
            ## 
            ## Instantiates a new softwareUpdateStatusSummary and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a software_update_status_summary
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SoftwareUpdateStatusSummary.new
            end
            ## 
            ## Gets the displayName property value. The name of the policy.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The name of the policy.
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the errorDeviceCount property value. Number of devices had error.
            ## @return a integer
            ## 
            def error_device_count
                return @error_device_count
            end
            ## 
            ## Sets the errorDeviceCount property value. Number of devices had error.
            ## @param value Value to set for the error_device_count property.
            ## @return a void
            ## 
            def error_device_count=(value)
                @error_device_count = value
            end
            ## 
            ## Gets the errorUserCount property value. Number of users had error.
            ## @return a integer
            ## 
            def error_user_count
                return @error_user_count
            end
            ## 
            ## Sets the errorUserCount property value. Number of users had error.
            ## @param value Value to set for the error_user_count property.
            ## @return a void
            ## 
            def error_user_count=(value)
                @error_user_count = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "compliantDeviceCount" => lambda {|n| @compliant_device_count = n.get_number_value() },
                    "compliantUserCount" => lambda {|n| @compliant_user_count = n.get_number_value() },
                    "conflictDeviceCount" => lambda {|n| @conflict_device_count = n.get_number_value() },
                    "conflictUserCount" => lambda {|n| @conflict_user_count = n.get_number_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "errorDeviceCount" => lambda {|n| @error_device_count = n.get_number_value() },
                    "errorUserCount" => lambda {|n| @error_user_count = n.get_number_value() },
                    "nonCompliantDeviceCount" => lambda {|n| @non_compliant_device_count = n.get_number_value() },
                    "nonCompliantUserCount" => lambda {|n| @non_compliant_user_count = n.get_number_value() },
                    "notApplicableDeviceCount" => lambda {|n| @not_applicable_device_count = n.get_number_value() },
                    "notApplicableUserCount" => lambda {|n| @not_applicable_user_count = n.get_number_value() },
                    "remediatedDeviceCount" => lambda {|n| @remediated_device_count = n.get_number_value() },
                    "remediatedUserCount" => lambda {|n| @remediated_user_count = n.get_number_value() },
                    "unknownDeviceCount" => lambda {|n| @unknown_device_count = n.get_number_value() },
                    "unknownUserCount" => lambda {|n| @unknown_user_count = n.get_number_value() },
                })
            end
            ## 
            ## Gets the nonCompliantDeviceCount property value. Number of non compliant devices.
            ## @return a integer
            ## 
            def non_compliant_device_count
                return @non_compliant_device_count
            end
            ## 
            ## Sets the nonCompliantDeviceCount property value. Number of non compliant devices.
            ## @param value Value to set for the non_compliant_device_count property.
            ## @return a void
            ## 
            def non_compliant_device_count=(value)
                @non_compliant_device_count = value
            end
            ## 
            ## Gets the nonCompliantUserCount property value. Number of non compliant users.
            ## @return a integer
            ## 
            def non_compliant_user_count
                return @non_compliant_user_count
            end
            ## 
            ## Sets the nonCompliantUserCount property value. Number of non compliant users.
            ## @param value Value to set for the non_compliant_user_count property.
            ## @return a void
            ## 
            def non_compliant_user_count=(value)
                @non_compliant_user_count = value
            end
            ## 
            ## Gets the notApplicableDeviceCount property value. Number of not applicable devices.
            ## @return a integer
            ## 
            def not_applicable_device_count
                return @not_applicable_device_count
            end
            ## 
            ## Sets the notApplicableDeviceCount property value. Number of not applicable devices.
            ## @param value Value to set for the not_applicable_device_count property.
            ## @return a void
            ## 
            def not_applicable_device_count=(value)
                @not_applicable_device_count = value
            end
            ## 
            ## Gets the notApplicableUserCount property value. Number of not applicable users.
            ## @return a integer
            ## 
            def not_applicable_user_count
                return @not_applicable_user_count
            end
            ## 
            ## Sets the notApplicableUserCount property value. Number of not applicable users.
            ## @param value Value to set for the not_applicable_user_count property.
            ## @return a void
            ## 
            def not_applicable_user_count=(value)
                @not_applicable_user_count = value
            end
            ## 
            ## Gets the remediatedDeviceCount property value. Number of remediated devices.
            ## @return a integer
            ## 
            def remediated_device_count
                return @remediated_device_count
            end
            ## 
            ## Sets the remediatedDeviceCount property value. Number of remediated devices.
            ## @param value Value to set for the remediated_device_count property.
            ## @return a void
            ## 
            def remediated_device_count=(value)
                @remediated_device_count = value
            end
            ## 
            ## Gets the remediatedUserCount property value. Number of remediated users.
            ## @return a integer
            ## 
            def remediated_user_count
                return @remediated_user_count
            end
            ## 
            ## Sets the remediatedUserCount property value. Number of remediated users.
            ## @param value Value to set for the remediated_user_count property.
            ## @return a void
            ## 
            def remediated_user_count=(value)
                @remediated_user_count = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_number_value("compliantDeviceCount", @compliant_device_count)
                writer.write_number_value("compliantUserCount", @compliant_user_count)
                writer.write_number_value("conflictDeviceCount", @conflict_device_count)
                writer.write_number_value("conflictUserCount", @conflict_user_count)
                writer.write_string_value("displayName", @display_name)
                writer.write_number_value("errorDeviceCount", @error_device_count)
                writer.write_number_value("errorUserCount", @error_user_count)
                writer.write_number_value("nonCompliantDeviceCount", @non_compliant_device_count)
                writer.write_number_value("nonCompliantUserCount", @non_compliant_user_count)
                writer.write_number_value("notApplicableDeviceCount", @not_applicable_device_count)
                writer.write_number_value("notApplicableUserCount", @not_applicable_user_count)
                writer.write_number_value("remediatedDeviceCount", @remediated_device_count)
                writer.write_number_value("remediatedUserCount", @remediated_user_count)
                writer.write_number_value("unknownDeviceCount", @unknown_device_count)
                writer.write_number_value("unknownUserCount", @unknown_user_count)
            end
            ## 
            ## Gets the unknownDeviceCount property value. Number of unknown devices.
            ## @return a integer
            ## 
            def unknown_device_count
                return @unknown_device_count
            end
            ## 
            ## Sets the unknownDeviceCount property value. Number of unknown devices.
            ## @param value Value to set for the unknown_device_count property.
            ## @return a void
            ## 
            def unknown_device_count=(value)
                @unknown_device_count = value
            end
            ## 
            ## Gets the unknownUserCount property value. Number of unknown users.
            ## @return a integer
            ## 
            def unknown_user_count
                return @unknown_user_count
            end
            ## 
            ## Sets the unknownUserCount property value. Number of unknown users.
            ## @param value Value to set for the unknown_user_count property.
            ## @return a void
            ## 
            def unknown_user_count=(value)
                @unknown_user_count = value
            end
        end
    end
end

require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class DeviceComplianceUserOverview < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Version of the policy for that overview
            @configuration_version
            ## 
            # Number of error Users
            @error_count
            ## 
            # Number of failed Users
            @failed_count
            ## 
            # Last update time
            @last_update_date_time
            ## 
            # Number of not applicable users
            @not_applicable_count
            ## 
            # Number of pending Users
            @pending_count
            ## 
            # Number of succeeded Users
            @success_count
            ## 
            ## Gets the configurationVersion property value. Version of the policy for that overview
            ## @return a integer
            ## 
            def configuration_version
                return @configuration_version
            end
            ## 
            ## Sets the configurationVersion property value. Version of the policy for that overview
            ## @param value Value to set for the configuration_version property.
            ## @return a void
            ## 
            def configuration_version=(value)
                @configuration_version = value
            end
            ## 
            ## Instantiates a new deviceComplianceUserOverview and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a device_compliance_user_overview
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceComplianceUserOverview.new
            end
            ## 
            ## Gets the errorCount property value. Number of error Users
            ## @return a integer
            ## 
            def error_count
                return @error_count
            end
            ## 
            ## Sets the errorCount property value. Number of error Users
            ## @param value Value to set for the error_count property.
            ## @return a void
            ## 
            def error_count=(value)
                @error_count = value
            end
            ## 
            ## Gets the failedCount property value. Number of failed Users
            ## @return a integer
            ## 
            def failed_count
                return @failed_count
            end
            ## 
            ## Sets the failedCount property value. Number of failed Users
            ## @param value Value to set for the failed_count property.
            ## @return a void
            ## 
            def failed_count=(value)
                @failed_count = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "configurationVersion" => lambda {|n| @configuration_version = n.get_number_value() },
                    "errorCount" => lambda {|n| @error_count = n.get_number_value() },
                    "failedCount" => lambda {|n| @failed_count = n.get_number_value() },
                    "lastUpdateDateTime" => lambda {|n| @last_update_date_time = n.get_date_time_value() },
                    "notApplicableCount" => lambda {|n| @not_applicable_count = n.get_number_value() },
                    "pendingCount" => lambda {|n| @pending_count = n.get_number_value() },
                    "successCount" => lambda {|n| @success_count = n.get_number_value() },
                })
            end
            ## 
            ## Gets the lastUpdateDateTime property value. Last update time
            ## @return a date_time
            ## 
            def last_update_date_time
                return @last_update_date_time
            end
            ## 
            ## Sets the lastUpdateDateTime property value. Last update time
            ## @param value Value to set for the last_update_date_time property.
            ## @return a void
            ## 
            def last_update_date_time=(value)
                @last_update_date_time = value
            end
            ## 
            ## Gets the notApplicableCount property value. Number of not applicable users
            ## @return a integer
            ## 
            def not_applicable_count
                return @not_applicable_count
            end
            ## 
            ## Sets the notApplicableCount property value. Number of not applicable users
            ## @param value Value to set for the not_applicable_count property.
            ## @return a void
            ## 
            def not_applicable_count=(value)
                @not_applicable_count = value
            end
            ## 
            ## Gets the pendingCount property value. Number of pending Users
            ## @return a integer
            ## 
            def pending_count
                return @pending_count
            end
            ## 
            ## Sets the pendingCount property value. Number of pending Users
            ## @param value Value to set for the pending_count property.
            ## @return a void
            ## 
            def pending_count=(value)
                @pending_count = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_number_value("configurationVersion", @configuration_version)
                writer.write_number_value("errorCount", @error_count)
                writer.write_number_value("failedCount", @failed_count)
                writer.write_date_time_value("lastUpdateDateTime", @last_update_date_time)
                writer.write_number_value("notApplicableCount", @not_applicable_count)
                writer.write_number_value("pendingCount", @pending_count)
                writer.write_number_value("successCount", @success_count)
            end
            ## 
            ## Gets the successCount property value. Number of succeeded Users
            ## @return a integer
            ## 
            def success_count
                return @success_count
            end
            ## 
            ## Sets the successCount property value. Number of succeeded Users
            ## @param value Value to set for the success_count property.
            ## @return a void
            ## 
            def success_count=(value)
                @success_count = value
            end
        end
    end
end

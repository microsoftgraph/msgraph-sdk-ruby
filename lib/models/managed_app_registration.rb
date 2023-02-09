require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # The ManagedAppEntity is the base entity type for all other entity types under app management workflow.
        class ManagedAppRegistration < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The app package Identifier
            @app_identifier
            ## 
            # App version
            @application_version
            ## 
            # Zero or more policys already applied on the registered app when it last synchronized with managment service.
            @applied_policies
            ## 
            # Date and time of creation
            @created_date_time
            ## 
            # Host device name
            @device_name
            ## 
            # App management SDK generated tag, which helps relate apps hosted on the same device. Not guaranteed to relate apps in all conditions.
            @device_tag
            ## 
            # Host device type
            @device_type
            ## 
            # Zero or more reasons an app registration is flagged. E.g. app running on rooted device
            @flagged_reasons
            ## 
            # Zero or more policies admin intended for the app as of now.
            @intended_policies
            ## 
            # Date and time of last the app synced with management service.
            @last_sync_date_time
            ## 
            # App management SDK version
            @management_sdk_version
            ## 
            # Zero or more long running operations triggered on the app registration.
            @operations
            ## 
            # Operating System version
            @platform_version
            ## 
            # The user Id to who this app registration belongs.
            @user_id
            ## 
            # Version of the entity.
            @version
            ## 
            ## Gets the appIdentifier property value. The app package Identifier
            ## @return a mobile_app_identifier
            ## 
            def app_identifier
                return @app_identifier
            end
            ## 
            ## Sets the appIdentifier property value. The app package Identifier
            ## @param value Value to set for the app_identifier property.
            ## @return a void
            ## 
            def app_identifier=(value)
                @app_identifier = value
            end
            ## 
            ## Gets the applicationVersion property value. App version
            ## @return a string
            ## 
            def application_version
                return @application_version
            end
            ## 
            ## Sets the applicationVersion property value. App version
            ## @param value Value to set for the application_version property.
            ## @return a void
            ## 
            def application_version=(value)
                @application_version = value
            end
            ## 
            ## Gets the appliedPolicies property value. Zero or more policys already applied on the registered app when it last synchronized with managment service.
            ## @return a managed_app_policy
            ## 
            def applied_policies
                return @applied_policies
            end
            ## 
            ## Sets the appliedPolicies property value. Zero or more policys already applied on the registered app when it last synchronized with managment service.
            ## @param value Value to set for the applied_policies property.
            ## @return a void
            ## 
            def applied_policies=(value)
                @applied_policies = value
            end
            ## 
            ## Instantiates a new managedAppRegistration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. Date and time of creation
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. Date and time of creation
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a managed_app_registration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.androidManagedAppRegistration"
                            return AndroidManagedAppRegistration.new
                        when "#microsoft.graph.iosManagedAppRegistration"
                            return IosManagedAppRegistration.new
                    end
                end
                return ManagedAppRegistration.new
            end
            ## 
            ## Gets the deviceName property value. Host device name
            ## @return a string
            ## 
            def device_name
                return @device_name
            end
            ## 
            ## Sets the deviceName property value. Host device name
            ## @param value Value to set for the device_name property.
            ## @return a void
            ## 
            def device_name=(value)
                @device_name = value
            end
            ## 
            ## Gets the deviceTag property value. App management SDK generated tag, which helps relate apps hosted on the same device. Not guaranteed to relate apps in all conditions.
            ## @return a string
            ## 
            def device_tag
                return @device_tag
            end
            ## 
            ## Sets the deviceTag property value. App management SDK generated tag, which helps relate apps hosted on the same device. Not guaranteed to relate apps in all conditions.
            ## @param value Value to set for the device_tag property.
            ## @return a void
            ## 
            def device_tag=(value)
                @device_tag = value
            end
            ## 
            ## Gets the deviceType property value. Host device type
            ## @return a string
            ## 
            def device_type
                return @device_type
            end
            ## 
            ## Sets the deviceType property value. Host device type
            ## @param value Value to set for the device_type property.
            ## @return a void
            ## 
            def device_type=(value)
                @device_type = value
            end
            ## 
            ## Gets the flaggedReasons property value. Zero or more reasons an app registration is flagged. E.g. app running on rooted device
            ## @return a managed_app_flagged_reason
            ## 
            def flagged_reasons
                return @flagged_reasons
            end
            ## 
            ## Sets the flaggedReasons property value. Zero or more reasons an app registration is flagged. E.g. app running on rooted device
            ## @param value Value to set for the flagged_reasons property.
            ## @return a void
            ## 
            def flagged_reasons=(value)
                @flagged_reasons = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "appIdentifier" => lambda {|n| @app_identifier = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::MobileAppIdentifier.create_from_discriminator_value(pn) }) },
                    "applicationVersion" => lambda {|n| @application_version = n.get_string_value() },
                    "appliedPolicies" => lambda {|n| @applied_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ManagedAppPolicy.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "deviceName" => lambda {|n| @device_name = n.get_string_value() },
                    "deviceTag" => lambda {|n| @device_tag = n.get_string_value() },
                    "deviceType" => lambda {|n| @device_type = n.get_string_value() },
                    "flaggedReasons" => lambda {|n| @flagged_reasons = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ManagedAppFlaggedReason.create_from_discriminator_value(pn) }) },
                    "intendedPolicies" => lambda {|n| @intended_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ManagedAppPolicy.create_from_discriminator_value(pn) }) },
                    "lastSyncDateTime" => lambda {|n| @last_sync_date_time = n.get_date_time_value() },
                    "managementSdkVersion" => lambda {|n| @management_sdk_version = n.get_string_value() },
                    "operations" => lambda {|n| @operations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ManagedAppOperation.create_from_discriminator_value(pn) }) },
                    "platformVersion" => lambda {|n| @platform_version = n.get_string_value() },
                    "userId" => lambda {|n| @user_id = n.get_string_value() },
                    "version" => lambda {|n| @version = n.get_string_value() },
                })
            end
            ## 
            ## Gets the intendedPolicies property value. Zero or more policies admin intended for the app as of now.
            ## @return a managed_app_policy
            ## 
            def intended_policies
                return @intended_policies
            end
            ## 
            ## Sets the intendedPolicies property value. Zero or more policies admin intended for the app as of now.
            ## @param value Value to set for the intended_policies property.
            ## @return a void
            ## 
            def intended_policies=(value)
                @intended_policies = value
            end
            ## 
            ## Gets the lastSyncDateTime property value. Date and time of last the app synced with management service.
            ## @return a date_time
            ## 
            def last_sync_date_time
                return @last_sync_date_time
            end
            ## 
            ## Sets the lastSyncDateTime property value. Date and time of last the app synced with management service.
            ## @param value Value to set for the last_sync_date_time property.
            ## @return a void
            ## 
            def last_sync_date_time=(value)
                @last_sync_date_time = value
            end
            ## 
            ## Gets the managementSdkVersion property value. App management SDK version
            ## @return a string
            ## 
            def management_sdk_version
                return @management_sdk_version
            end
            ## 
            ## Sets the managementSdkVersion property value. App management SDK version
            ## @param value Value to set for the management_sdk_version property.
            ## @return a void
            ## 
            def management_sdk_version=(value)
                @management_sdk_version = value
            end
            ## 
            ## Gets the operations property value. Zero or more long running operations triggered on the app registration.
            ## @return a managed_app_operation
            ## 
            def operations
                return @operations
            end
            ## 
            ## Sets the operations property value. Zero or more long running operations triggered on the app registration.
            ## @param value Value to set for the operations property.
            ## @return a void
            ## 
            def operations=(value)
                @operations = value
            end
            ## 
            ## Gets the platformVersion property value. Operating System version
            ## @return a string
            ## 
            def platform_version
                return @platform_version
            end
            ## 
            ## Sets the platformVersion property value. Operating System version
            ## @param value Value to set for the platform_version property.
            ## @return a void
            ## 
            def platform_version=(value)
                @platform_version = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("appIdentifier", @app_identifier)
                writer.write_string_value("applicationVersion", @application_version)
                writer.write_collection_of_object_values("appliedPolicies", @applied_policies)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("deviceName", @device_name)
                writer.write_string_value("deviceTag", @device_tag)
                writer.write_string_value("deviceType", @device_type)
                writer.write_collection_of_object_values("flaggedReasons", @flagged_reasons)
                writer.write_collection_of_object_values("intendedPolicies", @intended_policies)
                writer.write_date_time_value("lastSyncDateTime", @last_sync_date_time)
                writer.write_string_value("managementSdkVersion", @management_sdk_version)
                writer.write_collection_of_object_values("operations", @operations)
                writer.write_string_value("platformVersion", @platform_version)
                writer.write_string_value("userId", @user_id)
                writer.write_string_value("version", @version)
            end
            ## 
            ## Gets the userId property value. The user Id to who this app registration belongs.
            ## @return a string
            ## 
            def user_id
                return @user_id
            end
            ## 
            ## Sets the userId property value. The user Id to who this app registration belongs.
            ## @param value Value to set for the user_id property.
            ## @return a void
            ## 
            def user_id=(value)
                @user_id = value
            end
            ## 
            ## Gets the version property value. Version of the entity.
            ## @return a string
            ## 
            def version
                return @version
            end
            ## 
            ## Sets the version property value. Version of the entity.
            ## @param value Value to set for the version property.
            ## @return a void
            ## 
            def version=(value)
                @version = value
            end
        end
    end
end

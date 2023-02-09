require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # The ManagedAppPolicy resource represents a base type for platform specific policies.
        class ManagedAppPolicy < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The date and time the policy was created.
            @created_date_time
            ## 
            # The policy's description.
            @description
            ## 
            # Policy display name.
            @display_name
            ## 
            # Last time the policy was modified.
            @last_modified_date_time
            ## 
            # Version of the entity.
            @version
            ## 
            ## Instantiates a new managedAppPolicy and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. The date and time the policy was created.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The date and time the policy was created.
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a managed_app_policy
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.androidManagedAppProtection"
                            return AndroidManagedAppProtection.new
                        when "#microsoft.graph.defaultManagedAppProtection"
                            return DefaultManagedAppProtection.new
                        when "#microsoft.graph.iosManagedAppProtection"
                            return IosManagedAppProtection.new
                        when "#microsoft.graph.managedAppConfiguration"
                            return ManagedAppConfiguration.new
                        when "#microsoft.graph.managedAppProtection"
                            return ManagedAppProtection.new
                        when "#microsoft.graph.mdmWindowsInformationProtectionPolicy"
                            return MdmWindowsInformationProtectionPolicy.new
                        when "#microsoft.graph.targetedManagedAppConfiguration"
                            return TargetedManagedAppConfiguration.new
                        when "#microsoft.graph.targetedManagedAppProtection"
                            return TargetedManagedAppProtection.new
                        when "#microsoft.graph.windowsInformationProtection"
                            return WindowsInformationProtection.new
                        when "#microsoft.graph.windowsInformationProtectionPolicy"
                            return WindowsInformationProtectionPolicy.new
                    end
                end
                return ManagedAppPolicy.new
            end
            ## 
            ## Gets the description property value. The policy's description.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The policy's description.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. Policy display name.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Policy display name.
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
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "version" => lambda {|n| @version = n.get_string_value() },
                })
            end
            ## 
            ## Gets the lastModifiedDateTime property value. Last time the policy was modified.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. Last time the policy was modified.
            ## @param value Value to set for the last_modified_date_time property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_string_value("version", @version)
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

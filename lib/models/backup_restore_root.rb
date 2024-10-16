require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class BackupRestoreRoot < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The list of drive inclusion rules applied to the tenant.
            @drive_inclusion_rules
            ## 
            # The list of drive protection units in the tenant.
            @drive_protection_units
            ## 
            # The list of Exchange protection policies in the tenant.
            @exchange_protection_policies
            ## 
            # The list of Exchange restore sessions available in the tenant.
            @exchange_restore_sessions
            ## 
            # The list of mailbox inclusion rules applied to the tenant.
            @mailbox_inclusion_rules
            ## 
            # The list of mailbox protection units in the tenant.
            @mailbox_protection_units
            ## 
            # The list of OneDrive for Business protection policies in the tenant.
            @one_drive_for_business_protection_policies
            ## 
            # The list of OneDrive for Business restore sessions available in the tenant.
            @one_drive_for_business_restore_sessions
            ## 
            # List of protection policies in the tenant.
            @protection_policies
            ## 
            # List of protection units in the tenant.
            @protection_units
            ## 
            # List of restore points in the tenant.
            @restore_points
            ## 
            # List of restore sessions in the tenant.
            @restore_sessions
            ## 
            # List of Backup Storage apps in the tenant.
            @service_apps
            ## 
            # Represents the tenant-level status of the Backup Storage service.
            @service_status
            ## 
            # The list of SharePoint protection policies in the tenant.
            @share_point_protection_policies
            ## 
            # The list of SharePoint restore sessions available in the tenant.
            @share_point_restore_sessions
            ## 
            # The list of site inclusion rules applied to the tenant.
            @site_inclusion_rules
            ## 
            # The list of site protection units in the tenant.
            @site_protection_units
            ## 
            ## Instantiates a new BackupRestoreRoot and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a backup_restore_root
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return BackupRestoreRoot.new
            end
            ## 
            ## Gets the driveInclusionRules property value. The list of drive inclusion rules applied to the tenant.
            ## @return a drive_protection_rule
            ## 
            def drive_inclusion_rules
                return @drive_inclusion_rules
            end
            ## 
            ## Sets the driveInclusionRules property value. The list of drive inclusion rules applied to the tenant.
            ## @param value Value to set for the driveInclusionRules property.
            ## @return a void
            ## 
            def drive_inclusion_rules=(value)
                @drive_inclusion_rules = value
            end
            ## 
            ## Gets the driveProtectionUnits property value. The list of drive protection units in the tenant.
            ## @return a drive_protection_unit
            ## 
            def drive_protection_units
                return @drive_protection_units
            end
            ## 
            ## Sets the driveProtectionUnits property value. The list of drive protection units in the tenant.
            ## @param value Value to set for the driveProtectionUnits property.
            ## @return a void
            ## 
            def drive_protection_units=(value)
                @drive_protection_units = value
            end
            ## 
            ## Gets the exchangeProtectionPolicies property value. The list of Exchange protection policies in the tenant.
            ## @return a exchange_protection_policy
            ## 
            def exchange_protection_policies
                return @exchange_protection_policies
            end
            ## 
            ## Sets the exchangeProtectionPolicies property value. The list of Exchange protection policies in the tenant.
            ## @param value Value to set for the exchangeProtectionPolicies property.
            ## @return a void
            ## 
            def exchange_protection_policies=(value)
                @exchange_protection_policies = value
            end
            ## 
            ## Gets the exchangeRestoreSessions property value. The list of Exchange restore sessions available in the tenant.
            ## @return a exchange_restore_session
            ## 
            def exchange_restore_sessions
                return @exchange_restore_sessions
            end
            ## 
            ## Sets the exchangeRestoreSessions property value. The list of Exchange restore sessions available in the tenant.
            ## @param value Value to set for the exchangeRestoreSessions property.
            ## @return a void
            ## 
            def exchange_restore_sessions=(value)
                @exchange_restore_sessions = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "driveInclusionRules" => lambda {|n| @drive_inclusion_rules = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DriveProtectionRule.create_from_discriminator_value(pn) }) },
                    "driveProtectionUnits" => lambda {|n| @drive_protection_units = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DriveProtectionUnit.create_from_discriminator_value(pn) }) },
                    "exchangeProtectionPolicies" => lambda {|n| @exchange_protection_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ExchangeProtectionPolicy.create_from_discriminator_value(pn) }) },
                    "exchangeRestoreSessions" => lambda {|n| @exchange_restore_sessions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ExchangeRestoreSession.create_from_discriminator_value(pn) }) },
                    "mailboxInclusionRules" => lambda {|n| @mailbox_inclusion_rules = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::MailboxProtectionRule.create_from_discriminator_value(pn) }) },
                    "mailboxProtectionUnits" => lambda {|n| @mailbox_protection_units = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::MailboxProtectionUnit.create_from_discriminator_value(pn) }) },
                    "oneDriveForBusinessProtectionPolicies" => lambda {|n| @one_drive_for_business_protection_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::OneDriveForBusinessProtectionPolicy.create_from_discriminator_value(pn) }) },
                    "oneDriveForBusinessRestoreSessions" => lambda {|n| @one_drive_for_business_restore_sessions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::OneDriveForBusinessRestoreSession.create_from_discriminator_value(pn) }) },
                    "protectionPolicies" => lambda {|n| @protection_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ProtectionPolicyBase.create_from_discriminator_value(pn) }) },
                    "protectionUnits" => lambda {|n| @protection_units = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ProtectionUnitBase.create_from_discriminator_value(pn) }) },
                    "restorePoints" => lambda {|n| @restore_points = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::RestorePoint.create_from_discriminator_value(pn) }) },
                    "restoreSessions" => lambda {|n| @restore_sessions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::RestoreSessionBase.create_from_discriminator_value(pn) }) },
                    "serviceApps" => lambda {|n| @service_apps = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ServiceApp.create_from_discriminator_value(pn) }) },
                    "serviceStatus" => lambda {|n| @service_status = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ServiceStatus.create_from_discriminator_value(pn) }) },
                    "sharePointProtectionPolicies" => lambda {|n| @share_point_protection_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SharePointProtectionPolicy.create_from_discriminator_value(pn) }) },
                    "sharePointRestoreSessions" => lambda {|n| @share_point_restore_sessions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SharePointRestoreSession.create_from_discriminator_value(pn) }) },
                    "siteInclusionRules" => lambda {|n| @site_inclusion_rules = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SiteProtectionRule.create_from_discriminator_value(pn) }) },
                    "siteProtectionUnits" => lambda {|n| @site_protection_units = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SiteProtectionUnit.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the mailboxInclusionRules property value. The list of mailbox inclusion rules applied to the tenant.
            ## @return a mailbox_protection_rule
            ## 
            def mailbox_inclusion_rules
                return @mailbox_inclusion_rules
            end
            ## 
            ## Sets the mailboxInclusionRules property value. The list of mailbox inclusion rules applied to the tenant.
            ## @param value Value to set for the mailboxInclusionRules property.
            ## @return a void
            ## 
            def mailbox_inclusion_rules=(value)
                @mailbox_inclusion_rules = value
            end
            ## 
            ## Gets the mailboxProtectionUnits property value. The list of mailbox protection units in the tenant.
            ## @return a mailbox_protection_unit
            ## 
            def mailbox_protection_units
                return @mailbox_protection_units
            end
            ## 
            ## Sets the mailboxProtectionUnits property value. The list of mailbox protection units in the tenant.
            ## @param value Value to set for the mailboxProtectionUnits property.
            ## @return a void
            ## 
            def mailbox_protection_units=(value)
                @mailbox_protection_units = value
            end
            ## 
            ## Gets the oneDriveForBusinessProtectionPolicies property value. The list of OneDrive for Business protection policies in the tenant.
            ## @return a one_drive_for_business_protection_policy
            ## 
            def one_drive_for_business_protection_policies
                return @one_drive_for_business_protection_policies
            end
            ## 
            ## Sets the oneDriveForBusinessProtectionPolicies property value. The list of OneDrive for Business protection policies in the tenant.
            ## @param value Value to set for the oneDriveForBusinessProtectionPolicies property.
            ## @return a void
            ## 
            def one_drive_for_business_protection_policies=(value)
                @one_drive_for_business_protection_policies = value
            end
            ## 
            ## Gets the oneDriveForBusinessRestoreSessions property value. The list of OneDrive for Business restore sessions available in the tenant.
            ## @return a one_drive_for_business_restore_session
            ## 
            def one_drive_for_business_restore_sessions
                return @one_drive_for_business_restore_sessions
            end
            ## 
            ## Sets the oneDriveForBusinessRestoreSessions property value. The list of OneDrive for Business restore sessions available in the tenant.
            ## @param value Value to set for the oneDriveForBusinessRestoreSessions property.
            ## @return a void
            ## 
            def one_drive_for_business_restore_sessions=(value)
                @one_drive_for_business_restore_sessions = value
            end
            ## 
            ## Gets the protectionPolicies property value. List of protection policies in the tenant.
            ## @return a protection_policy_base
            ## 
            def protection_policies
                return @protection_policies
            end
            ## 
            ## Sets the protectionPolicies property value. List of protection policies in the tenant.
            ## @param value Value to set for the protectionPolicies property.
            ## @return a void
            ## 
            def protection_policies=(value)
                @protection_policies = value
            end
            ## 
            ## Gets the protectionUnits property value. List of protection units in the tenant.
            ## @return a protection_unit_base
            ## 
            def protection_units
                return @protection_units
            end
            ## 
            ## Sets the protectionUnits property value. List of protection units in the tenant.
            ## @param value Value to set for the protectionUnits property.
            ## @return a void
            ## 
            def protection_units=(value)
                @protection_units = value
            end
            ## 
            ## Gets the restorePoints property value. List of restore points in the tenant.
            ## @return a restore_point
            ## 
            def restore_points
                return @restore_points
            end
            ## 
            ## Sets the restorePoints property value. List of restore points in the tenant.
            ## @param value Value to set for the restorePoints property.
            ## @return a void
            ## 
            def restore_points=(value)
                @restore_points = value
            end
            ## 
            ## Gets the restoreSessions property value. List of restore sessions in the tenant.
            ## @return a restore_session_base
            ## 
            def restore_sessions
                return @restore_sessions
            end
            ## 
            ## Sets the restoreSessions property value. List of restore sessions in the tenant.
            ## @param value Value to set for the restoreSessions property.
            ## @return a void
            ## 
            def restore_sessions=(value)
                @restore_sessions = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("driveInclusionRules", @drive_inclusion_rules)
                writer.write_collection_of_object_values("driveProtectionUnits", @drive_protection_units)
                writer.write_collection_of_object_values("exchangeProtectionPolicies", @exchange_protection_policies)
                writer.write_collection_of_object_values("exchangeRestoreSessions", @exchange_restore_sessions)
                writer.write_collection_of_object_values("mailboxInclusionRules", @mailbox_inclusion_rules)
                writer.write_collection_of_object_values("mailboxProtectionUnits", @mailbox_protection_units)
                writer.write_collection_of_object_values("oneDriveForBusinessProtectionPolicies", @one_drive_for_business_protection_policies)
                writer.write_collection_of_object_values("oneDriveForBusinessRestoreSessions", @one_drive_for_business_restore_sessions)
                writer.write_collection_of_object_values("protectionPolicies", @protection_policies)
                writer.write_collection_of_object_values("protectionUnits", @protection_units)
                writer.write_collection_of_object_values("restorePoints", @restore_points)
                writer.write_collection_of_object_values("restoreSessions", @restore_sessions)
                writer.write_collection_of_object_values("serviceApps", @service_apps)
                writer.write_object_value("serviceStatus", @service_status)
                writer.write_collection_of_object_values("sharePointProtectionPolicies", @share_point_protection_policies)
                writer.write_collection_of_object_values("sharePointRestoreSessions", @share_point_restore_sessions)
                writer.write_collection_of_object_values("siteInclusionRules", @site_inclusion_rules)
                writer.write_collection_of_object_values("siteProtectionUnits", @site_protection_units)
            end
            ## 
            ## Gets the serviceApps property value. List of Backup Storage apps in the tenant.
            ## @return a service_app
            ## 
            def service_apps
                return @service_apps
            end
            ## 
            ## Sets the serviceApps property value. List of Backup Storage apps in the tenant.
            ## @param value Value to set for the serviceApps property.
            ## @return a void
            ## 
            def service_apps=(value)
                @service_apps = value
            end
            ## 
            ## Gets the serviceStatus property value. Represents the tenant-level status of the Backup Storage service.
            ## @return a service_status
            ## 
            def service_status
                return @service_status
            end
            ## 
            ## Sets the serviceStatus property value. Represents the tenant-level status of the Backup Storage service.
            ## @param value Value to set for the serviceStatus property.
            ## @return a void
            ## 
            def service_status=(value)
                @service_status = value
            end
            ## 
            ## Gets the sharePointProtectionPolicies property value. The list of SharePoint protection policies in the tenant.
            ## @return a share_point_protection_policy
            ## 
            def share_point_protection_policies
                return @share_point_protection_policies
            end
            ## 
            ## Sets the sharePointProtectionPolicies property value. The list of SharePoint protection policies in the tenant.
            ## @param value Value to set for the sharePointProtectionPolicies property.
            ## @return a void
            ## 
            def share_point_protection_policies=(value)
                @share_point_protection_policies = value
            end
            ## 
            ## Gets the sharePointRestoreSessions property value. The list of SharePoint restore sessions available in the tenant.
            ## @return a share_point_restore_session
            ## 
            def share_point_restore_sessions
                return @share_point_restore_sessions
            end
            ## 
            ## Sets the sharePointRestoreSessions property value. The list of SharePoint restore sessions available in the tenant.
            ## @param value Value to set for the sharePointRestoreSessions property.
            ## @return a void
            ## 
            def share_point_restore_sessions=(value)
                @share_point_restore_sessions = value
            end
            ## 
            ## Gets the siteInclusionRules property value. The list of site inclusion rules applied to the tenant.
            ## @return a site_protection_rule
            ## 
            def site_inclusion_rules
                return @site_inclusion_rules
            end
            ## 
            ## Sets the siteInclusionRules property value. The list of site inclusion rules applied to the tenant.
            ## @param value Value to set for the siteInclusionRules property.
            ## @return a void
            ## 
            def site_inclusion_rules=(value)
                @site_inclusion_rules = value
            end
            ## 
            ## Gets the siteProtectionUnits property value. The list of site protection units in the tenant.
            ## @return a site_protection_unit
            ## 
            def site_protection_units
                return @site_protection_units
            end
            ## 
            ## Sets the siteProtectionUnits property value. The list of site protection units in the tenant.
            ## @param value Value to set for the siteProtectionUnits property.
            ## @return a void
            ## 
            def site_protection_units=(value)
                @site_protection_units = value
            end
        end
    end
end

require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # SharedPC Account Manager Policy. Only applies when the account manager is enabled.
        class SharedPCAccountManagerPolicy
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Possible values for when accounts are deleted on a shared PC.
            @account_deletion_policy
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Sets the percentage of available disk space a PC should have before it stops deleting cached shared PC accounts. Only applies when AccountDeletionPolicy is DiskSpaceThreshold or DiskSpaceThresholdOrInactiveThreshold. Valid values 0 to 100
            @cache_accounts_above_disk_free_percentage
            ## 
            # Specifies when the accounts will start being deleted when they have not been logged on during the specified period, given as number of days. Only applies when AccountDeletionPolicy is DiskSpaceThreshold or DiskSpaceThresholdOrInactiveThreshold.
            @inactive_threshold_days
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Sets the percentage of disk space remaining on a PC before cached accounts will be deleted to free disk space. Accounts that have been inactive the longest will be deleted first. Only applies when AccountDeletionPolicy is DiskSpaceThresholdOrInactiveThreshold. Valid values 0 to 100
            @remove_accounts_below_disk_free_percentage
            ## 
            ## Gets the accountDeletionPolicy property value. Possible values for when accounts are deleted on a shared PC.
            ## @return a shared_p_c_account_deletion_policy_type
            ## 
            def account_deletion_policy
                return @account_deletion_policy
            end
            ## 
            ## Sets the accountDeletionPolicy property value. Possible values for when accounts are deleted on a shared PC.
            ## @param value Value to set for the account_deletion_policy property.
            ## @return a void
            ## 
            def account_deletion_policy=(value)
                @account_deletion_policy = value
            end
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
            ## Gets the cacheAccountsAboveDiskFreePercentage property value. Sets the percentage of available disk space a PC should have before it stops deleting cached shared PC accounts. Only applies when AccountDeletionPolicy is DiskSpaceThreshold or DiskSpaceThresholdOrInactiveThreshold. Valid values 0 to 100
            ## @return a integer
            ## 
            def cache_accounts_above_disk_free_percentage
                return @cache_accounts_above_disk_free_percentage
            end
            ## 
            ## Sets the cacheAccountsAboveDiskFreePercentage property value. Sets the percentage of available disk space a PC should have before it stops deleting cached shared PC accounts. Only applies when AccountDeletionPolicy is DiskSpaceThreshold or DiskSpaceThresholdOrInactiveThreshold. Valid values 0 to 100
            ## @param value Value to set for the cache_accounts_above_disk_free_percentage property.
            ## @return a void
            ## 
            def cache_accounts_above_disk_free_percentage=(value)
                @cache_accounts_above_disk_free_percentage = value
            end
            ## 
            ## Instantiates a new sharedPCAccountManagerPolicy and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a shared_p_c_account_manager_policy
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SharedPCAccountManagerPolicy.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "accountDeletionPolicy" => lambda {|n| @account_deletion_policy = n.get_enum_value(MicrosoftGraph::Models::SharedPCAccountDeletionPolicyType) },
                    "cacheAccountsAboveDiskFreePercentage" => lambda {|n| @cache_accounts_above_disk_free_percentage = n.get_number_value() },
                    "inactiveThresholdDays" => lambda {|n| @inactive_threshold_days = n.get_number_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "removeAccountsBelowDiskFreePercentage" => lambda {|n| @remove_accounts_below_disk_free_percentage = n.get_number_value() },
                }
            end
            ## 
            ## Gets the inactiveThresholdDays property value. Specifies when the accounts will start being deleted when they have not been logged on during the specified period, given as number of days. Only applies when AccountDeletionPolicy is DiskSpaceThreshold or DiskSpaceThresholdOrInactiveThreshold.
            ## @return a integer
            ## 
            def inactive_threshold_days
                return @inactive_threshold_days
            end
            ## 
            ## Sets the inactiveThresholdDays property value. Specifies when the accounts will start being deleted when they have not been logged on during the specified period, given as number of days. Only applies when AccountDeletionPolicy is DiskSpaceThreshold or DiskSpaceThresholdOrInactiveThreshold.
            ## @param value Value to set for the inactive_threshold_days property.
            ## @return a void
            ## 
            def inactive_threshold_days=(value)
                @inactive_threshold_days = value
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
            ## Gets the removeAccountsBelowDiskFreePercentage property value. Sets the percentage of disk space remaining on a PC before cached accounts will be deleted to free disk space. Accounts that have been inactive the longest will be deleted first. Only applies when AccountDeletionPolicy is DiskSpaceThresholdOrInactiveThreshold. Valid values 0 to 100
            ## @return a integer
            ## 
            def remove_accounts_below_disk_free_percentage
                return @remove_accounts_below_disk_free_percentage
            end
            ## 
            ## Sets the removeAccountsBelowDiskFreePercentage property value. Sets the percentage of disk space remaining on a PC before cached accounts will be deleted to free disk space. Accounts that have been inactive the longest will be deleted first. Only applies when AccountDeletionPolicy is DiskSpaceThresholdOrInactiveThreshold. Valid values 0 to 100
            ## @param value Value to set for the remove_accounts_below_disk_free_percentage property.
            ## @return a void
            ## 
            def remove_accounts_below_disk_free_percentage=(value)
                @remove_accounts_below_disk_free_percentage = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_enum_value("accountDeletionPolicy", @account_deletion_policy)
                writer.write_number_value("cacheAccountsAboveDiskFreePercentage", @cache_accounts_above_disk_free_percentage)
                writer.write_number_value("inactiveThresholdDays", @inactive_threshold_days)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_number_value("removeAccountsBelowDiskFreePercentage", @remove_accounts_below_disk_free_percentage)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end

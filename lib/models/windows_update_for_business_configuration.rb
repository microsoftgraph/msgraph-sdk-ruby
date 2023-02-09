require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class WindowsUpdateForBusinessConfiguration < MicrosoftGraph::Models::DeviceConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # When TRUE, allows eligible Windows 10 devices to upgrade to Windows 11. When FALSE, implies the device stays on the existing operating system. Returned by default. Query parameters are not supported.
            @allow_windows11_upgrade
            ## 
            # Auto restart required notification dismissal method
            @auto_restart_notification_dismissal
            ## 
            # Possible values for automatic update mode.
            @automatic_update_mode
            ## 
            # Which branch devices will receive their updates from
            @business_ready_updates_only
            ## 
            # Number of days before feature updates are installed automatically with valid range from 0 to 30 days. Returned by default. Query parameters are not supported.
            @deadline_for_feature_updates_in_days
            ## 
            # Number of days before quality updates are installed automatically with valid range from 0 to 30 days. Returned by default. Query parameters are not supported.
            @deadline_for_quality_updates_in_days
            ## 
            # Number of days after deadline until restarts occur automatically with valid range from 0 to 7 days. Returned by default. Query parameters are not supported.
            @deadline_grace_period_in_days
            ## 
            # Delivery optimization mode for peer distribution
            @delivery_optimization_mode
            ## 
            # When TRUE, excludes Windows update Drivers. When FALSE, does not exclude Windows update Drivers. Returned by default. Query parameters are not supported.
            @drivers_excluded
            ## 
            # Deadline in days before automatically scheduling and executing a pending restart outside of active hours, with valid range from 2 to 30 days. Returned by default. Query parameters are not supported.
            @engaged_restart_deadline_in_days
            ## 
            # Number of days a user can snooze Engaged Restart reminder notifications with valid range from 1 to 3 days. Returned by default. Query parameters are not supported.
            @engaged_restart_snooze_schedule_in_days
            ## 
            # Number of days before transitioning from Auto Restarts scheduled outside of active hours to Engaged Restart, which requires the user to schedule, with valid range from 0 to 30 days. Returned by default. Query parameters are not supported.
            @engaged_restart_transition_schedule_in_days
            ## 
            # Defer Feature Updates by these many days with valid range from 0 to 30 days. Returned by default. Query parameters are not supported.
            @feature_updates_deferral_period_in_days
            ## 
            # The Feature Updates Pause Expiry datetime. This value is 35 days from the time admin paused or extended the pause for the ring. Returned by default. Query parameters are not supported.
            @feature_updates_pause_expiry_date_time
            ## 
            # The Feature Updates Pause start date. This value is the time when the admin paused or extended the pause for the ring. Returned by default. Query parameters are not supported. This property is read-only.
            @feature_updates_pause_start_date
            ## 
            # When TRUE, assigned devices are paused from receiving feature updates for up to 35 days from the time you pause the ring. When FALSE, does not pause Feature Updates. Returned by default. Query parameters are not supported.s
            @feature_updates_paused
            ## 
            # The Feature Updates Rollback Start datetime.This value is the time when the admin rolled back the Feature update for the ring.Returned by default.Query parameters are not supported.
            @feature_updates_rollback_start_date_time
            ## 
            # The number of days after a Feature Update for which a rollback is valid with valid range from 2 to 60 days. Returned by default. Query parameters are not supported.
            @feature_updates_rollback_window_in_days
            ## 
            # When TRUE, rollback Feature Updates on the next device check in. When FALSE, do not rollback Feature Updates on the next device check in. Returned by default.Query parameters are not supported.
            @feature_updates_will_be_rolled_back
            ## 
            # The Installation Schedule. Possible values are: ActiveHoursStart, ActiveHoursEnd, ScheduledInstallDay, ScheduledInstallTime. Returned by default. Query parameters are not supported.
            @installation_schedule
            ## 
            # When TRUE, allows Microsoft Update Service. When FALSE, does not allow Microsoft Update Service. Returned by default. Query parameters are not supported.
            @microsoft_update_service_allowed
            ## 
            # When TRUE the device should wait until deadline for rebooting outside of active hours. When FALSE the device should not wait until deadline for rebooting outside of active hours. Returned by default. Query parameters are not supported.
            @postpone_reboot_until_after_deadline
            ## 
            # Possible values for pre-release features.
            @prerelease_features
            ## 
            # Defer Quality Updates by these many days with valid range from 0 to 30 days. Returned by default. Query parameters are not supported.
            @quality_updates_deferral_period_in_days
            ## 
            # The Quality Updates Pause Expiry datetime. This value is 35 days from the time admin paused or extended the pause for the ring. Returned by default. Query parameters are not supported.
            @quality_updates_pause_expiry_date_time
            ## 
            # The Quality Updates Pause start date. This value is the time when the admin paused or extended the pause for the ring. Returned by default. Query parameters are not supported. This property is read-only.
            @quality_updates_pause_start_date
            ## 
            # When TRUE, assigned devices are paused from receiving quality updates for up to 35 days from the time you pause the ring. When FALSE, does not pause Quality Updates. Returned by default. Query parameters are not supported.
            @quality_updates_paused
            ## 
            # The Quality Updates Rollback Start datetime. This value is the time when the admin rolled back the Quality update for the ring. Returned by default. Query parameters are not supported.
            @quality_updates_rollback_start_date_time
            ## 
            # When TRUE, rollback Quality Updates on the next device check in. When FALSE, do not rollback Quality Updates on the next device check in. Returned by default. Query parameters are not supported.
            @quality_updates_will_be_rolled_back
            ## 
            # Specify the period for auto-restart imminent warning notifications. Supported values: 15, 30 or 60 (minutes). Returned by default. Query parameters are not supported.
            @schedule_imminent_restart_warning_in_minutes
            ## 
            # Specify the period for auto-restart warning reminder notifications. Supported values: 2, 4, 8, 12 or 24 (hours). Returned by default. Query parameters are not supported.
            @schedule_restart_warning_in_hours
            ## 
            # When TRUE, skips all checks before restart: Battery level = 40%, User presence, Display Needed, Presentation mode, Full screen mode, phone call state, game mode etc. When FALSE, does not skip all checks before restart. Returned by default. Query parameters are not supported.
            @skip_checks_before_restart
            ## 
            # Windows Update Notification Display Options
            @update_notification_level
            ## 
            # Schedule the update installation on the weeks of the month. Possible values are: UserDefined, FirstWeek, SecondWeek, ThirdWeek, FourthWeek, EveryWeek. Returned by default. Query parameters are not supported. Possible values are: userDefined, firstWeek, secondWeek, thirdWeek, fourthWeek, everyWeek, unknownFutureValue.
            @update_weeks
            ## 
            # Possible values of a property
            @user_pause_access
            ## 
            # Possible values of a property
            @user_windows_update_scan_access
            ## 
            ## Gets the allowWindows11Upgrade property value. When TRUE, allows eligible Windows 10 devices to upgrade to Windows 11. When FALSE, implies the device stays on the existing operating system. Returned by default. Query parameters are not supported.
            ## @return a boolean
            ## 
            def allow_windows11_upgrade
                return @allow_windows11_upgrade
            end
            ## 
            ## Sets the allowWindows11Upgrade property value. When TRUE, allows eligible Windows 10 devices to upgrade to Windows 11. When FALSE, implies the device stays on the existing operating system. Returned by default. Query parameters are not supported.
            ## @param value Value to set for the allow_windows11_upgrade property.
            ## @return a void
            ## 
            def allow_windows11_upgrade=(value)
                @allow_windows11_upgrade = value
            end
            ## 
            ## Gets the autoRestartNotificationDismissal property value. Auto restart required notification dismissal method
            ## @return a auto_restart_notification_dismissal_method
            ## 
            def auto_restart_notification_dismissal
                return @auto_restart_notification_dismissal
            end
            ## 
            ## Sets the autoRestartNotificationDismissal property value. Auto restart required notification dismissal method
            ## @param value Value to set for the auto_restart_notification_dismissal property.
            ## @return a void
            ## 
            def auto_restart_notification_dismissal=(value)
                @auto_restart_notification_dismissal = value
            end
            ## 
            ## Gets the automaticUpdateMode property value. Possible values for automatic update mode.
            ## @return a automatic_update_mode
            ## 
            def automatic_update_mode
                return @automatic_update_mode
            end
            ## 
            ## Sets the automaticUpdateMode property value. Possible values for automatic update mode.
            ## @param value Value to set for the automatic_update_mode property.
            ## @return a void
            ## 
            def automatic_update_mode=(value)
                @automatic_update_mode = value
            end
            ## 
            ## Gets the businessReadyUpdatesOnly property value. Which branch devices will receive their updates from
            ## @return a windows_update_type
            ## 
            def business_ready_updates_only
                return @business_ready_updates_only
            end
            ## 
            ## Sets the businessReadyUpdatesOnly property value. Which branch devices will receive their updates from
            ## @param value Value to set for the business_ready_updates_only property.
            ## @return a void
            ## 
            def business_ready_updates_only=(value)
                @business_ready_updates_only = value
            end
            ## 
            ## Instantiates a new WindowsUpdateForBusinessConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.windowsUpdateForBusinessConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a windows_update_for_business_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsUpdateForBusinessConfiguration.new
            end
            ## 
            ## Gets the deadlineForFeatureUpdatesInDays property value. Number of days before feature updates are installed automatically with valid range from 0 to 30 days. Returned by default. Query parameters are not supported.
            ## @return a integer
            ## 
            def deadline_for_feature_updates_in_days
                return @deadline_for_feature_updates_in_days
            end
            ## 
            ## Sets the deadlineForFeatureUpdatesInDays property value. Number of days before feature updates are installed automatically with valid range from 0 to 30 days. Returned by default. Query parameters are not supported.
            ## @param value Value to set for the deadline_for_feature_updates_in_days property.
            ## @return a void
            ## 
            def deadline_for_feature_updates_in_days=(value)
                @deadline_for_feature_updates_in_days = value
            end
            ## 
            ## Gets the deadlineForQualityUpdatesInDays property value. Number of days before quality updates are installed automatically with valid range from 0 to 30 days. Returned by default. Query parameters are not supported.
            ## @return a integer
            ## 
            def deadline_for_quality_updates_in_days
                return @deadline_for_quality_updates_in_days
            end
            ## 
            ## Sets the deadlineForQualityUpdatesInDays property value. Number of days before quality updates are installed automatically with valid range from 0 to 30 days. Returned by default. Query parameters are not supported.
            ## @param value Value to set for the deadline_for_quality_updates_in_days property.
            ## @return a void
            ## 
            def deadline_for_quality_updates_in_days=(value)
                @deadline_for_quality_updates_in_days = value
            end
            ## 
            ## Gets the deadlineGracePeriodInDays property value. Number of days after deadline until restarts occur automatically with valid range from 0 to 7 days. Returned by default. Query parameters are not supported.
            ## @return a integer
            ## 
            def deadline_grace_period_in_days
                return @deadline_grace_period_in_days
            end
            ## 
            ## Sets the deadlineGracePeriodInDays property value. Number of days after deadline until restarts occur automatically with valid range from 0 to 7 days. Returned by default. Query parameters are not supported.
            ## @param value Value to set for the deadline_grace_period_in_days property.
            ## @return a void
            ## 
            def deadline_grace_period_in_days=(value)
                @deadline_grace_period_in_days = value
            end
            ## 
            ## Gets the deliveryOptimizationMode property value. Delivery optimization mode for peer distribution
            ## @return a windows_delivery_optimization_mode
            ## 
            def delivery_optimization_mode
                return @delivery_optimization_mode
            end
            ## 
            ## Sets the deliveryOptimizationMode property value. Delivery optimization mode for peer distribution
            ## @param value Value to set for the delivery_optimization_mode property.
            ## @return a void
            ## 
            def delivery_optimization_mode=(value)
                @delivery_optimization_mode = value
            end
            ## 
            ## Gets the driversExcluded property value. When TRUE, excludes Windows update Drivers. When FALSE, does not exclude Windows update Drivers. Returned by default. Query parameters are not supported.
            ## @return a boolean
            ## 
            def drivers_excluded
                return @drivers_excluded
            end
            ## 
            ## Sets the driversExcluded property value. When TRUE, excludes Windows update Drivers. When FALSE, does not exclude Windows update Drivers. Returned by default. Query parameters are not supported.
            ## @param value Value to set for the drivers_excluded property.
            ## @return a void
            ## 
            def drivers_excluded=(value)
                @drivers_excluded = value
            end
            ## 
            ## Gets the engagedRestartDeadlineInDays property value. Deadline in days before automatically scheduling and executing a pending restart outside of active hours, with valid range from 2 to 30 days. Returned by default. Query parameters are not supported.
            ## @return a integer
            ## 
            def engaged_restart_deadline_in_days
                return @engaged_restart_deadline_in_days
            end
            ## 
            ## Sets the engagedRestartDeadlineInDays property value. Deadline in days before automatically scheduling and executing a pending restart outside of active hours, with valid range from 2 to 30 days. Returned by default. Query parameters are not supported.
            ## @param value Value to set for the engaged_restart_deadline_in_days property.
            ## @return a void
            ## 
            def engaged_restart_deadline_in_days=(value)
                @engaged_restart_deadline_in_days = value
            end
            ## 
            ## Gets the engagedRestartSnoozeScheduleInDays property value. Number of days a user can snooze Engaged Restart reminder notifications with valid range from 1 to 3 days. Returned by default. Query parameters are not supported.
            ## @return a integer
            ## 
            def engaged_restart_snooze_schedule_in_days
                return @engaged_restart_snooze_schedule_in_days
            end
            ## 
            ## Sets the engagedRestartSnoozeScheduleInDays property value. Number of days a user can snooze Engaged Restart reminder notifications with valid range from 1 to 3 days. Returned by default. Query parameters are not supported.
            ## @param value Value to set for the engaged_restart_snooze_schedule_in_days property.
            ## @return a void
            ## 
            def engaged_restart_snooze_schedule_in_days=(value)
                @engaged_restart_snooze_schedule_in_days = value
            end
            ## 
            ## Gets the engagedRestartTransitionScheduleInDays property value. Number of days before transitioning from Auto Restarts scheduled outside of active hours to Engaged Restart, which requires the user to schedule, with valid range from 0 to 30 days. Returned by default. Query parameters are not supported.
            ## @return a integer
            ## 
            def engaged_restart_transition_schedule_in_days
                return @engaged_restart_transition_schedule_in_days
            end
            ## 
            ## Sets the engagedRestartTransitionScheduleInDays property value. Number of days before transitioning from Auto Restarts scheduled outside of active hours to Engaged Restart, which requires the user to schedule, with valid range from 0 to 30 days. Returned by default. Query parameters are not supported.
            ## @param value Value to set for the engaged_restart_transition_schedule_in_days property.
            ## @return a void
            ## 
            def engaged_restart_transition_schedule_in_days=(value)
                @engaged_restart_transition_schedule_in_days = value
            end
            ## 
            ## Gets the featureUpdatesDeferralPeriodInDays property value. Defer Feature Updates by these many days with valid range from 0 to 30 days. Returned by default. Query parameters are not supported.
            ## @return a integer
            ## 
            def feature_updates_deferral_period_in_days
                return @feature_updates_deferral_period_in_days
            end
            ## 
            ## Sets the featureUpdatesDeferralPeriodInDays property value. Defer Feature Updates by these many days with valid range from 0 to 30 days. Returned by default. Query parameters are not supported.
            ## @param value Value to set for the feature_updates_deferral_period_in_days property.
            ## @return a void
            ## 
            def feature_updates_deferral_period_in_days=(value)
                @feature_updates_deferral_period_in_days = value
            end
            ## 
            ## Gets the featureUpdatesPauseExpiryDateTime property value. The Feature Updates Pause Expiry datetime. This value is 35 days from the time admin paused or extended the pause for the ring. Returned by default. Query parameters are not supported.
            ## @return a date_time
            ## 
            def feature_updates_pause_expiry_date_time
                return @feature_updates_pause_expiry_date_time
            end
            ## 
            ## Sets the featureUpdatesPauseExpiryDateTime property value. The Feature Updates Pause Expiry datetime. This value is 35 days from the time admin paused or extended the pause for the ring. Returned by default. Query parameters are not supported.
            ## @param value Value to set for the feature_updates_pause_expiry_date_time property.
            ## @return a void
            ## 
            def feature_updates_pause_expiry_date_time=(value)
                @feature_updates_pause_expiry_date_time = value
            end
            ## 
            ## Gets the featureUpdatesPauseStartDate property value. The Feature Updates Pause start date. This value is the time when the admin paused or extended the pause for the ring. Returned by default. Query parameters are not supported. This property is read-only.
            ## @return a date
            ## 
            def feature_updates_pause_start_date
                return @feature_updates_pause_start_date
            end
            ## 
            ## Sets the featureUpdatesPauseStartDate property value. The Feature Updates Pause start date. This value is the time when the admin paused or extended the pause for the ring. Returned by default. Query parameters are not supported. This property is read-only.
            ## @param value Value to set for the feature_updates_pause_start_date property.
            ## @return a void
            ## 
            def feature_updates_pause_start_date=(value)
                @feature_updates_pause_start_date = value
            end
            ## 
            ## Gets the featureUpdatesPaused property value. When TRUE, assigned devices are paused from receiving feature updates for up to 35 days from the time you pause the ring. When FALSE, does not pause Feature Updates. Returned by default. Query parameters are not supported.s
            ## @return a boolean
            ## 
            def feature_updates_paused
                return @feature_updates_paused
            end
            ## 
            ## Sets the featureUpdatesPaused property value. When TRUE, assigned devices are paused from receiving feature updates for up to 35 days from the time you pause the ring. When FALSE, does not pause Feature Updates. Returned by default. Query parameters are not supported.s
            ## @param value Value to set for the feature_updates_paused property.
            ## @return a void
            ## 
            def feature_updates_paused=(value)
                @feature_updates_paused = value
            end
            ## 
            ## Gets the featureUpdatesRollbackStartDateTime property value. The Feature Updates Rollback Start datetime.This value is the time when the admin rolled back the Feature update for the ring.Returned by default.Query parameters are not supported.
            ## @return a date_time
            ## 
            def feature_updates_rollback_start_date_time
                return @feature_updates_rollback_start_date_time
            end
            ## 
            ## Sets the featureUpdatesRollbackStartDateTime property value. The Feature Updates Rollback Start datetime.This value is the time when the admin rolled back the Feature update for the ring.Returned by default.Query parameters are not supported.
            ## @param value Value to set for the feature_updates_rollback_start_date_time property.
            ## @return a void
            ## 
            def feature_updates_rollback_start_date_time=(value)
                @feature_updates_rollback_start_date_time = value
            end
            ## 
            ## Gets the featureUpdatesRollbackWindowInDays property value. The number of days after a Feature Update for which a rollback is valid with valid range from 2 to 60 days. Returned by default. Query parameters are not supported.
            ## @return a integer
            ## 
            def feature_updates_rollback_window_in_days
                return @feature_updates_rollback_window_in_days
            end
            ## 
            ## Sets the featureUpdatesRollbackWindowInDays property value. The number of days after a Feature Update for which a rollback is valid with valid range from 2 to 60 days. Returned by default. Query parameters are not supported.
            ## @param value Value to set for the feature_updates_rollback_window_in_days property.
            ## @return a void
            ## 
            def feature_updates_rollback_window_in_days=(value)
                @feature_updates_rollback_window_in_days = value
            end
            ## 
            ## Gets the featureUpdatesWillBeRolledBack property value. When TRUE, rollback Feature Updates on the next device check in. When FALSE, do not rollback Feature Updates on the next device check in. Returned by default.Query parameters are not supported.
            ## @return a boolean
            ## 
            def feature_updates_will_be_rolled_back
                return @feature_updates_will_be_rolled_back
            end
            ## 
            ## Sets the featureUpdatesWillBeRolledBack property value. When TRUE, rollback Feature Updates on the next device check in. When FALSE, do not rollback Feature Updates on the next device check in. Returned by default.Query parameters are not supported.
            ## @param value Value to set for the feature_updates_will_be_rolled_back property.
            ## @return a void
            ## 
            def feature_updates_will_be_rolled_back=(value)
                @feature_updates_will_be_rolled_back = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "allowWindows11Upgrade" => lambda {|n| @allow_windows11_upgrade = n.get_boolean_value() },
                    "autoRestartNotificationDismissal" => lambda {|n| @auto_restart_notification_dismissal = n.get_enum_value(MicrosoftGraph::Models::AutoRestartNotificationDismissalMethod) },
                    "automaticUpdateMode" => lambda {|n| @automatic_update_mode = n.get_enum_value(MicrosoftGraph::Models::AutomaticUpdateMode) },
                    "businessReadyUpdatesOnly" => lambda {|n| @business_ready_updates_only = n.get_enum_value(MicrosoftGraph::Models::WindowsUpdateType) },
                    "deadlineForFeatureUpdatesInDays" => lambda {|n| @deadline_for_feature_updates_in_days = n.get_number_value() },
                    "deadlineForQualityUpdatesInDays" => lambda {|n| @deadline_for_quality_updates_in_days = n.get_number_value() },
                    "deadlineGracePeriodInDays" => lambda {|n| @deadline_grace_period_in_days = n.get_number_value() },
                    "deliveryOptimizationMode" => lambda {|n| @delivery_optimization_mode = n.get_enum_value(MicrosoftGraph::Models::WindowsDeliveryOptimizationMode) },
                    "driversExcluded" => lambda {|n| @drivers_excluded = n.get_boolean_value() },
                    "engagedRestartDeadlineInDays" => lambda {|n| @engaged_restart_deadline_in_days = n.get_number_value() },
                    "engagedRestartSnoozeScheduleInDays" => lambda {|n| @engaged_restart_snooze_schedule_in_days = n.get_number_value() },
                    "engagedRestartTransitionScheduleInDays" => lambda {|n| @engaged_restart_transition_schedule_in_days = n.get_number_value() },
                    "featureUpdatesDeferralPeriodInDays" => lambda {|n| @feature_updates_deferral_period_in_days = n.get_number_value() },
                    "featureUpdatesPauseExpiryDateTime" => lambda {|n| @feature_updates_pause_expiry_date_time = n.get_date_time_value() },
                    "featureUpdatesPauseStartDate" => lambda {|n| @feature_updates_pause_start_date = n.get_date_value() },
                    "featureUpdatesPaused" => lambda {|n| @feature_updates_paused = n.get_boolean_value() },
                    "featureUpdatesRollbackStartDateTime" => lambda {|n| @feature_updates_rollback_start_date_time = n.get_date_time_value() },
                    "featureUpdatesRollbackWindowInDays" => lambda {|n| @feature_updates_rollback_window_in_days = n.get_number_value() },
                    "featureUpdatesWillBeRolledBack" => lambda {|n| @feature_updates_will_be_rolled_back = n.get_boolean_value() },
                    "installationSchedule" => lambda {|n| @installation_schedule = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::WindowsUpdateInstallScheduleType.create_from_discriminator_value(pn) }) },
                    "microsoftUpdateServiceAllowed" => lambda {|n| @microsoft_update_service_allowed = n.get_boolean_value() },
                    "postponeRebootUntilAfterDeadline" => lambda {|n| @postpone_reboot_until_after_deadline = n.get_boolean_value() },
                    "prereleaseFeatures" => lambda {|n| @prerelease_features = n.get_enum_value(MicrosoftGraph::Models::PrereleaseFeatures) },
                    "qualityUpdatesDeferralPeriodInDays" => lambda {|n| @quality_updates_deferral_period_in_days = n.get_number_value() },
                    "qualityUpdatesPauseExpiryDateTime" => lambda {|n| @quality_updates_pause_expiry_date_time = n.get_date_time_value() },
                    "qualityUpdatesPauseStartDate" => lambda {|n| @quality_updates_pause_start_date = n.get_date_value() },
                    "qualityUpdatesPaused" => lambda {|n| @quality_updates_paused = n.get_boolean_value() },
                    "qualityUpdatesRollbackStartDateTime" => lambda {|n| @quality_updates_rollback_start_date_time = n.get_date_time_value() },
                    "qualityUpdatesWillBeRolledBack" => lambda {|n| @quality_updates_will_be_rolled_back = n.get_boolean_value() },
                    "scheduleImminentRestartWarningInMinutes" => lambda {|n| @schedule_imminent_restart_warning_in_minutes = n.get_number_value() },
                    "scheduleRestartWarningInHours" => lambda {|n| @schedule_restart_warning_in_hours = n.get_number_value() },
                    "skipChecksBeforeRestart" => lambda {|n| @skip_checks_before_restart = n.get_boolean_value() },
                    "updateNotificationLevel" => lambda {|n| @update_notification_level = n.get_enum_value(MicrosoftGraph::Models::WindowsUpdateNotificationDisplayOption) },
                    "updateWeeks" => lambda {|n| @update_weeks = n.get_enum_value(MicrosoftGraph::Models::WindowsUpdateForBusinessUpdateWeeks) },
                    "userPauseAccess" => lambda {|n| @user_pause_access = n.get_enum_value(MicrosoftGraph::Models::Enablement) },
                    "userWindowsUpdateScanAccess" => lambda {|n| @user_windows_update_scan_access = n.get_enum_value(MicrosoftGraph::Models::Enablement) },
                })
            end
            ## 
            ## Gets the installationSchedule property value. The Installation Schedule. Possible values are: ActiveHoursStart, ActiveHoursEnd, ScheduledInstallDay, ScheduledInstallTime. Returned by default. Query parameters are not supported.
            ## @return a windows_update_install_schedule_type
            ## 
            def installation_schedule
                return @installation_schedule
            end
            ## 
            ## Sets the installationSchedule property value. The Installation Schedule. Possible values are: ActiveHoursStart, ActiveHoursEnd, ScheduledInstallDay, ScheduledInstallTime. Returned by default. Query parameters are not supported.
            ## @param value Value to set for the installation_schedule property.
            ## @return a void
            ## 
            def installation_schedule=(value)
                @installation_schedule = value
            end
            ## 
            ## Gets the microsoftUpdateServiceAllowed property value. When TRUE, allows Microsoft Update Service. When FALSE, does not allow Microsoft Update Service. Returned by default. Query parameters are not supported.
            ## @return a boolean
            ## 
            def microsoft_update_service_allowed
                return @microsoft_update_service_allowed
            end
            ## 
            ## Sets the microsoftUpdateServiceAllowed property value. When TRUE, allows Microsoft Update Service. When FALSE, does not allow Microsoft Update Service. Returned by default. Query parameters are not supported.
            ## @param value Value to set for the microsoft_update_service_allowed property.
            ## @return a void
            ## 
            def microsoft_update_service_allowed=(value)
                @microsoft_update_service_allowed = value
            end
            ## 
            ## Gets the postponeRebootUntilAfterDeadline property value. When TRUE the device should wait until deadline for rebooting outside of active hours. When FALSE the device should not wait until deadline for rebooting outside of active hours. Returned by default. Query parameters are not supported.
            ## @return a boolean
            ## 
            def postpone_reboot_until_after_deadline
                return @postpone_reboot_until_after_deadline
            end
            ## 
            ## Sets the postponeRebootUntilAfterDeadline property value. When TRUE the device should wait until deadline for rebooting outside of active hours. When FALSE the device should not wait until deadline for rebooting outside of active hours. Returned by default. Query parameters are not supported.
            ## @param value Value to set for the postpone_reboot_until_after_deadline property.
            ## @return a void
            ## 
            def postpone_reboot_until_after_deadline=(value)
                @postpone_reboot_until_after_deadline = value
            end
            ## 
            ## Gets the prereleaseFeatures property value. Possible values for pre-release features.
            ## @return a prerelease_features
            ## 
            def prerelease_features
                return @prerelease_features
            end
            ## 
            ## Sets the prereleaseFeatures property value. Possible values for pre-release features.
            ## @param value Value to set for the prerelease_features property.
            ## @return a void
            ## 
            def prerelease_features=(value)
                @prerelease_features = value
            end
            ## 
            ## Gets the qualityUpdatesDeferralPeriodInDays property value. Defer Quality Updates by these many days with valid range from 0 to 30 days. Returned by default. Query parameters are not supported.
            ## @return a integer
            ## 
            def quality_updates_deferral_period_in_days
                return @quality_updates_deferral_period_in_days
            end
            ## 
            ## Sets the qualityUpdatesDeferralPeriodInDays property value. Defer Quality Updates by these many days with valid range from 0 to 30 days. Returned by default. Query parameters are not supported.
            ## @param value Value to set for the quality_updates_deferral_period_in_days property.
            ## @return a void
            ## 
            def quality_updates_deferral_period_in_days=(value)
                @quality_updates_deferral_period_in_days = value
            end
            ## 
            ## Gets the qualityUpdatesPauseExpiryDateTime property value. The Quality Updates Pause Expiry datetime. This value is 35 days from the time admin paused or extended the pause for the ring. Returned by default. Query parameters are not supported.
            ## @return a date_time
            ## 
            def quality_updates_pause_expiry_date_time
                return @quality_updates_pause_expiry_date_time
            end
            ## 
            ## Sets the qualityUpdatesPauseExpiryDateTime property value. The Quality Updates Pause Expiry datetime. This value is 35 days from the time admin paused or extended the pause for the ring. Returned by default. Query parameters are not supported.
            ## @param value Value to set for the quality_updates_pause_expiry_date_time property.
            ## @return a void
            ## 
            def quality_updates_pause_expiry_date_time=(value)
                @quality_updates_pause_expiry_date_time = value
            end
            ## 
            ## Gets the qualityUpdatesPauseStartDate property value. The Quality Updates Pause start date. This value is the time when the admin paused or extended the pause for the ring. Returned by default. Query parameters are not supported. This property is read-only.
            ## @return a date
            ## 
            def quality_updates_pause_start_date
                return @quality_updates_pause_start_date
            end
            ## 
            ## Sets the qualityUpdatesPauseStartDate property value. The Quality Updates Pause start date. This value is the time when the admin paused or extended the pause for the ring. Returned by default. Query parameters are not supported. This property is read-only.
            ## @param value Value to set for the quality_updates_pause_start_date property.
            ## @return a void
            ## 
            def quality_updates_pause_start_date=(value)
                @quality_updates_pause_start_date = value
            end
            ## 
            ## Gets the qualityUpdatesPaused property value. When TRUE, assigned devices are paused from receiving quality updates for up to 35 days from the time you pause the ring. When FALSE, does not pause Quality Updates. Returned by default. Query parameters are not supported.
            ## @return a boolean
            ## 
            def quality_updates_paused
                return @quality_updates_paused
            end
            ## 
            ## Sets the qualityUpdatesPaused property value. When TRUE, assigned devices are paused from receiving quality updates for up to 35 days from the time you pause the ring. When FALSE, does not pause Quality Updates. Returned by default. Query parameters are not supported.
            ## @param value Value to set for the quality_updates_paused property.
            ## @return a void
            ## 
            def quality_updates_paused=(value)
                @quality_updates_paused = value
            end
            ## 
            ## Gets the qualityUpdatesRollbackStartDateTime property value. The Quality Updates Rollback Start datetime. This value is the time when the admin rolled back the Quality update for the ring. Returned by default. Query parameters are not supported.
            ## @return a date_time
            ## 
            def quality_updates_rollback_start_date_time
                return @quality_updates_rollback_start_date_time
            end
            ## 
            ## Sets the qualityUpdatesRollbackStartDateTime property value. The Quality Updates Rollback Start datetime. This value is the time when the admin rolled back the Quality update for the ring. Returned by default. Query parameters are not supported.
            ## @param value Value to set for the quality_updates_rollback_start_date_time property.
            ## @return a void
            ## 
            def quality_updates_rollback_start_date_time=(value)
                @quality_updates_rollback_start_date_time = value
            end
            ## 
            ## Gets the qualityUpdatesWillBeRolledBack property value. When TRUE, rollback Quality Updates on the next device check in. When FALSE, do not rollback Quality Updates on the next device check in. Returned by default. Query parameters are not supported.
            ## @return a boolean
            ## 
            def quality_updates_will_be_rolled_back
                return @quality_updates_will_be_rolled_back
            end
            ## 
            ## Sets the qualityUpdatesWillBeRolledBack property value. When TRUE, rollback Quality Updates on the next device check in. When FALSE, do not rollback Quality Updates on the next device check in. Returned by default. Query parameters are not supported.
            ## @param value Value to set for the quality_updates_will_be_rolled_back property.
            ## @return a void
            ## 
            def quality_updates_will_be_rolled_back=(value)
                @quality_updates_will_be_rolled_back = value
            end
            ## 
            ## Gets the scheduleImminentRestartWarningInMinutes property value. Specify the period for auto-restart imminent warning notifications. Supported values: 15, 30 or 60 (minutes). Returned by default. Query parameters are not supported.
            ## @return a integer
            ## 
            def schedule_imminent_restart_warning_in_minutes
                return @schedule_imminent_restart_warning_in_minutes
            end
            ## 
            ## Sets the scheduleImminentRestartWarningInMinutes property value. Specify the period for auto-restart imminent warning notifications. Supported values: 15, 30 or 60 (minutes). Returned by default. Query parameters are not supported.
            ## @param value Value to set for the schedule_imminent_restart_warning_in_minutes property.
            ## @return a void
            ## 
            def schedule_imminent_restart_warning_in_minutes=(value)
                @schedule_imminent_restart_warning_in_minutes = value
            end
            ## 
            ## Gets the scheduleRestartWarningInHours property value. Specify the period for auto-restart warning reminder notifications. Supported values: 2, 4, 8, 12 or 24 (hours). Returned by default. Query parameters are not supported.
            ## @return a integer
            ## 
            def schedule_restart_warning_in_hours
                return @schedule_restart_warning_in_hours
            end
            ## 
            ## Sets the scheduleRestartWarningInHours property value. Specify the period for auto-restart warning reminder notifications. Supported values: 2, 4, 8, 12 or 24 (hours). Returned by default. Query parameters are not supported.
            ## @param value Value to set for the schedule_restart_warning_in_hours property.
            ## @return a void
            ## 
            def schedule_restart_warning_in_hours=(value)
                @schedule_restart_warning_in_hours = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("allowWindows11Upgrade", @allow_windows11_upgrade)
                writer.write_enum_value("autoRestartNotificationDismissal", @auto_restart_notification_dismissal)
                writer.write_enum_value("automaticUpdateMode", @automatic_update_mode)
                writer.write_enum_value("businessReadyUpdatesOnly", @business_ready_updates_only)
                writer.write_number_value("deadlineForFeatureUpdatesInDays", @deadline_for_feature_updates_in_days)
                writer.write_number_value("deadlineForQualityUpdatesInDays", @deadline_for_quality_updates_in_days)
                writer.write_number_value("deadlineGracePeriodInDays", @deadline_grace_period_in_days)
                writer.write_enum_value("deliveryOptimizationMode", @delivery_optimization_mode)
                writer.write_boolean_value("driversExcluded", @drivers_excluded)
                writer.write_number_value("engagedRestartDeadlineInDays", @engaged_restart_deadline_in_days)
                writer.write_number_value("engagedRestartSnoozeScheduleInDays", @engaged_restart_snooze_schedule_in_days)
                writer.write_number_value("engagedRestartTransitionScheduleInDays", @engaged_restart_transition_schedule_in_days)
                writer.write_number_value("featureUpdatesDeferralPeriodInDays", @feature_updates_deferral_period_in_days)
                writer.write_date_time_value("featureUpdatesPauseExpiryDateTime", @feature_updates_pause_expiry_date_time)
                writer.write_boolean_value("featureUpdatesPaused", @feature_updates_paused)
                writer.write_date_time_value("featureUpdatesRollbackStartDateTime", @feature_updates_rollback_start_date_time)
                writer.write_number_value("featureUpdatesRollbackWindowInDays", @feature_updates_rollback_window_in_days)
                writer.write_boolean_value("featureUpdatesWillBeRolledBack", @feature_updates_will_be_rolled_back)
                writer.write_object_value("installationSchedule", @installation_schedule)
                writer.write_boolean_value("microsoftUpdateServiceAllowed", @microsoft_update_service_allowed)
                writer.write_boolean_value("postponeRebootUntilAfterDeadline", @postpone_reboot_until_after_deadline)
                writer.write_enum_value("prereleaseFeatures", @prerelease_features)
                writer.write_number_value("qualityUpdatesDeferralPeriodInDays", @quality_updates_deferral_period_in_days)
                writer.write_date_time_value("qualityUpdatesPauseExpiryDateTime", @quality_updates_pause_expiry_date_time)
                writer.write_boolean_value("qualityUpdatesPaused", @quality_updates_paused)
                writer.write_date_time_value("qualityUpdatesRollbackStartDateTime", @quality_updates_rollback_start_date_time)
                writer.write_boolean_value("qualityUpdatesWillBeRolledBack", @quality_updates_will_be_rolled_back)
                writer.write_number_value("scheduleImminentRestartWarningInMinutes", @schedule_imminent_restart_warning_in_minutes)
                writer.write_number_value("scheduleRestartWarningInHours", @schedule_restart_warning_in_hours)
                writer.write_boolean_value("skipChecksBeforeRestart", @skip_checks_before_restart)
                writer.write_enum_value("updateNotificationLevel", @update_notification_level)
                writer.write_enum_value("updateWeeks", @update_weeks)
                writer.write_enum_value("userPauseAccess", @user_pause_access)
                writer.write_enum_value("userWindowsUpdateScanAccess", @user_windows_update_scan_access)
            end
            ## 
            ## Gets the skipChecksBeforeRestart property value. When TRUE, skips all checks before restart: Battery level = 40%, User presence, Display Needed, Presentation mode, Full screen mode, phone call state, game mode etc. When FALSE, does not skip all checks before restart. Returned by default. Query parameters are not supported.
            ## @return a boolean
            ## 
            def skip_checks_before_restart
                return @skip_checks_before_restart
            end
            ## 
            ## Sets the skipChecksBeforeRestart property value. When TRUE, skips all checks before restart: Battery level = 40%, User presence, Display Needed, Presentation mode, Full screen mode, phone call state, game mode etc. When FALSE, does not skip all checks before restart. Returned by default. Query parameters are not supported.
            ## @param value Value to set for the skip_checks_before_restart property.
            ## @return a void
            ## 
            def skip_checks_before_restart=(value)
                @skip_checks_before_restart = value
            end
            ## 
            ## Gets the updateNotificationLevel property value. Windows Update Notification Display Options
            ## @return a windows_update_notification_display_option
            ## 
            def update_notification_level
                return @update_notification_level
            end
            ## 
            ## Sets the updateNotificationLevel property value. Windows Update Notification Display Options
            ## @param value Value to set for the update_notification_level property.
            ## @return a void
            ## 
            def update_notification_level=(value)
                @update_notification_level = value
            end
            ## 
            ## Gets the updateWeeks property value. Schedule the update installation on the weeks of the month. Possible values are: UserDefined, FirstWeek, SecondWeek, ThirdWeek, FourthWeek, EveryWeek. Returned by default. Query parameters are not supported. Possible values are: userDefined, firstWeek, secondWeek, thirdWeek, fourthWeek, everyWeek, unknownFutureValue.
            ## @return a windows_update_for_business_update_weeks
            ## 
            def update_weeks
                return @update_weeks
            end
            ## 
            ## Sets the updateWeeks property value. Schedule the update installation on the weeks of the month. Possible values are: UserDefined, FirstWeek, SecondWeek, ThirdWeek, FourthWeek, EveryWeek. Returned by default. Query parameters are not supported. Possible values are: userDefined, firstWeek, secondWeek, thirdWeek, fourthWeek, everyWeek, unknownFutureValue.
            ## @param value Value to set for the update_weeks property.
            ## @return a void
            ## 
            def update_weeks=(value)
                @update_weeks = value
            end
            ## 
            ## Gets the userPauseAccess property value. Possible values of a property
            ## @return a enablement
            ## 
            def user_pause_access
                return @user_pause_access
            end
            ## 
            ## Sets the userPauseAccess property value. Possible values of a property
            ## @param value Value to set for the user_pause_access property.
            ## @return a void
            ## 
            def user_pause_access=(value)
                @user_pause_access = value
            end
            ## 
            ## Gets the userWindowsUpdateScanAccess property value. Possible values of a property
            ## @return a enablement
            ## 
            def user_windows_update_scan_access
                return @user_windows_update_scan_access
            end
            ## 
            ## Sets the userWindowsUpdateScanAccess property value. Possible values of a property
            ## @param value Value to set for the user_windows_update_scan_access property.
            ## @return a void
            ## 
            def user_windows_update_scan_access=(value)
                @user_windows_update_scan_access = value
            end
        end
    end
end

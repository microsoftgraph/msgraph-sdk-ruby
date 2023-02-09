require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class GroupLifecyclePolicy < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # List of email address to send notifications for groups without owners. Multiple email address can be defined by separating email address with a semicolon.
            @alternate_notification_emails
            ## 
            # Number of days before a group expires and needs to be renewed. Once renewed, the group expiration is extended by the number of days defined.
            @group_lifetime_in_days
            ## 
            # The group type for which the expiration policy applies. Possible values are All, Selected or None.
            @managed_group_types
            ## 
            ## Gets the alternateNotificationEmails property value. List of email address to send notifications for groups without owners. Multiple email address can be defined by separating email address with a semicolon.
            ## @return a string
            ## 
            def alternate_notification_emails
                return @alternate_notification_emails
            end
            ## 
            ## Sets the alternateNotificationEmails property value. List of email address to send notifications for groups without owners. Multiple email address can be defined by separating email address with a semicolon.
            ## @param value Value to set for the alternate_notification_emails property.
            ## @return a void
            ## 
            def alternate_notification_emails=(value)
                @alternate_notification_emails = value
            end
            ## 
            ## Instantiates a new groupLifecyclePolicy and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a group_lifecycle_policy
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return GroupLifecyclePolicy.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "alternateNotificationEmails" => lambda {|n| @alternate_notification_emails = n.get_string_value() },
                    "groupLifetimeInDays" => lambda {|n| @group_lifetime_in_days = n.get_number_value() },
                    "managedGroupTypes" => lambda {|n| @managed_group_types = n.get_string_value() },
                })
            end
            ## 
            ## Gets the groupLifetimeInDays property value. Number of days before a group expires and needs to be renewed. Once renewed, the group expiration is extended by the number of days defined.
            ## @return a integer
            ## 
            def group_lifetime_in_days
                return @group_lifetime_in_days
            end
            ## 
            ## Sets the groupLifetimeInDays property value. Number of days before a group expires and needs to be renewed. Once renewed, the group expiration is extended by the number of days defined.
            ## @param value Value to set for the group_lifetime_in_days property.
            ## @return a void
            ## 
            def group_lifetime_in_days=(value)
                @group_lifetime_in_days = value
            end
            ## 
            ## Gets the managedGroupTypes property value. The group type for which the expiration policy applies. Possible values are All, Selected or None.
            ## @return a string
            ## 
            def managed_group_types
                return @managed_group_types
            end
            ## 
            ## Sets the managedGroupTypes property value. The group type for which the expiration policy applies. Possible values are All, Selected or None.
            ## @param value Value to set for the managed_group_types property.
            ## @return a void
            ## 
            def managed_group_types=(value)
                @managed_group_types = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("alternateNotificationEmails", @alternate_notification_emails)
                writer.write_number_value("groupLifetimeInDays", @group_lifetime_in_days)
                writer.write_string_value("managedGroupTypes", @managed_group_types)
            end
        end
    end
end

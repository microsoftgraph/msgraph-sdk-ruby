require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class MailboxSettings
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Folder ID of an archive folder for the user.
            @archive_folder
            ## 
            # Configuration settings to automatically notify the sender of an incoming email with a message from the signed-in user.
            @automatic_replies_setting
            ## 
            # The date format for the user's mailbox.
            @date_format
            ## 
            # If the user has a calendar delegate, this specifies whether the delegate, mailbox owner, or both receive meeting messages and meeting responses. Possible values are: sendToDelegateAndInformationToPrincipal, sendToDelegateAndPrincipal, sendToDelegateOnly.
            @delegate_meeting_message_delivery_options
            ## 
            # The locale information for the user, including the preferred language and country/region.
            @language
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The time format for the user's mailbox.
            @time_format
            ## 
            # The default time zone for the user's mailbox.
            @time_zone
            ## 
            # The purpose of the mailbox. Differentiates a mailbox for a single user from a shared mailbox and equipment mailbox in Exchange Online. Possible values are: user, linked, shared, room, equipment, others, unknownFutureValue. Read-only.
            @user_purpose
            ## 
            # The days of the week and hours in a specific time zone that the user works.
            @working_hours
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
            ## Gets the archiveFolder property value. Folder ID of an archive folder for the user.
            ## @return a string
            ## 
            def archive_folder
                return @archive_folder
            end
            ## 
            ## Sets the archiveFolder property value. Folder ID of an archive folder for the user.
            ## @param value Value to set for the archive_folder property.
            ## @return a void
            ## 
            def archive_folder=(value)
                @archive_folder = value
            end
            ## 
            ## Gets the automaticRepliesSetting property value. Configuration settings to automatically notify the sender of an incoming email with a message from the signed-in user.
            ## @return a automatic_replies_setting
            ## 
            def automatic_replies_setting
                return @automatic_replies_setting
            end
            ## 
            ## Sets the automaticRepliesSetting property value. Configuration settings to automatically notify the sender of an incoming email with a message from the signed-in user.
            ## @param value Value to set for the automatic_replies_setting property.
            ## @return a void
            ## 
            def automatic_replies_setting=(value)
                @automatic_replies_setting = value
            end
            ## 
            ## Instantiates a new mailboxSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a mailbox_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MailboxSettings.new
            end
            ## 
            ## Gets the dateFormat property value. The date format for the user's mailbox.
            ## @return a string
            ## 
            def date_format
                return @date_format
            end
            ## 
            ## Sets the dateFormat property value. The date format for the user's mailbox.
            ## @param value Value to set for the date_format property.
            ## @return a void
            ## 
            def date_format=(value)
                @date_format = value
            end
            ## 
            ## Gets the delegateMeetingMessageDeliveryOptions property value. If the user has a calendar delegate, this specifies whether the delegate, mailbox owner, or both receive meeting messages and meeting responses. Possible values are: sendToDelegateAndInformationToPrincipal, sendToDelegateAndPrincipal, sendToDelegateOnly.
            ## @return a delegate_meeting_message_delivery_options
            ## 
            def delegate_meeting_message_delivery_options
                return @delegate_meeting_message_delivery_options
            end
            ## 
            ## Sets the delegateMeetingMessageDeliveryOptions property value. If the user has a calendar delegate, this specifies whether the delegate, mailbox owner, or both receive meeting messages and meeting responses. Possible values are: sendToDelegateAndInformationToPrincipal, sendToDelegateAndPrincipal, sendToDelegateOnly.
            ## @param value Value to set for the delegate_meeting_message_delivery_options property.
            ## @return a void
            ## 
            def delegate_meeting_message_delivery_options=(value)
                @delegate_meeting_message_delivery_options = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "archiveFolder" => lambda {|n| @archive_folder = n.get_string_value() },
                    "automaticRepliesSetting" => lambda {|n| @automatic_replies_setting = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AutomaticRepliesSetting.create_from_discriminator_value(pn) }) },
                    "dateFormat" => lambda {|n| @date_format = n.get_string_value() },
                    "delegateMeetingMessageDeliveryOptions" => lambda {|n| @delegate_meeting_message_delivery_options = n.get_enum_value(MicrosoftGraph::Models::DelegateMeetingMessageDeliveryOptions) },
                    "language" => lambda {|n| @language = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::LocaleInfo.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "timeFormat" => lambda {|n| @time_format = n.get_string_value() },
                    "timeZone" => lambda {|n| @time_zone = n.get_string_value() },
                    "userPurpose" => lambda {|n| @user_purpose = n.get_enum_value(MicrosoftGraph::Models::UserPurpose) },
                    "workingHours" => lambda {|n| @working_hours = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::WorkingHours.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the language property value. The locale information for the user, including the preferred language and country/region.
            ## @return a locale_info
            ## 
            def language
                return @language
            end
            ## 
            ## Sets the language property value. The locale information for the user, including the preferred language and country/region.
            ## @param value Value to set for the language property.
            ## @return a void
            ## 
            def language=(value)
                @language = value
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
                writer.write_string_value("archiveFolder", @archive_folder)
                writer.write_object_value("automaticRepliesSetting", @automatic_replies_setting)
                writer.write_string_value("dateFormat", @date_format)
                writer.write_enum_value("delegateMeetingMessageDeliveryOptions", @delegate_meeting_message_delivery_options)
                writer.write_object_value("language", @language)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("timeFormat", @time_format)
                writer.write_string_value("timeZone", @time_zone)
                writer.write_enum_value("userPurpose", @user_purpose)
                writer.write_object_value("workingHours", @working_hours)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the timeFormat property value. The time format for the user's mailbox.
            ## @return a string
            ## 
            def time_format
                return @time_format
            end
            ## 
            ## Sets the timeFormat property value. The time format for the user's mailbox.
            ## @param value Value to set for the time_format property.
            ## @return a void
            ## 
            def time_format=(value)
                @time_format = value
            end
            ## 
            ## Gets the timeZone property value. The default time zone for the user's mailbox.
            ## @return a string
            ## 
            def time_zone
                return @time_zone
            end
            ## 
            ## Sets the timeZone property value. The default time zone for the user's mailbox.
            ## @param value Value to set for the time_zone property.
            ## @return a void
            ## 
            def time_zone=(value)
                @time_zone = value
            end
            ## 
            ## Gets the userPurpose property value. The purpose of the mailbox. Differentiates a mailbox for a single user from a shared mailbox and equipment mailbox in Exchange Online. Possible values are: user, linked, shared, room, equipment, others, unknownFutureValue. Read-only.
            ## @return a user_purpose
            ## 
            def user_purpose
                return @user_purpose
            end
            ## 
            ## Sets the userPurpose property value. The purpose of the mailbox. Differentiates a mailbox for a single user from a shared mailbox and equipment mailbox in Exchange Online. Possible values are: user, linked, shared, room, equipment, others, unknownFutureValue. Read-only.
            ## @param value Value to set for the user_purpose property.
            ## @return a void
            ## 
            def user_purpose=(value)
                @user_purpose = value
            end
            ## 
            ## Gets the workingHours property value. The days of the week and hours in a specific time zone that the user works.
            ## @return a working_hours
            ## 
            def working_hours
                return @working_hours
            end
            ## 
            ## Sets the workingHours property value. The days of the week and hours in a specific time zone that the user works.
            ## @param value Value to set for the working_hours property.
            ## @return a void
            ## 
            def working_hours=(value)
                @working_hours = value
            end
        end
    end
end

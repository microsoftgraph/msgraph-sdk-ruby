require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # An abstract class containing the base properties for Managed eBook.
        class ManagedEBook < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The list of assignments for this eBook.
            @assignments
            ## 
            # The date and time when the eBook file was created.
            @created_date_time
            ## 
            # Description.
            @description
            ## 
            # The list of installation states for this eBook.
            @device_states
            ## 
            # Name of the eBook.
            @display_name
            ## 
            # The more information Url.
            @information_url
            ## 
            # Mobile App Install Summary.
            @install_summary
            ## 
            # Book cover.
            @large_cover
            ## 
            # The date and time when the eBook was last modified.
            @last_modified_date_time
            ## 
            # The privacy statement Url.
            @privacy_information_url
            ## 
            # The date and time when the eBook was published.
            @published_date_time
            ## 
            # Publisher.
            @publisher
            ## 
            # The list of installation states for this eBook.
            @user_state_summary
            ## 
            ## Gets the assignments property value. The list of assignments for this eBook.
            ## @return a managed_e_book_assignment
            ## 
            def assignments
                return @assignments
            end
            ## 
            ## Sets the assignments property value. The list of assignments for this eBook.
            ## @param value Value to set for the assignments property.
            ## @return a void
            ## 
            def assignments=(value)
                @assignments = value
            end
            ## 
            ## Instantiates a new managedEBook and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. The date and time when the eBook file was created.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The date and time when the eBook file was created.
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a managed_e_book
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.iosVppEBook"
                            return IosVppEBook.new
                    end
                end
                return ManagedEBook.new
            end
            ## 
            ## Gets the description property value. Description.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. Description.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the deviceStates property value. The list of installation states for this eBook.
            ## @return a device_install_state
            ## 
            def device_states
                return @device_states
            end
            ## 
            ## Sets the deviceStates property value. The list of installation states for this eBook.
            ## @param value Value to set for the device_states property.
            ## @return a void
            ## 
            def device_states=(value)
                @device_states = value
            end
            ## 
            ## Gets the displayName property value. Name of the eBook.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Name of the eBook.
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
                    "assignments" => lambda {|n| @assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ManagedEBookAssignment.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "deviceStates" => lambda {|n| @device_states = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DeviceInstallState.create_from_discriminator_value(pn) }) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "informationUrl" => lambda {|n| @information_url = n.get_string_value() },
                    "installSummary" => lambda {|n| @install_summary = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::EBookInstallSummary.create_from_discriminator_value(pn) }) },
                    "largeCover" => lambda {|n| @large_cover = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::MimeContent.create_from_discriminator_value(pn) }) },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "privacyInformationUrl" => lambda {|n| @privacy_information_url = n.get_string_value() },
                    "publishedDateTime" => lambda {|n| @published_date_time = n.get_date_time_value() },
                    "publisher" => lambda {|n| @publisher = n.get_string_value() },
                    "userStateSummary" => lambda {|n| @user_state_summary = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::UserInstallStateSummary.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the informationUrl property value. The more information Url.
            ## @return a string
            ## 
            def information_url
                return @information_url
            end
            ## 
            ## Sets the informationUrl property value. The more information Url.
            ## @param value Value to set for the information_url property.
            ## @return a void
            ## 
            def information_url=(value)
                @information_url = value
            end
            ## 
            ## Gets the installSummary property value. Mobile App Install Summary.
            ## @return a e_book_install_summary
            ## 
            def install_summary
                return @install_summary
            end
            ## 
            ## Sets the installSummary property value. Mobile App Install Summary.
            ## @param value Value to set for the install_summary property.
            ## @return a void
            ## 
            def install_summary=(value)
                @install_summary = value
            end
            ## 
            ## Gets the largeCover property value. Book cover.
            ## @return a mime_content
            ## 
            def large_cover
                return @large_cover
            end
            ## 
            ## Sets the largeCover property value. Book cover.
            ## @param value Value to set for the large_cover property.
            ## @return a void
            ## 
            def large_cover=(value)
                @large_cover = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. The date and time when the eBook was last modified.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. The date and time when the eBook was last modified.
            ## @param value Value to set for the last_modified_date_time property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the privacyInformationUrl property value. The privacy statement Url.
            ## @return a string
            ## 
            def privacy_information_url
                return @privacy_information_url
            end
            ## 
            ## Sets the privacyInformationUrl property value. The privacy statement Url.
            ## @param value Value to set for the privacy_information_url property.
            ## @return a void
            ## 
            def privacy_information_url=(value)
                @privacy_information_url = value
            end
            ## 
            ## Gets the publishedDateTime property value. The date and time when the eBook was published.
            ## @return a date_time
            ## 
            def published_date_time
                return @published_date_time
            end
            ## 
            ## Sets the publishedDateTime property value. The date and time when the eBook was published.
            ## @param value Value to set for the published_date_time property.
            ## @return a void
            ## 
            def published_date_time=(value)
                @published_date_time = value
            end
            ## 
            ## Gets the publisher property value. Publisher.
            ## @return a string
            ## 
            def publisher
                return @publisher
            end
            ## 
            ## Sets the publisher property value. Publisher.
            ## @param value Value to set for the publisher property.
            ## @return a void
            ## 
            def publisher=(value)
                @publisher = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("assignments", @assignments)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("description", @description)
                writer.write_collection_of_object_values("deviceStates", @device_states)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("informationUrl", @information_url)
                writer.write_object_value("installSummary", @install_summary)
                writer.write_object_value("largeCover", @large_cover)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_string_value("privacyInformationUrl", @privacy_information_url)
                writer.write_date_time_value("publishedDateTime", @published_date_time)
                writer.write_string_value("publisher", @publisher)
                writer.write_collection_of_object_values("userStateSummary", @user_state_summary)
            end
            ## 
            ## Gets the userStateSummary property value. The list of installation states for this eBook.
            ## @return a user_install_state_summary
            ## 
            def user_state_summary
                return @user_state_summary
            end
            ## 
            ## Sets the userStateSummary property value. The list of installation states for this eBook.
            ## @param value Value to set for the user_state_summary property.
            ## @return a void
            ## 
            def user_state_summary=(value)
                @user_state_summary = value
            end
        end
    end
end

require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class EBookInstallSummary < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Number of Devices that have failed to install this book.
            @failed_device_count
            ## 
            # Number of Users that have 1 or more device that failed to install this book.
            @failed_user_count
            ## 
            # Number of Devices that have successfully installed this book.
            @installed_device_count
            ## 
            # Number of Users whose devices have all succeeded to install this book.
            @installed_user_count
            ## 
            # Number of Devices that does not have this book installed.
            @not_installed_device_count
            ## 
            # Number of Users that did not install this book.
            @not_installed_user_count
            ## 
            ## Instantiates a new eBookInstallSummary and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a e_book_install_summary
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EBookInstallSummary.new
            end
            ## 
            ## Gets the failedDeviceCount property value. Number of Devices that have failed to install this book.
            ## @return a integer
            ## 
            def failed_device_count
                return @failed_device_count
            end
            ## 
            ## Sets the failedDeviceCount property value. Number of Devices that have failed to install this book.
            ## @param value Value to set for the failed_device_count property.
            ## @return a void
            ## 
            def failed_device_count=(value)
                @failed_device_count = value
            end
            ## 
            ## Gets the failedUserCount property value. Number of Users that have 1 or more device that failed to install this book.
            ## @return a integer
            ## 
            def failed_user_count
                return @failed_user_count
            end
            ## 
            ## Sets the failedUserCount property value. Number of Users that have 1 or more device that failed to install this book.
            ## @param value Value to set for the failed_user_count property.
            ## @return a void
            ## 
            def failed_user_count=(value)
                @failed_user_count = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "failedDeviceCount" => lambda {|n| @failed_device_count = n.get_number_value() },
                    "failedUserCount" => lambda {|n| @failed_user_count = n.get_number_value() },
                    "installedDeviceCount" => lambda {|n| @installed_device_count = n.get_number_value() },
                    "installedUserCount" => lambda {|n| @installed_user_count = n.get_number_value() },
                    "notInstalledDeviceCount" => lambda {|n| @not_installed_device_count = n.get_number_value() },
                    "notInstalledUserCount" => lambda {|n| @not_installed_user_count = n.get_number_value() },
                })
            end
            ## 
            ## Gets the installedDeviceCount property value. Number of Devices that have successfully installed this book.
            ## @return a integer
            ## 
            def installed_device_count
                return @installed_device_count
            end
            ## 
            ## Sets the installedDeviceCount property value. Number of Devices that have successfully installed this book.
            ## @param value Value to set for the installed_device_count property.
            ## @return a void
            ## 
            def installed_device_count=(value)
                @installed_device_count = value
            end
            ## 
            ## Gets the installedUserCount property value. Number of Users whose devices have all succeeded to install this book.
            ## @return a integer
            ## 
            def installed_user_count
                return @installed_user_count
            end
            ## 
            ## Sets the installedUserCount property value. Number of Users whose devices have all succeeded to install this book.
            ## @param value Value to set for the installed_user_count property.
            ## @return a void
            ## 
            def installed_user_count=(value)
                @installed_user_count = value
            end
            ## 
            ## Gets the notInstalledDeviceCount property value. Number of Devices that does not have this book installed.
            ## @return a integer
            ## 
            def not_installed_device_count
                return @not_installed_device_count
            end
            ## 
            ## Sets the notInstalledDeviceCount property value. Number of Devices that does not have this book installed.
            ## @param value Value to set for the not_installed_device_count property.
            ## @return a void
            ## 
            def not_installed_device_count=(value)
                @not_installed_device_count = value
            end
            ## 
            ## Gets the notInstalledUserCount property value. Number of Users that did not install this book.
            ## @return a integer
            ## 
            def not_installed_user_count
                return @not_installed_user_count
            end
            ## 
            ## Sets the notInstalledUserCount property value. Number of Users that did not install this book.
            ## @param value Value to set for the not_installed_user_count property.
            ## @return a void
            ## 
            def not_installed_user_count=(value)
                @not_installed_user_count = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_number_value("failedDeviceCount", @failed_device_count)
                writer.write_number_value("failedUserCount", @failed_user_count)
                writer.write_number_value("installedDeviceCount", @installed_device_count)
                writer.write_number_value("installedUserCount", @installed_user_count)
                writer.write_number_value("notInstalledDeviceCount", @not_installed_device_count)
                writer.write_number_value("notInstalledUserCount", @not_installed_user_count)
            end
        end
    end
end

require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Win32LobApp < MicrosoftGraph::Models::MobileLobApp
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Contains properties for Windows architecture.
            @applicable_architectures
            ## 
            # The command line to install this app
            @install_command_line
            ## 
            # The install experience for this app.
            @install_experience
            ## 
            # The value for the minimum CPU speed which is required to install this app.
            @minimum_cpu_speed_in_m_hz
            ## 
            # The value for the minimum free disk space which is required to install this app.
            @minimum_free_disk_space_in_m_b
            ## 
            # The value for the minimum physical memory which is required to install this app.
            @minimum_memory_in_m_b
            ## 
            # The value for the minimum number of processors which is required to install this app.
            @minimum_number_of_processors
            ## 
            # The value for the minimum supported windows release.
            @minimum_supported_windows_release
            ## 
            # The MSI details if this Win32 app is an MSI app.
            @msi_information
            ## 
            # The return codes for post installation behavior.
            @return_codes
            ## 
            # The detection and requirement rules for this app.
            @rules
            ## 
            # The relative path of the setup file in the encrypted Win32LobApp package.
            @setup_file_path
            ## 
            # The command line to uninstall this app
            @uninstall_command_line
            ## 
            ## Gets the applicableArchitectures property value. Contains properties for Windows architecture.
            ## @return a windows_architecture
            ## 
            def applicable_architectures
                return @applicable_architectures
            end
            ## 
            ## Sets the applicableArchitectures property value. Contains properties for Windows architecture.
            ## @param value Value to set for the applicable_architectures property.
            ## @return a void
            ## 
            def applicable_architectures=(value)
                @applicable_architectures = value
            end
            ## 
            ## Instantiates a new Win32LobApp and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.win32LobApp"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a win32_lob_app
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Win32LobApp.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "applicableArchitectures" => lambda {|n| @applicable_architectures = n.get_enum_value(MicrosoftGraph::Models::WindowsArchitecture) },
                    "installCommandLine" => lambda {|n| @install_command_line = n.get_string_value() },
                    "installExperience" => lambda {|n| @install_experience = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Win32LobAppInstallExperience.create_from_discriminator_value(pn) }) },
                    "minimumCpuSpeedInMHz" => lambda {|n| @minimum_cpu_speed_in_m_hz = n.get_number_value() },
                    "minimumFreeDiskSpaceInMB" => lambda {|n| @minimum_free_disk_space_in_m_b = n.get_number_value() },
                    "minimumMemoryInMB" => lambda {|n| @minimum_memory_in_m_b = n.get_number_value() },
                    "minimumNumberOfProcessors" => lambda {|n| @minimum_number_of_processors = n.get_number_value() },
                    "minimumSupportedWindowsRelease" => lambda {|n| @minimum_supported_windows_release = n.get_string_value() },
                    "msiInformation" => lambda {|n| @msi_information = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Win32LobAppMsiInformation.create_from_discriminator_value(pn) }) },
                    "returnCodes" => lambda {|n| @return_codes = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Win32LobAppReturnCode.create_from_discriminator_value(pn) }) },
                    "rules" => lambda {|n| @rules = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Win32LobAppRule.create_from_discriminator_value(pn) }) },
                    "setupFilePath" => lambda {|n| @setup_file_path = n.get_string_value() },
                    "uninstallCommandLine" => lambda {|n| @uninstall_command_line = n.get_string_value() },
                })
            end
            ## 
            ## Gets the installCommandLine property value. The command line to install this app
            ## @return a string
            ## 
            def install_command_line
                return @install_command_line
            end
            ## 
            ## Sets the installCommandLine property value. The command line to install this app
            ## @param value Value to set for the install_command_line property.
            ## @return a void
            ## 
            def install_command_line=(value)
                @install_command_line = value
            end
            ## 
            ## Gets the installExperience property value. The install experience for this app.
            ## @return a win32_lob_app_install_experience
            ## 
            def install_experience
                return @install_experience
            end
            ## 
            ## Sets the installExperience property value. The install experience for this app.
            ## @param value Value to set for the install_experience property.
            ## @return a void
            ## 
            def install_experience=(value)
                @install_experience = value
            end
            ## 
            ## Gets the minimumCpuSpeedInMHz property value. The value for the minimum CPU speed which is required to install this app.
            ## @return a integer
            ## 
            def minimum_cpu_speed_in_m_hz
                return @minimum_cpu_speed_in_m_hz
            end
            ## 
            ## Sets the minimumCpuSpeedInMHz property value. The value for the minimum CPU speed which is required to install this app.
            ## @param value Value to set for the minimum_cpu_speed_in_m_hz property.
            ## @return a void
            ## 
            def minimum_cpu_speed_in_m_hz=(value)
                @minimum_cpu_speed_in_m_hz = value
            end
            ## 
            ## Gets the minimumFreeDiskSpaceInMB property value. The value for the minimum free disk space which is required to install this app.
            ## @return a integer
            ## 
            def minimum_free_disk_space_in_m_b
                return @minimum_free_disk_space_in_m_b
            end
            ## 
            ## Sets the minimumFreeDiskSpaceInMB property value. The value for the minimum free disk space which is required to install this app.
            ## @param value Value to set for the minimum_free_disk_space_in_m_b property.
            ## @return a void
            ## 
            def minimum_free_disk_space_in_m_b=(value)
                @minimum_free_disk_space_in_m_b = value
            end
            ## 
            ## Gets the minimumMemoryInMB property value. The value for the minimum physical memory which is required to install this app.
            ## @return a integer
            ## 
            def minimum_memory_in_m_b
                return @minimum_memory_in_m_b
            end
            ## 
            ## Sets the minimumMemoryInMB property value. The value for the minimum physical memory which is required to install this app.
            ## @param value Value to set for the minimum_memory_in_m_b property.
            ## @return a void
            ## 
            def minimum_memory_in_m_b=(value)
                @minimum_memory_in_m_b = value
            end
            ## 
            ## Gets the minimumNumberOfProcessors property value. The value for the minimum number of processors which is required to install this app.
            ## @return a integer
            ## 
            def minimum_number_of_processors
                return @minimum_number_of_processors
            end
            ## 
            ## Sets the minimumNumberOfProcessors property value. The value for the minimum number of processors which is required to install this app.
            ## @param value Value to set for the minimum_number_of_processors property.
            ## @return a void
            ## 
            def minimum_number_of_processors=(value)
                @minimum_number_of_processors = value
            end
            ## 
            ## Gets the minimumSupportedWindowsRelease property value. The value for the minimum supported windows release.
            ## @return a string
            ## 
            def minimum_supported_windows_release
                return @minimum_supported_windows_release
            end
            ## 
            ## Sets the minimumSupportedWindowsRelease property value. The value for the minimum supported windows release.
            ## @param value Value to set for the minimum_supported_windows_release property.
            ## @return a void
            ## 
            def minimum_supported_windows_release=(value)
                @minimum_supported_windows_release = value
            end
            ## 
            ## Gets the msiInformation property value. The MSI details if this Win32 app is an MSI app.
            ## @return a win32_lob_app_msi_information
            ## 
            def msi_information
                return @msi_information
            end
            ## 
            ## Sets the msiInformation property value. The MSI details if this Win32 app is an MSI app.
            ## @param value Value to set for the msi_information property.
            ## @return a void
            ## 
            def msi_information=(value)
                @msi_information = value
            end
            ## 
            ## Gets the returnCodes property value. The return codes for post installation behavior.
            ## @return a win32_lob_app_return_code
            ## 
            def return_codes
                return @return_codes
            end
            ## 
            ## Sets the returnCodes property value. The return codes for post installation behavior.
            ## @param value Value to set for the return_codes property.
            ## @return a void
            ## 
            def return_codes=(value)
                @return_codes = value
            end
            ## 
            ## Gets the rules property value. The detection and requirement rules for this app.
            ## @return a win32_lob_app_rule
            ## 
            def rules
                return @rules
            end
            ## 
            ## Sets the rules property value. The detection and requirement rules for this app.
            ## @param value Value to set for the rules property.
            ## @return a void
            ## 
            def rules=(value)
                @rules = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("applicableArchitectures", @applicable_architectures)
                writer.write_string_value("installCommandLine", @install_command_line)
                writer.write_object_value("installExperience", @install_experience)
                writer.write_number_value("minimumCpuSpeedInMHz", @minimum_cpu_speed_in_m_hz)
                writer.write_number_value("minimumFreeDiskSpaceInMB", @minimum_free_disk_space_in_m_b)
                writer.write_number_value("minimumMemoryInMB", @minimum_memory_in_m_b)
                writer.write_number_value("minimumNumberOfProcessors", @minimum_number_of_processors)
                writer.write_string_value("minimumSupportedWindowsRelease", @minimum_supported_windows_release)
                writer.write_object_value("msiInformation", @msi_information)
                writer.write_collection_of_object_values("returnCodes", @return_codes)
                writer.write_collection_of_object_values("rules", @rules)
                writer.write_string_value("setupFilePath", @setup_file_path)
                writer.write_string_value("uninstallCommandLine", @uninstall_command_line)
            end
            ## 
            ## Gets the setupFilePath property value. The relative path of the setup file in the encrypted Win32LobApp package.
            ## @return a string
            ## 
            def setup_file_path
                return @setup_file_path
            end
            ## 
            ## Sets the setupFilePath property value. The relative path of the setup file in the encrypted Win32LobApp package.
            ## @param value Value to set for the setup_file_path property.
            ## @return a void
            ## 
            def setup_file_path=(value)
                @setup_file_path = value
            end
            ## 
            ## Gets the uninstallCommandLine property value. The command line to uninstall this app
            ## @return a string
            ## 
            def uninstall_command_line
                return @uninstall_command_line
            end
            ## 
            ## Sets the uninstallCommandLine property value. The command line to uninstall this app
            ## @param value Value to set for the uninstall_command_line property.
            ## @return a void
            ## 
            def uninstall_command_line=(value)
                @uninstall_command_line = value
            end
        end
    end
end

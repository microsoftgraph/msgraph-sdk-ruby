require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # Windows Information Protection AppLearning Summary entity.
        class WindowsInformationProtectionAppLearningSummary < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Application Name
            @application_name
            ## 
            # Possible types of Application
            @application_type
            ## 
            # Device Count
            @device_count
            ## 
            ## Gets the applicationName property value. Application Name
            ## @return a string
            ## 
            def application_name
                return @application_name
            end
            ## 
            ## Sets the applicationName property value. Application Name
            ## @param value Value to set for the application_name property.
            ## @return a void
            ## 
            def application_name=(value)
                @application_name = value
            end
            ## 
            ## Gets the applicationType property value. Possible types of Application
            ## @return a application_type
            ## 
            def application_type
                return @application_type
            end
            ## 
            ## Sets the applicationType property value. Possible types of Application
            ## @param value Value to set for the application_type property.
            ## @return a void
            ## 
            def application_type=(value)
                @application_type = value
            end
            ## 
            ## Instantiates a new windowsInformationProtectionAppLearningSummary and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a windows_information_protection_app_learning_summary
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsInformationProtectionAppLearningSummary.new
            end
            ## 
            ## Gets the deviceCount property value. Device Count
            ## @return a integer
            ## 
            def device_count
                return @device_count
            end
            ## 
            ## Sets the deviceCount property value. Device Count
            ## @param value Value to set for the device_count property.
            ## @return a void
            ## 
            def device_count=(value)
                @device_count = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "applicationName" => lambda {|n| @application_name = n.get_string_value() },
                    "applicationType" => lambda {|n| @application_type = n.get_enum_value(MicrosoftGraph::Models::ApplicationType) },
                    "deviceCount" => lambda {|n| @device_count = n.get_number_value() },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("applicationName", @application_name)
                writer.write_enum_value("applicationType", @application_type)
                writer.write_number_value("deviceCount", @device_count)
            end
        end
    end
end

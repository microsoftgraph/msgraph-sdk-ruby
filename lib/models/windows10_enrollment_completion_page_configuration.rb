require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # Windows 10 Enrollment Status Page Configuration
        class Windows10EnrollmentCompletionPageConfiguration < MicrosoftGraph::Models::DeviceEnrollmentConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # When TRUE, ESP (Enrollment Status Page) installs all required apps targeted during technician phase and ignores any failures for non-blocking apps. When FALSE, ESP fails on any error during app install. The default is false.
            @allow_non_blocking_app_installation
            ## 
            ## Gets the allowNonBlockingAppInstallation property value. When TRUE, ESP (Enrollment Status Page) installs all required apps targeted during technician phase and ignores any failures for non-blocking apps. When FALSE, ESP fails on any error during app install. The default is false.
            ## @return a boolean
            ## 
            def allow_non_blocking_app_installation
                return @allow_non_blocking_app_installation
            end
            ## 
            ## Sets the allowNonBlockingAppInstallation property value. When TRUE, ESP (Enrollment Status Page) installs all required apps targeted during technician phase and ignores any failures for non-blocking apps. When FALSE, ESP fails on any error during app install. The default is false.
            ## @param value Value to set for the allowNonBlockingAppInstallation property.
            ## @return a void
            ## 
            def allow_non_blocking_app_installation=(value)
                @allow_non_blocking_app_installation = value
            end
            ## 
            ## Instantiates a new Windows10EnrollmentCompletionPageConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.windows10EnrollmentCompletionPageConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a windows10_enrollment_completion_page_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Windows10EnrollmentCompletionPageConfiguration.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "allowNonBlockingAppInstallation" => lambda {|n| @allow_non_blocking_app_installation = n.get_boolean_value() },
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
                writer.write_boolean_value("allowNonBlockingAppInstallation", @allow_non_blocking_app_installation)
            end
        end
    end
end

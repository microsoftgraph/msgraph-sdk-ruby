require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Windows10SecureAssessmentConfiguration < MicrosoftGraph::Models::DeviceConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Indicates whether or not to allow the app from printing during the test.
            @allow_printing
            ## 
            # Indicates whether or not to allow screen capture capability during a test.
            @allow_screen_capture
            ## 
            # Indicates whether or not to allow text suggestions during the test.
            @allow_text_suggestion
            ## 
            # The account used to configure the Windows device for taking the test. The user can be a domain account (domain/user), an AAD account (username@tenant.com) or a local account (username).
            @configuration_account
            ## 
            # Url link to an assessment that's automatically loaded when the secure assessment browser is launched. It has to be a valid Url (http[s]://msdn.microsoft.com/).
            @launch_uri
            ## 
            ## Gets the allowPrinting property value. Indicates whether or not to allow the app from printing during the test.
            ## @return a boolean
            ## 
            def allow_printing
                return @allow_printing
            end
            ## 
            ## Sets the allowPrinting property value. Indicates whether or not to allow the app from printing during the test.
            ## @param value Value to set for the allow_printing property.
            ## @return a void
            ## 
            def allow_printing=(value)
                @allow_printing = value
            end
            ## 
            ## Gets the allowScreenCapture property value. Indicates whether or not to allow screen capture capability during a test.
            ## @return a boolean
            ## 
            def allow_screen_capture
                return @allow_screen_capture
            end
            ## 
            ## Sets the allowScreenCapture property value. Indicates whether or not to allow screen capture capability during a test.
            ## @param value Value to set for the allow_screen_capture property.
            ## @return a void
            ## 
            def allow_screen_capture=(value)
                @allow_screen_capture = value
            end
            ## 
            ## Gets the allowTextSuggestion property value. Indicates whether or not to allow text suggestions during the test.
            ## @return a boolean
            ## 
            def allow_text_suggestion
                return @allow_text_suggestion
            end
            ## 
            ## Sets the allowTextSuggestion property value. Indicates whether or not to allow text suggestions during the test.
            ## @param value Value to set for the allow_text_suggestion property.
            ## @return a void
            ## 
            def allow_text_suggestion=(value)
                @allow_text_suggestion = value
            end
            ## 
            ## Gets the configurationAccount property value. The account used to configure the Windows device for taking the test. The user can be a domain account (domain/user), an AAD account (username@tenant.com) or a local account (username).
            ## @return a string
            ## 
            def configuration_account
                return @configuration_account
            end
            ## 
            ## Sets the configurationAccount property value. The account used to configure the Windows device for taking the test. The user can be a domain account (domain/user), an AAD account (username@tenant.com) or a local account (username).
            ## @param value Value to set for the configuration_account property.
            ## @return a void
            ## 
            def configuration_account=(value)
                @configuration_account = value
            end
            ## 
            ## Instantiates a new Windows10SecureAssessmentConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.windows10SecureAssessmentConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a windows10_secure_assessment_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Windows10SecureAssessmentConfiguration.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "allowPrinting" => lambda {|n| @allow_printing = n.get_boolean_value() },
                    "allowScreenCapture" => lambda {|n| @allow_screen_capture = n.get_boolean_value() },
                    "allowTextSuggestion" => lambda {|n| @allow_text_suggestion = n.get_boolean_value() },
                    "configurationAccount" => lambda {|n| @configuration_account = n.get_string_value() },
                    "launchUri" => lambda {|n| @launch_uri = n.get_string_value() },
                })
            end
            ## 
            ## Gets the launchUri property value. Url link to an assessment that's automatically loaded when the secure assessment browser is launched. It has to be a valid Url (http[s]://msdn.microsoft.com/).
            ## @return a string
            ## 
            def launch_uri
                return @launch_uri
            end
            ## 
            ## Sets the launchUri property value. Url link to an assessment that's automatically loaded when the secure assessment browser is launched. It has to be a valid Url (http[s]://msdn.microsoft.com/).
            ## @param value Value to set for the launch_uri property.
            ## @return a void
            ## 
            def launch_uri=(value)
                @launch_uri = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("allowPrinting", @allow_printing)
                writer.write_boolean_value("allowScreenCapture", @allow_screen_capture)
                writer.write_boolean_value("allowTextSuggestion", @allow_text_suggestion)
                writer.write_string_value("configurationAccount", @configuration_account)
                writer.write_string_value("launchUri", @launch_uri)
            end
        end
    end
end

require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class WindowsDeviceADAccount < MicrosoftGraph::Models::WindowsDeviceAccount
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Not yet documented
            @domain_name
            ## 
            # Not yet documented
            @user_name
            ## 
            ## Instantiates a new WindowsDeviceADAccount and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.windowsDeviceADAccount"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a windows_device_a_d_account
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsDeviceADAccount.new
            end
            ## 
            ## Gets the domainName property value. Not yet documented
            ## @return a string
            ## 
            def domain_name
                return @domain_name
            end
            ## 
            ## Sets the domainName property value. Not yet documented
            ## @param value Value to set for the domain_name property.
            ## @return a void
            ## 
            def domain_name=(value)
                @domain_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "domainName" => lambda {|n| @domain_name = n.get_string_value() },
                    "userName" => lambda {|n| @user_name = n.get_string_value() },
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
                writer.write_string_value("domainName", @domain_name)
                writer.write_string_value("userName", @user_name)
            end
            ## 
            ## Gets the userName property value. Not yet documented
            ## @return a string
            ## 
            def user_name
                return @user_name
            end
            ## 
            ## Sets the userName property value. Not yet documented
            ## @param value Value to set for the user_name property.
            ## @return a void
            ## 
            def user_name=(value)
                @user_name = value
            end
        end
    end
end

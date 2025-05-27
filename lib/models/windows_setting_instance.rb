require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class WindowsSettingInstance < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Set by the server. Represents the dateTime in UTC when the object was created on the server.
            @created_date_time
            ## 
            # Set by the server. The object expires at the specified dateTime in UTC, making it unavailable after that time.
            @expiration_date_time
            ## 
            # Set by the server if not provided in the request from the Windows client device. Refers to the user's Windows device that modified the object at the specified dateTime in UTC.
            @last_modified_date_time
            ## 
            # Base64-encoded JSON setting value.
            @payload
            ## 
            ## Instantiates a new WindowsSettingInstance and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. Set by the server. Represents the dateTime in UTC when the object was created on the server.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. Set by the server. Represents the dateTime in UTC when the object was created on the server.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a windows_setting_instance
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsSettingInstance.new
            end
            ## 
            ## Gets the expirationDateTime property value. Set by the server. The object expires at the specified dateTime in UTC, making it unavailable after that time.
            ## @return a date_time
            ## 
            def expiration_date_time
                return @expiration_date_time
            end
            ## 
            ## Sets the expirationDateTime property value. Set by the server. The object expires at the specified dateTime in UTC, making it unavailable after that time.
            ## @param value Value to set for the expirationDateTime property.
            ## @return a void
            ## 
            def expiration_date_time=(value)
                @expiration_date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "expirationDateTime" => lambda {|n| @expiration_date_time = n.get_date_time_value() },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "payload" => lambda {|n| @payload = n.get_string_value() },
                })
            end
            ## 
            ## Gets the lastModifiedDateTime property value. Set by the server if not provided in the request from the Windows client device. Refers to the user's Windows device that modified the object at the specified dateTime in UTC.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. Set by the server if not provided in the request from the Windows client device. Refers to the user's Windows device that modified the object at the specified dateTime in UTC.
            ## @param value Value to set for the lastModifiedDateTime property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the payload property value. Base64-encoded JSON setting value.
            ## @return a string
            ## 
            def payload
                return @payload
            end
            ## 
            ## Sets the payload property value. Base64-encoded JSON setting value.
            ## @param value Value to set for the payload property.
            ## @return a void
            ## 
            def payload=(value)
                @payload = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_date_time_value("expirationDateTime", @expiration_date_time)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_string_value("payload", @payload)
            end
        end
    end
end

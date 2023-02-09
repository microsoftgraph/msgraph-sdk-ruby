require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class LinkedResource < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Field indicating the app name of the source that is sending the linkedResource.
            @application_name
            ## 
            # Field indicating the title of the linkedResource.
            @display_name
            ## 
            # Id of the object that is associated with this task on the third-party/partner system.
            @external_id
            ## 
            # Deep link to the linkedResource.
            @web_url
            ## 
            ## Gets the applicationName property value. Field indicating the app name of the source that is sending the linkedResource.
            ## @return a string
            ## 
            def application_name
                return @application_name
            end
            ## 
            ## Sets the applicationName property value. Field indicating the app name of the source that is sending the linkedResource.
            ## @param value Value to set for the application_name property.
            ## @return a void
            ## 
            def application_name=(value)
                @application_name = value
            end
            ## 
            ## Instantiates a new linkedResource and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a linked_resource
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return LinkedResource.new
            end
            ## 
            ## Gets the displayName property value. Field indicating the title of the linkedResource.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Field indicating the title of the linkedResource.
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the externalId property value. Id of the object that is associated with this task on the third-party/partner system.
            ## @return a string
            ## 
            def external_id
                return @external_id
            end
            ## 
            ## Sets the externalId property value. Id of the object that is associated with this task on the third-party/partner system.
            ## @param value Value to set for the external_id property.
            ## @return a void
            ## 
            def external_id=(value)
                @external_id = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "applicationName" => lambda {|n| @application_name = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "externalId" => lambda {|n| @external_id = n.get_string_value() },
                    "webUrl" => lambda {|n| @web_url = n.get_string_value() },
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
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("externalId", @external_id)
                writer.write_string_value("webUrl", @web_url)
            end
            ## 
            ## Gets the webUrl property value. Deep link to the linkedResource.
            ## @return a string
            ## 
            def web_url
                return @web_url
            end
            ## 
            ## Sets the webUrl property value. Deep link to the linkedResource.
            ## @param value Value to set for the web_url property.
            ## @return a void
            ## 
            def web_url=(value)
                @web_url = value
            end
        end
    end
end

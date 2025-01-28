require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class LoginPage < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The HTML content of the login page.
            @content
            ## 
            # Identity of the user who created the login page.
            @created_by
            ## 
            # Date and time when the login page was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @created_date_time
            ## 
            # Description about the login page.
            @description
            ## 
            # Display name of the login page.
            @display_name
            ## 
            # The content language of the login page.
            @language
            ## 
            # Identity of the user who last modified the login page.
            @last_modified_by
            ## 
            # Date and time when the login page was last modified. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @last_modified_date_time
            ## 
            # The source of the content. Possible values are: unknown, global, tenant, unknownFutureValue.
            @source
            ## 
            # The login page status. Possible values are: unknown, draft, ready, archive, delete, unknownFutureValue.
            @status
            ## 
            ## Instantiates a new LoginPage and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the content property value. The HTML content of the login page.
            ## @return a string
            ## 
            def content
                return @content
            end
            ## 
            ## Sets the content property value. The HTML content of the login page.
            ## @param value Value to set for the content property.
            ## @return a void
            ## 
            def content=(value)
                @content = value
            end
            ## 
            ## Gets the createdBy property value. Identity of the user who created the login page.
            ## @return a email_identity
            ## 
            def created_by
                return @created_by
            end
            ## 
            ## Sets the createdBy property value. Identity of the user who created the login page.
            ## @param value Value to set for the createdBy property.
            ## @return a void
            ## 
            def created_by=(value)
                @created_by = value
            end
            ## 
            ## Gets the createdDateTime property value. Date and time when the login page was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. Date and time when the login page was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a login_page
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return LoginPage.new
            end
            ## 
            ## Gets the description property value. Description about the login page.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. Description about the login page.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. Display name of the login page.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Display name of the login page.
            ## @param value Value to set for the displayName property.
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
                    "content" => lambda {|n| @content = n.get_string_value() },
                    "createdBy" => lambda {|n| @created_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::EmailIdentity.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "language" => lambda {|n| @language = n.get_string_value() },
                    "lastModifiedBy" => lambda {|n| @last_modified_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::EmailIdentity.create_from_discriminator_value(pn) }) },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "source" => lambda {|n| @source = n.get_enum_value(MicrosoftGraph::Models::SimulationContentSource) },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraph::Models::SimulationContentStatus) },
                })
            end
            ## 
            ## Gets the language property value. The content language of the login page.
            ## @return a string
            ## 
            def language
                return @language
            end
            ## 
            ## Sets the language property value. The content language of the login page.
            ## @param value Value to set for the language property.
            ## @return a void
            ## 
            def language=(value)
                @language = value
            end
            ## 
            ## Gets the lastModifiedBy property value. Identity of the user who last modified the login page.
            ## @return a email_identity
            ## 
            def last_modified_by
                return @last_modified_by
            end
            ## 
            ## Sets the lastModifiedBy property value. Identity of the user who last modified the login page.
            ## @param value Value to set for the lastModifiedBy property.
            ## @return a void
            ## 
            def last_modified_by=(value)
                @last_modified_by = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. Date and time when the login page was last modified. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. Date and time when the login page was last modified. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the lastModifiedDateTime property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("content", @content)
                writer.write_object_value("createdBy", @created_by)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("language", @language)
                writer.write_object_value("lastModifiedBy", @last_modified_by)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_enum_value("source", @source)
                writer.write_enum_value("status", @status)
            end
            ## 
            ## Gets the source property value. The source of the content. Possible values are: unknown, global, tenant, unknownFutureValue.
            ## @return a simulation_content_source
            ## 
            def source
                return @source
            end
            ## 
            ## Sets the source property value. The source of the content. Possible values are: unknown, global, tenant, unknownFutureValue.
            ## @param value Value to set for the source property.
            ## @return a void
            ## 
            def source=(value)
                @source = value
            end
            ## 
            ## Gets the status property value. The login page status. Possible values are: unknown, draft, ready, archive, delete, unknownFutureValue.
            ## @return a simulation_content_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The login page status. Possible values are: unknown, draft, ready, archive, delete, unknownFutureValue.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
        end
    end
end

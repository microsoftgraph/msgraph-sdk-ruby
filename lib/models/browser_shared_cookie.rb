require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class BrowserSharedCookie < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The comment of the cookie
            @comment
            ## 
            # The datetime that the admin created the cookie
            @created_date_time
            ## 
            # The datetime that the admin deleted the cookie
            @deleted_date_time
            ## 
            # The name of the cookie
            @display_name
            ## 
            # The history of the cookie
            @history
            ## 
            # Boolean attribute that determines whether a cookie is  a host-only or domain cookie
            @host_only
            ## 
            # The URL of the cookie
            @host_or_domain
            ## 
            # The identity of the admin who last updated the cookie
            @last_modified_by
            ## 
            # The datetime that the admin last updated the cookie
            @last_modified_date_time
            ## 
            # The path of the cookie
            @path
            ## 
            # The sourceEnvironment property
            @source_environment
            ## 
            # The status property
            @status
            ## 
            ## Gets the comment property value. The comment of the cookie
            ## @return a string
            ## 
            def comment
                return @comment
            end
            ## 
            ## Sets the comment property value. The comment of the cookie
            ## @param value Value to set for the comment property.
            ## @return a void
            ## 
            def comment=(value)
                @comment = value
            end
            ## 
            ## Instantiates a new browserSharedCookie and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. The datetime that the admin created the cookie
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The datetime that the admin created the cookie
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a browser_shared_cookie
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return BrowserSharedCookie.new
            end
            ## 
            ## Gets the deletedDateTime property value. The datetime that the admin deleted the cookie
            ## @return a date_time
            ## 
            def deleted_date_time
                return @deleted_date_time
            end
            ## 
            ## Sets the deletedDateTime property value. The datetime that the admin deleted the cookie
            ## @param value Value to set for the deleted_date_time property.
            ## @return a void
            ## 
            def deleted_date_time=(value)
                @deleted_date_time = value
            end
            ## 
            ## Gets the displayName property value. The name of the cookie
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The name of the cookie
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
                    "comment" => lambda {|n| @comment = n.get_string_value() },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "deletedDateTime" => lambda {|n| @deleted_date_time = n.get_date_time_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "history" => lambda {|n| @history = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::BrowserSharedCookieHistory.create_from_discriminator_value(pn) }) },
                    "hostOnly" => lambda {|n| @host_only = n.get_boolean_value() },
                    "hostOrDomain" => lambda {|n| @host_or_domain = n.get_string_value() },
                    "lastModifiedBy" => lambda {|n| @last_modified_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "path" => lambda {|n| @path = n.get_string_value() },
                    "sourceEnvironment" => lambda {|n| @source_environment = n.get_enum_value(MicrosoftGraph::Models::BrowserSharedCookieSourceEnvironment) },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraph::Models::BrowserSharedCookieStatus) },
                })
            end
            ## 
            ## Gets the history property value. The history of the cookie
            ## @return a browser_shared_cookie_history
            ## 
            def history
                return @history
            end
            ## 
            ## Sets the history property value. The history of the cookie
            ## @param value Value to set for the history property.
            ## @return a void
            ## 
            def history=(value)
                @history = value
            end
            ## 
            ## Gets the hostOnly property value. Boolean attribute that determines whether a cookie is  a host-only or domain cookie
            ## @return a boolean
            ## 
            def host_only
                return @host_only
            end
            ## 
            ## Sets the hostOnly property value. Boolean attribute that determines whether a cookie is  a host-only or domain cookie
            ## @param value Value to set for the host_only property.
            ## @return a void
            ## 
            def host_only=(value)
                @host_only = value
            end
            ## 
            ## Gets the hostOrDomain property value. The URL of the cookie
            ## @return a string
            ## 
            def host_or_domain
                return @host_or_domain
            end
            ## 
            ## Sets the hostOrDomain property value. The URL of the cookie
            ## @param value Value to set for the host_or_domain property.
            ## @return a void
            ## 
            def host_or_domain=(value)
                @host_or_domain = value
            end
            ## 
            ## Gets the lastModifiedBy property value. The identity of the admin who last updated the cookie
            ## @return a identity_set
            ## 
            def last_modified_by
                return @last_modified_by
            end
            ## 
            ## Sets the lastModifiedBy property value. The identity of the admin who last updated the cookie
            ## @param value Value to set for the last_modified_by property.
            ## @return a void
            ## 
            def last_modified_by=(value)
                @last_modified_by = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. The datetime that the admin last updated the cookie
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. The datetime that the admin last updated the cookie
            ## @param value Value to set for the last_modified_date_time property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the path property value. The path of the cookie
            ## @return a string
            ## 
            def path
                return @path
            end
            ## 
            ## Sets the path property value. The path of the cookie
            ## @param value Value to set for the path property.
            ## @return a void
            ## 
            def path=(value)
                @path = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("comment", @comment)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_date_time_value("deletedDateTime", @deleted_date_time)
                writer.write_string_value("displayName", @display_name)
                writer.write_collection_of_object_values("history", @history)
                writer.write_boolean_value("hostOnly", @host_only)
                writer.write_string_value("hostOrDomain", @host_or_domain)
                writer.write_object_value("lastModifiedBy", @last_modified_by)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_string_value("path", @path)
                writer.write_enum_value("sourceEnvironment", @source_environment)
                writer.write_enum_value("status", @status)
            end
            ## 
            ## Gets the sourceEnvironment property value. The sourceEnvironment property
            ## @return a browser_shared_cookie_source_environment
            ## 
            def source_environment
                return @source_environment
            end
            ## 
            ## Sets the sourceEnvironment property value. The sourceEnvironment property
            ## @param value Value to set for the source_environment property.
            ## @return a void
            ## 
            def source_environment=(value)
                @source_environment = value
            end
            ## 
            ## Gets the status property value. The status property
            ## @return a browser_shared_cookie_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The status property
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
        end
    end
end

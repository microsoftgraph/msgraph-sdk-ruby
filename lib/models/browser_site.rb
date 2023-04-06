require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # Singleton entity which is used to specify IE mode site metadata
        class BrowserSite < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Boolean attribute that controls the behavior of redirected sites
            @allow_redirect
            ## 
            # The comment for the site
            @comment
            ## 
            # The compatibilityMode property
            @compatibility_mode
            ## 
            # The datetime that the site is created
            @created_date_time
            ## 
            # The datetime that the admin deleted the site
            @deleted_date_time
            ## 
            # The collection stores site revision metadata and audit logs.
            @history
            ## 
            # The admin who made the last update on the site.
            @last_modified_by
            ## 
            # The datetime that the admin updated the site.
            @last_modified_date_time
            ## 
            # The mergeType property
            @merge_type
            ## 
            # The status property
            @status
            ## 
            # The targetEnvironment property
            @target_environment
            ## 
            # The URL of the site
            @web_url
            ## 
            ## Gets the allowRedirect property value. Boolean attribute that controls the behavior of redirected sites
            ## @return a boolean
            ## 
            def allow_redirect
                return @allow_redirect
            end
            ## 
            ## Sets the allowRedirect property value. Boolean attribute that controls the behavior of redirected sites
            ## @param value Value to set for the allow_redirect property.
            ## @return a void
            ## 
            def allow_redirect=(value)
                @allow_redirect = value
            end
            ## 
            ## Gets the comment property value. The comment for the site
            ## @return a string
            ## 
            def comment
                return @comment
            end
            ## 
            ## Sets the comment property value. The comment for the site
            ## @param value Value to set for the comment property.
            ## @return a void
            ## 
            def comment=(value)
                @comment = value
            end
            ## 
            ## Gets the compatibilityMode property value. The compatibilityMode property
            ## @return a browser_site_compatibility_mode
            ## 
            def compatibility_mode
                return @compatibility_mode
            end
            ## 
            ## Sets the compatibilityMode property value. The compatibilityMode property
            ## @param value Value to set for the compatibility_mode property.
            ## @return a void
            ## 
            def compatibility_mode=(value)
                @compatibility_mode = value
            end
            ## 
            ## Instantiates a new browserSite and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. The datetime that the site is created
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The datetime that the site is created
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a browser_site
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return BrowserSite.new
            end
            ## 
            ## Gets the deletedDateTime property value. The datetime that the admin deleted the site
            ## @return a date_time
            ## 
            def deleted_date_time
                return @deleted_date_time
            end
            ## 
            ## Sets the deletedDateTime property value. The datetime that the admin deleted the site
            ## @param value Value to set for the deleted_date_time property.
            ## @return a void
            ## 
            def deleted_date_time=(value)
                @deleted_date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "allowRedirect" => lambda {|n| @allow_redirect = n.get_boolean_value() },
                    "comment" => lambda {|n| @comment = n.get_string_value() },
                    "compatibilityMode" => lambda {|n| @compatibility_mode = n.get_enum_value(MicrosoftGraph::Models::BrowserSiteCompatibilityMode) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "deletedDateTime" => lambda {|n| @deleted_date_time = n.get_date_time_value() },
                    "history" => lambda {|n| @history = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::BrowserSiteHistory.create_from_discriminator_value(pn) }) },
                    "lastModifiedBy" => lambda {|n| @last_modified_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "mergeType" => lambda {|n| @merge_type = n.get_enum_value(MicrosoftGraph::Models::BrowserSiteMergeType) },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraph::Models::BrowserSiteStatus) },
                    "targetEnvironment" => lambda {|n| @target_environment = n.get_enum_value(MicrosoftGraph::Models::BrowserSiteTargetEnvironment) },
                    "webUrl" => lambda {|n| @web_url = n.get_string_value() },
                })
            end
            ## 
            ## Gets the history property value. The collection stores site revision metadata and audit logs.
            ## @return a browser_site_history
            ## 
            def history
                return @history
            end
            ## 
            ## Sets the history property value. The collection stores site revision metadata and audit logs.
            ## @param value Value to set for the history property.
            ## @return a void
            ## 
            def history=(value)
                @history = value
            end
            ## 
            ## Gets the lastModifiedBy property value. The admin who made the last update on the site.
            ## @return a identity_set
            ## 
            def last_modified_by
                return @last_modified_by
            end
            ## 
            ## Sets the lastModifiedBy property value. The admin who made the last update on the site.
            ## @param value Value to set for the last_modified_by property.
            ## @return a void
            ## 
            def last_modified_by=(value)
                @last_modified_by = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. The datetime that the admin updated the site.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. The datetime that the admin updated the site.
            ## @param value Value to set for the last_modified_date_time property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the mergeType property value. The mergeType property
            ## @return a browser_site_merge_type
            ## 
            def merge_type
                return @merge_type
            end
            ## 
            ## Sets the mergeType property value. The mergeType property
            ## @param value Value to set for the merge_type property.
            ## @return a void
            ## 
            def merge_type=(value)
                @merge_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("allowRedirect", @allow_redirect)
                writer.write_string_value("comment", @comment)
                writer.write_enum_value("compatibilityMode", @compatibility_mode)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_date_time_value("deletedDateTime", @deleted_date_time)
                writer.write_collection_of_object_values("history", @history)
                writer.write_object_value("lastModifiedBy", @last_modified_by)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_enum_value("mergeType", @merge_type)
                writer.write_enum_value("status", @status)
                writer.write_enum_value("targetEnvironment", @target_environment)
                writer.write_string_value("webUrl", @web_url)
            end
            ## 
            ## Gets the status property value. The status property
            ## @return a browser_site_status
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
            ## 
            ## Gets the targetEnvironment property value. The targetEnvironment property
            ## @return a browser_site_target_environment
            ## 
            def target_environment
                return @target_environment
            end
            ## 
            ## Sets the targetEnvironment property value. The targetEnvironment property
            ## @param value Value to set for the target_environment property.
            ## @return a void
            ## 
            def target_environment=(value)
                @target_environment = value
            end
            ## 
            ## Gets the webUrl property value. The URL of the site
            ## @return a string
            ## 
            def web_url
                return @web_url
            end
            ## 
            ## Sets the webUrl property value. The URL of the site
            ## @param value Value to set for the web_url property.
            ## @return a void
            ## 
            def web_url=(value)
                @web_url = value
            end
        end
    end
end

require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class LandingPage < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Identity of the user who created the landing page.
            @created_by
            ## 
            # Date and time when the landing page was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @created_date_time
            ## 
            # Description of the landing page as defined by the user.
            @description
            ## 
            # The detail information for a landing page associated with a simulation during its creation.
            @details
            ## 
            # The display name of the landing page.
            @display_name
            ## 
            # Email identity of the user who last modified the landing page.
            @last_modified_by
            ## 
            # Date and time when the landing page was last modified. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @last_modified_date_time
            ## 
            # Content locale.
            @locale
            ## 
            # The source of the content. Possible values are: unknown, global, tenant, unknownFutureValue.
            @source
            ## 
            # The status of the simulation. Possible values are: unknown, draft, ready, archive, delete, unknownFutureValue.
            @status
            ## 
            # Supported locales.
            @supported_locales
            ## 
            ## Instantiates a new landingPage and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdBy property value. Identity of the user who created the landing page.
            ## @return a email_identity
            ## 
            def created_by
                return @created_by
            end
            ## 
            ## Sets the createdBy property value. Identity of the user who created the landing page.
            ## @param value Value to set for the createdBy property.
            ## @return a void
            ## 
            def created_by=(value)
                @created_by = value
            end
            ## 
            ## Gets the createdDateTime property value. Date and time when the landing page was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. Date and time when the landing page was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a landing_page
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return LandingPage.new
            end
            ## 
            ## Gets the description property value. Description of the landing page as defined by the user.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. Description of the landing page as defined by the user.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the details property value. The detail information for a landing page associated with a simulation during its creation.
            ## @return a landing_page_detail
            ## 
            def details
                return @details
            end
            ## 
            ## Sets the details property value. The detail information for a landing page associated with a simulation during its creation.
            ## @param value Value to set for the details property.
            ## @return a void
            ## 
            def details=(value)
                @details = value
            end
            ## 
            ## Gets the displayName property value. The display name of the landing page.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name of the landing page.
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
                    "createdBy" => lambda {|n| @created_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::EmailIdentity.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "details" => lambda {|n| @details = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::LandingPageDetail.create_from_discriminator_value(pn) }) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "lastModifiedBy" => lambda {|n| @last_modified_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::EmailIdentity.create_from_discriminator_value(pn) }) },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "locale" => lambda {|n| @locale = n.get_string_value() },
                    "source" => lambda {|n| @source = n.get_enum_value(MicrosoftGraph::Models::LandingPageSource) },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraph::Models::LandingPageStatus) },
                    "supportedLocales" => lambda {|n| @supported_locales = n.get_collection_of_primitive_values(String) },
                })
            end
            ## 
            ## Gets the lastModifiedBy property value. Email identity of the user who last modified the landing page.
            ## @return a email_identity
            ## 
            def last_modified_by
                return @last_modified_by
            end
            ## 
            ## Sets the lastModifiedBy property value. Email identity of the user who last modified the landing page.
            ## @param value Value to set for the lastModifiedBy property.
            ## @return a void
            ## 
            def last_modified_by=(value)
                @last_modified_by = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. Date and time when the landing page was last modified. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. Date and time when the landing page was last modified. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the lastModifiedDateTime property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the locale property value. Content locale.
            ## @return a string
            ## 
            def locale
                return @locale
            end
            ## 
            ## Sets the locale property value. Content locale.
            ## @param value Value to set for the locale property.
            ## @return a void
            ## 
            def locale=(value)
                @locale = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("createdBy", @created_by)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("description", @description)
                writer.write_collection_of_object_values("details", @details)
                writer.write_string_value("displayName", @display_name)
                writer.write_object_value("lastModifiedBy", @last_modified_by)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_string_value("locale", @locale)
                writer.write_enum_value("source", @source)
                writer.write_enum_value("status", @status)
                writer.write_collection_of_primitive_values("supportedLocales", @supported_locales)
            end
            ## 
            ## Gets the source property value. The source of the content. Possible values are: unknown, global, tenant, unknownFutureValue.
            ## @return a landing_page_source
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
            ## Gets the status property value. The status of the simulation. Possible values are: unknown, draft, ready, archive, delete, unknownFutureValue.
            ## @return a landing_page_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The status of the simulation. Possible values are: unknown, draft, ready, archive, delete, unknownFutureValue.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
            ## 
            ## Gets the supportedLocales property value. Supported locales.
            ## @return a string
            ## 
            def supported_locales
                return @supported_locales
            end
            ## 
            ## Sets the supportedLocales property value. Supported locales.
            ## @param value Value to set for the supportedLocales property.
            ## @return a void
            ## 
            def supported_locales=(value)
                @supported_locales = value
            end
        end
    end
end

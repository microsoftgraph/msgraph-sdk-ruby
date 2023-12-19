require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class TrainingLanguageDetail < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Language specific content for the training.
            @content
            ## 
            # Identity of the user who created the language details.
            @created_by
            ## 
            # Date and time when the language details were created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @created_date_time
            ## 
            # Description as defined by the user.
            @description
            ## 
            # Display name as defined by the user.
            @display_name
            ## 
            # Indicates whether the training has a default language.
            @is_default_langauge
            ## 
            # Identity of the user who last modified the details.
            @last_modified_by
            ## 
            # Date and time when the trainingLanguageDetail was last modified. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @last_modified_date_time
            ## 
            # Content locale for the training detail.
            @locale
            ## 
            ## Instantiates a new trainingLanguageDetail and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the content property value. Language specific content for the training.
            ## @return a string
            ## 
            def content
                return @content
            end
            ## 
            ## Sets the content property value. Language specific content for the training.
            ## @param value Value to set for the content property.
            ## @return a void
            ## 
            def content=(value)
                @content = value
            end
            ## 
            ## Gets the createdBy property value. Identity of the user who created the language details.
            ## @return a email_identity
            ## 
            def created_by
                return @created_by
            end
            ## 
            ## Sets the createdBy property value. Identity of the user who created the language details.
            ## @param value Value to set for the createdBy property.
            ## @return a void
            ## 
            def created_by=(value)
                @created_by = value
            end
            ## 
            ## Gets the createdDateTime property value. Date and time when the language details were created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. Date and time when the language details were created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a training_language_detail
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TrainingLanguageDetail.new
            end
            ## 
            ## Gets the description property value. Description as defined by the user.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. Description as defined by the user.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. Display name as defined by the user.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Display name as defined by the user.
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
                    "isDefaultLangauge" => lambda {|n| @is_default_langauge = n.get_boolean_value() },
                    "lastModifiedBy" => lambda {|n| @last_modified_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::EmailIdentity.create_from_discriminator_value(pn) }) },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "locale" => lambda {|n| @locale = n.get_string_value() },
                })
            end
            ## 
            ## Gets the isDefaultLangauge property value. Indicates whether the training has a default language.
            ## @return a boolean
            ## 
            def is_default_langauge
                return @is_default_langauge
            end
            ## 
            ## Sets the isDefaultLangauge property value. Indicates whether the training has a default language.
            ## @param value Value to set for the isDefaultLangauge property.
            ## @return a void
            ## 
            def is_default_langauge=(value)
                @is_default_langauge = value
            end
            ## 
            ## Gets the lastModifiedBy property value. Identity of the user who last modified the details.
            ## @return a email_identity
            ## 
            def last_modified_by
                return @last_modified_by
            end
            ## 
            ## Sets the lastModifiedBy property value. Identity of the user who last modified the details.
            ## @param value Value to set for the lastModifiedBy property.
            ## @return a void
            ## 
            def last_modified_by=(value)
                @last_modified_by = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. Date and time when the trainingLanguageDetail was last modified. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. Date and time when the trainingLanguageDetail was last modified. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the lastModifiedDateTime property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the locale property value. Content locale for the training detail.
            ## @return a string
            ## 
            def locale
                return @locale
            end
            ## 
            ## Sets the locale property value. Content locale for the training detail.
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
                writer.write_string_value("content", @content)
                writer.write_object_value("createdBy", @created_by)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_boolean_value("isDefaultLangauge", @is_default_langauge)
                writer.write_object_value("lastModifiedBy", @last_modified_by)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_string_value("locale", @locale)
            end
        end
    end
end

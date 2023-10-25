require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class EndUserNotificationDetail < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The emailContent property
            @email_content
            ## 
            # The isDefaultLangauge property
            @is_default_langauge
            ## 
            # The language property
            @language
            ## 
            # The locale property
            @locale
            ## 
            # The sentFrom property
            @sent_from
            ## 
            # The subject property
            @subject
            ## 
            ## Instantiates a new endUserNotificationDetail and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a end_user_notification_detail
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EndUserNotificationDetail.new
            end
            ## 
            ## Gets the emailContent property value. The emailContent property
            ## @return a string
            ## 
            def email_content
                return @email_content
            end
            ## 
            ## Sets the emailContent property value. The emailContent property
            ## @param value Value to set for the emailContent property.
            ## @return a void
            ## 
            def email_content=(value)
                @email_content = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "emailContent" => lambda {|n| @email_content = n.get_string_value() },
                    "isDefaultLangauge" => lambda {|n| @is_default_langauge = n.get_boolean_value() },
                    "language" => lambda {|n| @language = n.get_string_value() },
                    "locale" => lambda {|n| @locale = n.get_string_value() },
                    "sentFrom" => lambda {|n| @sent_from = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::EmailIdentity.create_from_discriminator_value(pn) }) },
                    "subject" => lambda {|n| @subject = n.get_string_value() },
                })
            end
            ## 
            ## Gets the isDefaultLangauge property value. The isDefaultLangauge property
            ## @return a boolean
            ## 
            def is_default_langauge
                return @is_default_langauge
            end
            ## 
            ## Sets the isDefaultLangauge property value. The isDefaultLangauge property
            ## @param value Value to set for the isDefaultLangauge property.
            ## @return a void
            ## 
            def is_default_langauge=(value)
                @is_default_langauge = value
            end
            ## 
            ## Gets the language property value. The language property
            ## @return a string
            ## 
            def language
                return @language
            end
            ## 
            ## Sets the language property value. The language property
            ## @param value Value to set for the language property.
            ## @return a void
            ## 
            def language=(value)
                @language = value
            end
            ## 
            ## Gets the locale property value. The locale property
            ## @return a string
            ## 
            def locale
                return @locale
            end
            ## 
            ## Sets the locale property value. The locale property
            ## @param value Value to set for the locale property.
            ## @return a void
            ## 
            def locale=(value)
                @locale = value
            end
            ## 
            ## Gets the sentFrom property value. The sentFrom property
            ## @return a email_identity
            ## 
            def sent_from
                return @sent_from
            end
            ## 
            ## Sets the sentFrom property value. The sentFrom property
            ## @param value Value to set for the sentFrom property.
            ## @return a void
            ## 
            def sent_from=(value)
                @sent_from = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("emailContent", @email_content)
                writer.write_boolean_value("isDefaultLangauge", @is_default_langauge)
                writer.write_string_value("language", @language)
                writer.write_string_value("locale", @locale)
                writer.write_object_value("sentFrom", @sent_from)
                writer.write_string_value("subject", @subject)
            end
            ## 
            ## Gets the subject property value. The subject property
            ## @return a string
            ## 
            def subject
                return @subject
            end
            ## 
            ## Sets the subject property value. The subject property
            ## @param value Value to set for the subject property.
            ## @return a void
            ## 
            def subject=(value)
                @subject = value
            end
        end
    end
end

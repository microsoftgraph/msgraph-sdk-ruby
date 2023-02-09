require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AgreementFileProperties < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The date time representing when the file was created.The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @created_date_time
            ## 
            # Localized display name of the policy file of an agreement. The localized display name is shown to end users who view the agreement.
            @display_name
            ## 
            # Data that represents the terms of use PDF document. Read-only.
            @file_data
            ## 
            # Name of the agreement file (for example, TOU.pdf). Read-only.
            @file_name
            ## 
            # If none of the languages matches the client preference, indicates whether this is the default agreement file . If none of the files are marked as default, the first one is treated as the default. Read-only.
            @is_default
            ## 
            # Indicates whether the agreement file is a major version update. Major version updates invalidate the agreement's acceptances on the corresponding language.
            @is_major_version
            ## 
            # The language of the agreement file in the format 'languagecode2-country/regioncode2'. 'languagecode2' is a lowercase two-letter code derived from ISO 639-1, while 'country/regioncode2' is derived from ISO 3166 and usually consists of two uppercase letters, or a BCP-47 language tag. For example, U.S. English is en-US. Read-only.
            @language
            ## 
            ## Instantiates a new agreementFileProperties and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. The date time representing when the file was created.The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The date time representing when the file was created.The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a agreement_file_properties
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.agreementFile"
                            return AgreementFile.new
                        when "#microsoft.graph.agreementFileLocalization"
                            return AgreementFileLocalization.new
                        when "#microsoft.graph.agreementFileVersion"
                            return AgreementFileVersion.new
                    end
                end
                return AgreementFileProperties.new
            end
            ## 
            ## Gets the displayName property value. Localized display name of the policy file of an agreement. The localized display name is shown to end users who view the agreement.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Localized display name of the policy file of an agreement. The localized display name is shown to end users who view the agreement.
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the fileData property value. Data that represents the terms of use PDF document. Read-only.
            ## @return a agreement_file_data
            ## 
            def file_data
                return @file_data
            end
            ## 
            ## Sets the fileData property value. Data that represents the terms of use PDF document. Read-only.
            ## @param value Value to set for the file_data property.
            ## @return a void
            ## 
            def file_data=(value)
                @file_data = value
            end
            ## 
            ## Gets the fileName property value. Name of the agreement file (for example, TOU.pdf). Read-only.
            ## @return a string
            ## 
            def file_name
                return @file_name
            end
            ## 
            ## Sets the fileName property value. Name of the agreement file (for example, TOU.pdf). Read-only.
            ## @param value Value to set for the file_name property.
            ## @return a void
            ## 
            def file_name=(value)
                @file_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "fileData" => lambda {|n| @file_data = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AgreementFileData.create_from_discriminator_value(pn) }) },
                    "fileName" => lambda {|n| @file_name = n.get_string_value() },
                    "isDefault" => lambda {|n| @is_default = n.get_boolean_value() },
                    "isMajorVersion" => lambda {|n| @is_major_version = n.get_boolean_value() },
                    "language" => lambda {|n| @language = n.get_string_value() },
                })
            end
            ## 
            ## Gets the isDefault property value. If none of the languages matches the client preference, indicates whether this is the default agreement file . If none of the files are marked as default, the first one is treated as the default. Read-only.
            ## @return a boolean
            ## 
            def is_default
                return @is_default
            end
            ## 
            ## Sets the isDefault property value. If none of the languages matches the client preference, indicates whether this is the default agreement file . If none of the files are marked as default, the first one is treated as the default. Read-only.
            ## @param value Value to set for the is_default property.
            ## @return a void
            ## 
            def is_default=(value)
                @is_default = value
            end
            ## 
            ## Gets the isMajorVersion property value. Indicates whether the agreement file is a major version update. Major version updates invalidate the agreement's acceptances on the corresponding language.
            ## @return a boolean
            ## 
            def is_major_version
                return @is_major_version
            end
            ## 
            ## Sets the isMajorVersion property value. Indicates whether the agreement file is a major version update. Major version updates invalidate the agreement's acceptances on the corresponding language.
            ## @param value Value to set for the is_major_version property.
            ## @return a void
            ## 
            def is_major_version=(value)
                @is_major_version = value
            end
            ## 
            ## Gets the language property value. The language of the agreement file in the format 'languagecode2-country/regioncode2'. 'languagecode2' is a lowercase two-letter code derived from ISO 639-1, while 'country/regioncode2' is derived from ISO 3166 and usually consists of two uppercase letters, or a BCP-47 language tag. For example, U.S. English is en-US. Read-only.
            ## @return a string
            ## 
            def language
                return @language
            end
            ## 
            ## Sets the language property value. The language of the agreement file in the format 'languagecode2-country/regioncode2'. 'languagecode2' is a lowercase two-letter code derived from ISO 639-1, while 'country/regioncode2' is derived from ISO 3166 and usually consists of two uppercase letters, or a BCP-47 language tag. For example, U.S. English is en-US. Read-only.
            ## @param value Value to set for the language property.
            ## @return a void
            ## 
            def language=(value)
                @language = value
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
                writer.write_string_value("displayName", @display_name)
                writer.write_object_value("fileData", @file_data)
                writer.write_string_value("fileName", @file_name)
                writer.write_boolean_value("isDefault", @is_default)
                writer.write_boolean_value("isMajorVersion", @is_major_version)
                writer.write_string_value("language", @language)
            end
        end
    end
end

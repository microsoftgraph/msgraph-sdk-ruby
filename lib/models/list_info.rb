require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ListInfo
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # If true, indicates that content types are enabled for this list.
            @content_types_enabled
            ## 
            # If true, indicates that the list is not normally visible in the SharePoint user experience.
            @hidden
            ## 
            # The OdataType property
            @odata_type
            ## 
            # An enumerated value that represents the base list template used in creating the list. Possible values include documentLibrary, genericList, task, survey, announcements, contacts, and more.
            @template
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new listInfo and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the contentTypesEnabled property value. If true, indicates that content types are enabled for this list.
            ## @return a boolean
            ## 
            def content_types_enabled
                return @content_types_enabled
            end
            ## 
            ## Sets the contentTypesEnabled property value. If true, indicates that content types are enabled for this list.
            ## @param value Value to set for the content_types_enabled property.
            ## @return a void
            ## 
            def content_types_enabled=(value)
                @content_types_enabled = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a list_info
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ListInfo.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "contentTypesEnabled" => lambda {|n| @content_types_enabled = n.get_boolean_value() },
                    "hidden" => lambda {|n| @hidden = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "template" => lambda {|n| @template = n.get_string_value() },
                }
            end
            ## 
            ## Gets the hidden property value. If true, indicates that the list is not normally visible in the SharePoint user experience.
            ## @return a boolean
            ## 
            def hidden
                return @hidden
            end
            ## 
            ## Sets the hidden property value. If true, indicates that the list is not normally visible in the SharePoint user experience.
            ## @param value Value to set for the hidden property.
            ## @return a void
            ## 
            def hidden=(value)
                @hidden = value
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_boolean_value("contentTypesEnabled", @content_types_enabled)
                writer.write_boolean_value("hidden", @hidden)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("template", @template)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the template property value. An enumerated value that represents the base list template used in creating the list. Possible values include documentLibrary, genericList, task, survey, announcements, contacts, and more.
            ## @return a string
            ## 
            def template
                return @template
            end
            ## 
            ## Sets the template property value. An enumerated value that represents the base list template used in creating the list. Possible values include documentLibrary, genericList, task, survey, announcements, contacts, and more.
            ## @param value Value to set for the template property.
            ## @return a void
            ## 
            def template=(value)
                @template = value
            end
        end
    end
end

require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class DocumentSet
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Content types allowed in document set.
            @allowed_content_types
            ## 
            # Default contents of document set.
            @default_contents
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Specifies whether to push welcome page changes to inherited content types.
            @propagate_welcome_page_changes
            ## 
            # The sharedColumns property
            @shared_columns
            ## 
            # Indicates whether to add the name of the document set to each file name.
            @should_prefix_name_to_file
            ## 
            # The welcomePageColumns property
            @welcome_page_columns
            ## 
            # Welcome page absolute URL.
            @welcome_page_url
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
            ## Gets the allowedContentTypes property value. Content types allowed in document set.
            ## @return a content_type_info
            ## 
            def allowed_content_types
                return @allowed_content_types
            end
            ## 
            ## Sets the allowedContentTypes property value. Content types allowed in document set.
            ## @param value Value to set for the allowed_content_types property.
            ## @return a void
            ## 
            def allowed_content_types=(value)
                @allowed_content_types = value
            end
            ## 
            ## Instantiates a new documentSet and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a document_set
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DocumentSet.new
            end
            ## 
            ## Gets the defaultContents property value. Default contents of document set.
            ## @return a document_set_content
            ## 
            def default_contents
                return @default_contents
            end
            ## 
            ## Sets the defaultContents property value. Default contents of document set.
            ## @param value Value to set for the default_contents property.
            ## @return a void
            ## 
            def default_contents=(value)
                @default_contents = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "allowedContentTypes" => lambda {|n| @allowed_content_types = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ContentTypeInfo.create_from_discriminator_value(pn) }) },
                    "defaultContents" => lambda {|n| @default_contents = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DocumentSetContent.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "propagateWelcomePageChanges" => lambda {|n| @propagate_welcome_page_changes = n.get_boolean_value() },
                    "sharedColumns" => lambda {|n| @shared_columns = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ColumnDefinition.create_from_discriminator_value(pn) }) },
                    "shouldPrefixNameToFile" => lambda {|n| @should_prefix_name_to_file = n.get_boolean_value() },
                    "welcomePageColumns" => lambda {|n| @welcome_page_columns = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ColumnDefinition.create_from_discriminator_value(pn) }) },
                    "welcomePageUrl" => lambda {|n| @welcome_page_url = n.get_string_value() },
                }
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
            ## Gets the propagateWelcomePageChanges property value. Specifies whether to push welcome page changes to inherited content types.
            ## @return a boolean
            ## 
            def propagate_welcome_page_changes
                return @propagate_welcome_page_changes
            end
            ## 
            ## Sets the propagateWelcomePageChanges property value. Specifies whether to push welcome page changes to inherited content types.
            ## @param value Value to set for the propagate_welcome_page_changes property.
            ## @return a void
            ## 
            def propagate_welcome_page_changes=(value)
                @propagate_welcome_page_changes = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_collection_of_object_values("allowedContentTypes", @allowed_content_types)
                writer.write_collection_of_object_values("defaultContents", @default_contents)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_boolean_value("propagateWelcomePageChanges", @propagate_welcome_page_changes)
                writer.write_collection_of_object_values("sharedColumns", @shared_columns)
                writer.write_boolean_value("shouldPrefixNameToFile", @should_prefix_name_to_file)
                writer.write_collection_of_object_values("welcomePageColumns", @welcome_page_columns)
                writer.write_string_value("welcomePageUrl", @welcome_page_url)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the sharedColumns property value. The sharedColumns property
            ## @return a column_definition
            ## 
            def shared_columns
                return @shared_columns
            end
            ## 
            ## Sets the sharedColumns property value. The sharedColumns property
            ## @param value Value to set for the shared_columns property.
            ## @return a void
            ## 
            def shared_columns=(value)
                @shared_columns = value
            end
            ## 
            ## Gets the shouldPrefixNameToFile property value. Indicates whether to add the name of the document set to each file name.
            ## @return a boolean
            ## 
            def should_prefix_name_to_file
                return @should_prefix_name_to_file
            end
            ## 
            ## Sets the shouldPrefixNameToFile property value. Indicates whether to add the name of the document set to each file name.
            ## @param value Value to set for the should_prefix_name_to_file property.
            ## @return a void
            ## 
            def should_prefix_name_to_file=(value)
                @should_prefix_name_to_file = value
            end
            ## 
            ## Gets the welcomePageColumns property value. The welcomePageColumns property
            ## @return a column_definition
            ## 
            def welcome_page_columns
                return @welcome_page_columns
            end
            ## 
            ## Sets the welcomePageColumns property value. The welcomePageColumns property
            ## @param value Value to set for the welcome_page_columns property.
            ## @return a void
            ## 
            def welcome_page_columns=(value)
                @welcome_page_columns = value
            end
            ## 
            ## Gets the welcomePageUrl property value. Welcome page absolute URL.
            ## @return a string
            ## 
            def welcome_page_url
                return @welcome_page_url
            end
            ## 
            ## Sets the welcomePageUrl property value. Welcome page absolute URL.
            ## @param value Value to set for the welcome_page_url property.
            ## @return a void
            ## 
            def welcome_page_url=(value)
                @welcome_page_url = value
            end
        end
    end
end

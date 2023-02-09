require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './external_connectors'

module MicrosoftGraph
    module Models
        module ExternalConnectors
            class Property
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # A set of aliases or a friendly names for the property. Maximum 32 characters. Only alphanumeric characters allowed. For example, each string may not contain control characters, whitespace, or any of the following: :, ;, ,, (, ), [, ], {, }, %, $, +, !, *, =, &, ?, @, #, /, ~, ', ', <, >, `, ^. Optional.
                @aliases
                ## 
                # Specifies if the property is queryable. Queryable properties can be used in Keyword Query Language (KQL) queries. Optional.
                @is_queryable
                ## 
                # Specifies if the property is refinable.  Refinable properties can be used to filter search results in the Search API and add a refiner control in the Microsoft Search user experience. Optional.
                @is_refinable
                ## 
                # Specifies if the property is retrievable. Retrievable properties are returned in the result set when items are returned by the search API. Retrievable properties are also available to add to the display template used to render search results. Optional.
                @is_retrievable
                ## 
                # Specifies if the property is searchable. Only properties of type String or StringCollection can be searchable. Non-searchable properties are not added to the search index. Optional.
                @is_searchable
                ## 
                # Specifies one or more well-known tags added against a property. Labels help Microsoft Search understand the semantics of the data in the connection. Adding appropriate labels would result in an enhanced search experience (e.g. better relevance). The possible values are: title, url, createdBy, lastModifiedBy, authors, createdDateTime, lastModifiedDateTime, fileName, fileExtension, unknownFutureValue. Optional.
                @labels
                ## 
                # The name of the property. Maximum 32 characters. Only alphanumeric characters allowed. For example, each string may not contain control characters, whitespace, or any of the following: :, ;, ,, (, ), [, ], {, }, %, $, +, !, *, =, &, ?, @, #, /, ~, ', ', <, >, `, ^.  Required.
                @name
                ## 
                # The OdataType property
                @odata_type
                ## 
                # The type property
                @type
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
                ## Gets the aliases property value. A set of aliases or a friendly names for the property. Maximum 32 characters. Only alphanumeric characters allowed. For example, each string may not contain control characters, whitespace, or any of the following: :, ;, ,, (, ), [, ], {, }, %, $, +, !, *, =, &, ?, @, #, /, ~, ', ', <, >, `, ^. Optional.
                ## @return a string
                ## 
                def aliases
                    return @aliases
                end
                ## 
                ## Sets the aliases property value. A set of aliases or a friendly names for the property. Maximum 32 characters. Only alphanumeric characters allowed. For example, each string may not contain control characters, whitespace, or any of the following: :, ;, ,, (, ), [, ], {, }, %, $, +, !, *, =, &, ?, @, #, /, ~, ', ', <, >, `, ^. Optional.
                ## @param value Value to set for the aliases property.
                ## @return a void
                ## 
                def aliases=(value)
                    @aliases = value
                end
                ## 
                ## Instantiates a new property and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a property
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return Property.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "aliases" => lambda {|n| @aliases = n.get_collection_of_primitive_values(String) },
                        "isQueryable" => lambda {|n| @is_queryable = n.get_boolean_value() },
                        "isRefinable" => lambda {|n| @is_refinable = n.get_boolean_value() },
                        "isRetrievable" => lambda {|n| @is_retrievable = n.get_boolean_value() },
                        "isSearchable" => lambda {|n| @is_searchable = n.get_boolean_value() },
                        "labels" => lambda {|n| @labels = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ExternalConnectors::Label.create_from_discriminator_value(pn) }) },
                        "name" => lambda {|n| @name = n.get_string_value() },
                        "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                        "type" => lambda {|n| @type = n.get_enum_value(MicrosoftGraph::Models::ExternalConnectors::PropertyType) },
                    }
                end
                ## 
                ## Gets the isQueryable property value. Specifies if the property is queryable. Queryable properties can be used in Keyword Query Language (KQL) queries. Optional.
                ## @return a boolean
                ## 
                def is_queryable
                    return @is_queryable
                end
                ## 
                ## Sets the isQueryable property value. Specifies if the property is queryable. Queryable properties can be used in Keyword Query Language (KQL) queries. Optional.
                ## @param value Value to set for the is_queryable property.
                ## @return a void
                ## 
                def is_queryable=(value)
                    @is_queryable = value
                end
                ## 
                ## Gets the isRefinable property value. Specifies if the property is refinable.  Refinable properties can be used to filter search results in the Search API and add a refiner control in the Microsoft Search user experience. Optional.
                ## @return a boolean
                ## 
                def is_refinable
                    return @is_refinable
                end
                ## 
                ## Sets the isRefinable property value. Specifies if the property is refinable.  Refinable properties can be used to filter search results in the Search API and add a refiner control in the Microsoft Search user experience. Optional.
                ## @param value Value to set for the is_refinable property.
                ## @return a void
                ## 
                def is_refinable=(value)
                    @is_refinable = value
                end
                ## 
                ## Gets the isRetrievable property value. Specifies if the property is retrievable. Retrievable properties are returned in the result set when items are returned by the search API. Retrievable properties are also available to add to the display template used to render search results. Optional.
                ## @return a boolean
                ## 
                def is_retrievable
                    return @is_retrievable
                end
                ## 
                ## Sets the isRetrievable property value. Specifies if the property is retrievable. Retrievable properties are returned in the result set when items are returned by the search API. Retrievable properties are also available to add to the display template used to render search results. Optional.
                ## @param value Value to set for the is_retrievable property.
                ## @return a void
                ## 
                def is_retrievable=(value)
                    @is_retrievable = value
                end
                ## 
                ## Gets the isSearchable property value. Specifies if the property is searchable. Only properties of type String or StringCollection can be searchable. Non-searchable properties are not added to the search index. Optional.
                ## @return a boolean
                ## 
                def is_searchable
                    return @is_searchable
                end
                ## 
                ## Sets the isSearchable property value. Specifies if the property is searchable. Only properties of type String or StringCollection can be searchable. Non-searchable properties are not added to the search index. Optional.
                ## @param value Value to set for the is_searchable property.
                ## @return a void
                ## 
                def is_searchable=(value)
                    @is_searchable = value
                end
                ## 
                ## Gets the labels property value. Specifies one or more well-known tags added against a property. Labels help Microsoft Search understand the semantics of the data in the connection. Adding appropriate labels would result in an enhanced search experience (e.g. better relevance). The possible values are: title, url, createdBy, lastModifiedBy, authors, createdDateTime, lastModifiedDateTime, fileName, fileExtension, unknownFutureValue. Optional.
                ## @return a label
                ## 
                def labels
                    return @labels
                end
                ## 
                ## Sets the labels property value. Specifies one or more well-known tags added against a property. Labels help Microsoft Search understand the semantics of the data in the connection. Adding appropriate labels would result in an enhanced search experience (e.g. better relevance). The possible values are: title, url, createdBy, lastModifiedBy, authors, createdDateTime, lastModifiedDateTime, fileName, fileExtension, unknownFutureValue. Optional.
                ## @param value Value to set for the labels property.
                ## @return a void
                ## 
                def labels=(value)
                    @labels = value
                end
                ## 
                ## Gets the name property value. The name of the property. Maximum 32 characters. Only alphanumeric characters allowed. For example, each string may not contain control characters, whitespace, or any of the following: :, ;, ,, (, ), [, ], {, }, %, $, +, !, *, =, &, ?, @, #, /, ~, ', ', <, >, `, ^.  Required.
                ## @return a string
                ## 
                def name
                    return @name
                end
                ## 
                ## Sets the name property value. The name of the property. Maximum 32 characters. Only alphanumeric characters allowed. For example, each string may not contain control characters, whitespace, or any of the following: :, ;, ,, (, ), [, ], {, }, %, $, +, !, *, =, &, ?, @, #, /, ~, ', ', <, >, `, ^.  Required.
                ## @param value Value to set for the name property.
                ## @return a void
                ## 
                def name=(value)
                    @name = value
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
                    writer.write_collection_of_primitive_values("aliases", @aliases)
                    writer.write_boolean_value("isQueryable", @is_queryable)
                    writer.write_boolean_value("isRefinable", @is_refinable)
                    writer.write_boolean_value("isRetrievable", @is_retrievable)
                    writer.write_boolean_value("isSearchable", @is_searchable)
                    writer.write_collection_of_object_values("labels", @labels)
                    writer.write_string_value("name", @name)
                    writer.write_string_value("@odata.type", @odata_type)
                    writer.write_enum_value("type", @type)
                    writer.write_additional_data(@additional_data)
                end
                ## 
                ## Gets the type property value. The type property
                ## @return a property_type
                ## 
                def type
                    return @type
                end
                ## 
                ## Sets the type property value. The type property
                ## @param value Value to set for the type property.
                ## @return a void
                ## 
                def type=(value)
                    @type = value
                end
            end
        end
    end
end

require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SearchHit
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The name of the content source that the externalItem is part of.
            @content_source
            ## 
            # The internal identifier for the item. The format of the identifier varies based on the entity type. For details, see hitId format.
            @hit_id
            ## 
            # Indicates whether the current result is collapsed when the collapseProperties property in the searchRequest is used.
            @is_collapsed
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The rank or the order of the result.
            @rank
            ## 
            # The resource property
            @resource
            ## 
            # ID of the result template used to render the search result. This ID must map to a display layout in the resultTemplates dictionary that is also included in the searchResponse.
            @result_template_id
            ## 
            # A summary of the result, if a summary is available.
            @summary
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new SearchHit and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the contentSource property value. The name of the content source that the externalItem is part of.
            ## @return a string
            ## 
            def content_source
                return @content_source
            end
            ## 
            ## Sets the contentSource property value. The name of the content source that the externalItem is part of.
            ## @param value Value to set for the contentSource property.
            ## @return a void
            ## 
            def content_source=(value)
                @content_source = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a search_hit
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SearchHit.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "contentSource" => lambda {|n| @content_source = n.get_string_value() },
                    "hitId" => lambda {|n| @hit_id = n.get_string_value() },
                    "isCollapsed" => lambda {|n| @is_collapsed = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "rank" => lambda {|n| @rank = n.get_number_value() },
                    "resource" => lambda {|n| @resource = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Entity.create_from_discriminator_value(pn) }) },
                    "resultTemplateId" => lambda {|n| @result_template_id = n.get_string_value() },
                    "summary" => lambda {|n| @summary = n.get_string_value() },
                }
            end
            ## 
            ## Gets the hitId property value. The internal identifier for the item. The format of the identifier varies based on the entity type. For details, see hitId format.
            ## @return a string
            ## 
            def hit_id
                return @hit_id
            end
            ## 
            ## Sets the hitId property value. The internal identifier for the item. The format of the identifier varies based on the entity type. For details, see hitId format.
            ## @param value Value to set for the hitId property.
            ## @return a void
            ## 
            def hit_id=(value)
                @hit_id = value
            end
            ## 
            ## Gets the isCollapsed property value. Indicates whether the current result is collapsed when the collapseProperties property in the searchRequest is used.
            ## @return a boolean
            ## 
            def is_collapsed
                return @is_collapsed
            end
            ## 
            ## Sets the isCollapsed property value. Indicates whether the current result is collapsed when the collapseProperties property in the searchRequest is used.
            ## @param value Value to set for the isCollapsed property.
            ## @return a void
            ## 
            def is_collapsed=(value)
                @is_collapsed = value
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
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the rank property value. The rank or the order of the result.
            ## @return a integer
            ## 
            def rank
                return @rank
            end
            ## 
            ## Sets the rank property value. The rank or the order of the result.
            ## @param value Value to set for the rank property.
            ## @return a void
            ## 
            def rank=(value)
                @rank = value
            end
            ## 
            ## Gets the resource property value. The resource property
            ## @return a entity
            ## 
            def resource
                return @resource
            end
            ## 
            ## Sets the resource property value. The resource property
            ## @param value Value to set for the resource property.
            ## @return a void
            ## 
            def resource=(value)
                @resource = value
            end
            ## 
            ## Gets the resultTemplateId property value. ID of the result template used to render the search result. This ID must map to a display layout in the resultTemplates dictionary that is also included in the searchResponse.
            ## @return a string
            ## 
            def result_template_id
                return @result_template_id
            end
            ## 
            ## Sets the resultTemplateId property value. ID of the result template used to render the search result. This ID must map to a display layout in the resultTemplates dictionary that is also included in the searchResponse.
            ## @param value Value to set for the resultTemplateId property.
            ## @return a void
            ## 
            def result_template_id=(value)
                @result_template_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("contentSource", @content_source)
                writer.write_string_value("hitId", @hit_id)
                writer.write_boolean_value("isCollapsed", @is_collapsed)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_number_value("rank", @rank)
                writer.write_object_value("resource", @resource)
                writer.write_string_value("resultTemplateId", @result_template_id)
                writer.write_string_value("summary", @summary)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the summary property value. A summary of the result, if a summary is available.
            ## @return a string
            ## 
            def summary
                return @summary
            end
            ## 
            ## Sets the summary property value. A summary of the result, if a summary is available.
            ## @param value Value to set for the summary property.
            ## @return a void
            ## 
            def summary=(value)
                @summary = value
            end
        end
    end
end

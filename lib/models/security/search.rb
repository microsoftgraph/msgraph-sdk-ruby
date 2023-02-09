require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './security'

module MicrosoftGraph
    module Models
        module Security
            class Search < MicrosoftGraph::Models::Entity
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The contentQuery property
                @content_query
                ## 
                # The createdBy property
                @created_by
                ## 
                # The createdDateTime property
                @created_date_time
                ## 
                # The description property
                @description
                ## 
                # The displayName property
                @display_name
                ## 
                # The lastModifiedBy property
                @last_modified_by
                ## 
                # The lastModifiedDateTime property
                @last_modified_date_time
                ## 
                ## Instantiates a new search and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Gets the contentQuery property value. The contentQuery property
                ## @return a string
                ## 
                def content_query
                    return @content_query
                end
                ## 
                ## Sets the contentQuery property value. The contentQuery property
                ## @param value Value to set for the content_query property.
                ## @return a void
                ## 
                def content_query=(value)
                    @content_query = value
                end
                ## 
                ## Gets the createdBy property value. The createdBy property
                ## @return a identity_set
                ## 
                def created_by
                    return @created_by
                end
                ## 
                ## Sets the createdBy property value. The createdBy property
                ## @param value Value to set for the created_by property.
                ## @return a void
                ## 
                def created_by=(value)
                    @created_by = value
                end
                ## 
                ## Gets the createdDateTime property value. The createdDateTime property
                ## @return a date_time
                ## 
                def created_date_time
                    return @created_date_time
                end
                ## 
                ## Sets the createdDateTime property value. The createdDateTime property
                ## @param value Value to set for the created_date_time property.
                ## @return a void
                ## 
                def created_date_time=(value)
                    @created_date_time = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a search
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    mapping_value_node = parse_node.get_child_node("@odata.type")
                    unless mapping_value_node.nil? then
                        mapping_value = mapping_value_node.get_string_value
                        case mapping_value
                            when "#microsoft.graph.security.ediscoveryReviewSetQuery"
                                return EdiscoveryReviewSetQuery.new
                            when "#microsoft.graph.security.ediscoverySearch"
                                return EdiscoverySearch.new
                        end
                    end
                    return Search.new
                end
                ## 
                ## Gets the description property value. The description property
                ## @return a string
                ## 
                def description
                    return @description
                end
                ## 
                ## Sets the description property value. The description property
                ## @param value Value to set for the description property.
                ## @return a void
                ## 
                def description=(value)
                    @description = value
                end
                ## 
                ## Gets the displayName property value. The displayName property
                ## @return a string
                ## 
                def display_name
                    return @display_name
                end
                ## 
                ## Sets the displayName property value. The displayName property
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
                        "contentQuery" => lambda {|n| @content_query = n.get_string_value() },
                        "createdBy" => lambda {|n| @created_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                        "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                        "description" => lambda {|n| @description = n.get_string_value() },
                        "displayName" => lambda {|n| @display_name = n.get_string_value() },
                        "lastModifiedBy" => lambda {|n| @last_modified_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                        "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    })
                end
                ## 
                ## Gets the lastModifiedBy property value. The lastModifiedBy property
                ## @return a identity_set
                ## 
                def last_modified_by
                    return @last_modified_by
                end
                ## 
                ## Sets the lastModifiedBy property value. The lastModifiedBy property
                ## @param value Value to set for the last_modified_by property.
                ## @return a void
                ## 
                def last_modified_by=(value)
                    @last_modified_by = value
                end
                ## 
                ## Gets the lastModifiedDateTime property value. The lastModifiedDateTime property
                ## @return a date_time
                ## 
                def last_modified_date_time
                    return @last_modified_date_time
                end
                ## 
                ## Sets the lastModifiedDateTime property value. The lastModifiedDateTime property
                ## @param value Value to set for the last_modified_date_time property.
                ## @return a void
                ## 
                def last_modified_date_time=(value)
                    @last_modified_date_time = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_string_value("contentQuery", @content_query)
                    writer.write_object_value("createdBy", @created_by)
                    writer.write_date_time_value("createdDateTime", @created_date_time)
                    writer.write_string_value("description", @description)
                    writer.write_string_value("displayName", @display_name)
                    writer.write_object_value("lastModifiedBy", @last_modified_by)
                    writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                end
            end
        end
    end
end

require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './security'

module MicrosoftGraph
    module Models
        module Security
            class EdiscoveryReviewTag < MicrosoftGraph::Models::Security::Tag
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Indicates whether a single or multiple child tags can be associated with a document. Possible values are: One, Many.  This value controls whether the UX presents the tags as checkboxes or a radio button group.
                @child_selectability
                ## 
                # Returns the tags that are a child of a tag.
                @child_tags
                ## 
                # Returns the parent tag of the specified tag.
                @parent
                ## 
                ## Gets the childSelectability property value. Indicates whether a single or multiple child tags can be associated with a document. Possible values are: One, Many.  This value controls whether the UX presents the tags as checkboxes or a radio button group.
                ## @return a child_selectability
                ## 
                def child_selectability
                    return @child_selectability
                end
                ## 
                ## Sets the childSelectability property value. Indicates whether a single or multiple child tags can be associated with a document. Possible values are: One, Many.  This value controls whether the UX presents the tags as checkboxes or a radio button group.
                ## @param value Value to set for the child_selectability property.
                ## @return a void
                ## 
                def child_selectability=(value)
                    @child_selectability = value
                end
                ## 
                ## Gets the childTags property value. Returns the tags that are a child of a tag.
                ## @return a ediscovery_review_tag
                ## 
                def child_tags
                    return @child_tags
                end
                ## 
                ## Sets the childTags property value. Returns the tags that are a child of a tag.
                ## @param value Value to set for the child_tags property.
                ## @return a void
                ## 
                def child_tags=(value)
                    @child_tags = value
                end
                ## 
                ## Instantiates a new ediscoveryReviewTag and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                    @odata_type = "#microsoft.graph.security.ediscoveryReviewTag"
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a ediscovery_review_tag
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return EdiscoveryReviewTag.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "childSelectability" => lambda {|n| @child_selectability = n.get_enum_value(MicrosoftGraph::Models::Security::ChildSelectability) },
                        "childTags" => lambda {|n| @child_tags = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Security::EdiscoveryReviewTag.create_from_discriminator_value(pn) }) },
                        "parent" => lambda {|n| @parent = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Security::EdiscoveryReviewTag.create_from_discriminator_value(pn) }) },
                    })
                end
                ## 
                ## Gets the parent property value. Returns the parent tag of the specified tag.
                ## @return a ediscovery_review_tag
                ## 
                def parent
                    return @parent
                end
                ## 
                ## Sets the parent property value. Returns the parent tag of the specified tag.
                ## @param value Value to set for the parent property.
                ## @return a void
                ## 
                def parent=(value)
                    @parent = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_enum_value("childSelectability", @child_selectability)
                    writer.write_collection_of_object_values("childTags", @child_tags)
                    writer.write_object_value("parent", @parent)
                end
            end
        end
    end
end

require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph'
require_relative '../../../../../models/item_reference'
require_relative '../../../../drives'
require_relative '../../../item'
require_relative '../../items'
require_relative '../item'
require_relative './copy'

module MicrosoftGraph
    module Drives
        module Item
            module Items
                module Item
                    module Copy
                        class CopyPostRequestBody
                            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                            ## 
                            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                            @additional_data
                            ## 
                            # The childrenOnly property
                            @children_only
                            ## 
                            # The includeAllVersionHistory property
                            @include_all_version_history
                            ## 
                            # The name property
                            @name
                            ## 
                            # The parentReference property
                            @parent_reference
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
                            ## Gets the childrenOnly property value. The childrenOnly property
                            ## @return a boolean
                            ## 
                            def children_only
                                return @children_only
                            end
                            ## 
                            ## Sets the childrenOnly property value. The childrenOnly property
                            ## @param value Value to set for the childrenOnly property.
                            ## @return a void
                            ## 
                            def children_only=(value)
                                @children_only = value
                            end
                            ## 
                            ## Instantiates a new CopyPostRequestBody and sets the default values.
                            ## @return a void
                            ## 
                            def initialize()
                                @additional_data = Hash.new
                            end
                            ## 
                            ## Creates a new instance of the appropriate class based on discriminator value
                            ## @param parse_node The parse node to use to read the discriminator value and create the object
                            ## @return a copy_post_request_body
                            ## 
                            def self.create_from_discriminator_value(parse_node)
                                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                return CopyPostRequestBody.new
                            end
                            ## 
                            ## The deserialization information for the current model
                            ## @return a i_dictionary
                            ## 
                            def get_field_deserializers()
                                return {
                                    "childrenOnly" => lambda {|n| @children_only = n.get_boolean_value() },
                                    "includeAllVersionHistory" => lambda {|n| @include_all_version_history = n.get_boolean_value() },
                                    "name" => lambda {|n| @name = n.get_string_value() },
                                    "parentReference" => lambda {|n| @parent_reference = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ItemReference.create_from_discriminator_value(pn) }) },
                                }
                            end
                            ## 
                            ## Gets the includeAllVersionHistory property value. The includeAllVersionHistory property
                            ## @return a boolean
                            ## 
                            def include_all_version_history
                                return @include_all_version_history
                            end
                            ## 
                            ## Sets the includeAllVersionHistory property value. The includeAllVersionHistory property
                            ## @param value Value to set for the includeAllVersionHistory property.
                            ## @return a void
                            ## 
                            def include_all_version_history=(value)
                                @include_all_version_history = value
                            end
                            ## 
                            ## Gets the name property value. The name property
                            ## @return a string
                            ## 
                            def name
                                return @name
                            end
                            ## 
                            ## Sets the name property value. The name property
                            ## @param value Value to set for the name property.
                            ## @return a void
                            ## 
                            def name=(value)
                                @name = value
                            end
                            ## 
                            ## Gets the parentReference property value. The parentReference property
                            ## @return a item_reference
                            ## 
                            def parent_reference
                                return @parent_reference
                            end
                            ## 
                            ## Sets the parentReference property value. The parentReference property
                            ## @param value Value to set for the parentReference property.
                            ## @return a void
                            ## 
                            def parent_reference=(value)
                                @parent_reference = value
                            end
                            ## 
                            ## Serializes information the current object
                            ## @param writer Serialization writer to use to serialize this model
                            ## @return a void
                            ## 
                            def serialize(writer)
                                raise StandardError, 'writer cannot be null' if writer.nil?
                                writer.write_boolean_value("childrenOnly", @children_only)
                                writer.write_boolean_value("includeAllVersionHistory", @include_all_version_history)
                                writer.write_string_value("name", @name)
                                writer.write_object_value("parentReference", @parent_reference)
                                writer.write_additional_data(@additional_data)
                            end
                        end
                    end
                end
            end
        end
    end
end

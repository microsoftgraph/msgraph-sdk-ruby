require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Filter
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # *Experimental* Filter group set used to decide whether given object belongs and should be processed as part of this object mapping. An object is considered in scope if ANY of the groups in the collection is evaluated to true.
            @category_filter_groups
            ## 
            # Filter group set used to decide whether given object is in scope for provisioning. This is the filter which should be used in most cases. If an object used to satisfy this filter at a given moment, and then the object or the filter was changed so that filter is not satisfied any longer, such object will get de-provisioned'. An object is considered in scope if ANY of the groups in the collection is evaluated to true.
            @groups
            ## 
            # *Experimental* Filter group set used to filter out objects at the early stage of reading them from the directory. If an object doesn't satisfy this filter it will not be processed further. Important to understand is that if an object used to satisfy this filter at a given moment, and then the object or the filter was changed so that filter is no longer satisfied, such object will NOT get de-provisioned. An object is considered in scope if ANY of the groups in the collection is evaluated to true.
            @input_filter_groups
            ## 
            # The OdataType property
            @odata_type
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the additionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the categoryFilterGroups property value. *Experimental* Filter group set used to decide whether given object belongs and should be processed as part of this object mapping. An object is considered in scope if ANY of the groups in the collection is evaluated to true.
            ## @return a filter_group
            ## 
            def category_filter_groups
                return @category_filter_groups
            end
            ## 
            ## Sets the categoryFilterGroups property value. *Experimental* Filter group set used to decide whether given object belongs and should be processed as part of this object mapping. An object is considered in scope if ANY of the groups in the collection is evaluated to true.
            ## @param value Value to set for the categoryFilterGroups property.
            ## @return a void
            ## 
            def category_filter_groups=(value)
                @category_filter_groups = value
            end
            ## 
            ## Instantiates a new filter and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a filter
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Filter.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "categoryFilterGroups" => lambda {|n| @category_filter_groups = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::FilterGroup.create_from_discriminator_value(pn) }) },
                    "groups" => lambda {|n| @groups = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::FilterGroup.create_from_discriminator_value(pn) }) },
                    "inputFilterGroups" => lambda {|n| @input_filter_groups = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::FilterGroup.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the groups property value. Filter group set used to decide whether given object is in scope for provisioning. This is the filter which should be used in most cases. If an object used to satisfy this filter at a given moment, and then the object or the filter was changed so that filter is not satisfied any longer, such object will get de-provisioned'. An object is considered in scope if ANY of the groups in the collection is evaluated to true.
            ## @return a filter_group
            ## 
            def groups
                return @groups
            end
            ## 
            ## Sets the groups property value. Filter group set used to decide whether given object is in scope for provisioning. This is the filter which should be used in most cases. If an object used to satisfy this filter at a given moment, and then the object or the filter was changed so that filter is not satisfied any longer, such object will get de-provisioned'. An object is considered in scope if ANY of the groups in the collection is evaluated to true.
            ## @param value Value to set for the groups property.
            ## @return a void
            ## 
            def groups=(value)
                @groups = value
            end
            ## 
            ## Gets the inputFilterGroups property value. *Experimental* Filter group set used to filter out objects at the early stage of reading them from the directory. If an object doesn't satisfy this filter it will not be processed further. Important to understand is that if an object used to satisfy this filter at a given moment, and then the object or the filter was changed so that filter is no longer satisfied, such object will NOT get de-provisioned. An object is considered in scope if ANY of the groups in the collection is evaluated to true.
            ## @return a filter_group
            ## 
            def input_filter_groups
                return @input_filter_groups
            end
            ## 
            ## Sets the inputFilterGroups property value. *Experimental* Filter group set used to filter out objects at the early stage of reading them from the directory. If an object doesn't satisfy this filter it will not be processed further. Important to understand is that if an object used to satisfy this filter at a given moment, and then the object or the filter was changed so that filter is no longer satisfied, such object will NOT get de-provisioned. An object is considered in scope if ANY of the groups in the collection is evaluated to true.
            ## @param value Value to set for the inputFilterGroups property.
            ## @return a void
            ## 
            def input_filter_groups=(value)
                @input_filter_groups = value
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_collection_of_object_values("categoryFilterGroups", @category_filter_groups)
                writer.write_collection_of_object_values("groups", @groups)
                writer.write_collection_of_object_values("inputFilterGroups", @input_filter_groups)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end

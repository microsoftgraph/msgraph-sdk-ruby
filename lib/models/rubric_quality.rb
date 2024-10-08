require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class RubricQuality
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The collection of criteria for this rubric quality.
            @criteria
            ## 
            # The description of this rubric quality.
            @description
            ## 
            # The name of this rubric quality.
            @display_name
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The ID of this resource.
            @quality_id
            ## 
            # If present, a numerical weight for this quality.  Weights must add up to 100.
            @weight
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
            ## Instantiates a new RubricQuality and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a rubric_quality
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return RubricQuality.new
            end
            ## 
            ## Gets the criteria property value. The collection of criteria for this rubric quality.
            ## @return a rubric_criterion
            ## 
            def criteria
                return @criteria
            end
            ## 
            ## Sets the criteria property value. The collection of criteria for this rubric quality.
            ## @param value Value to set for the criteria property.
            ## @return a void
            ## 
            def criteria=(value)
                @criteria = value
            end
            ## 
            ## Gets the description property value. The description of this rubric quality.
            ## @return a education_item_body
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The description of this rubric quality.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. The name of this rubric quality.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The name of this rubric quality.
            ## @param value Value to set for the displayName property.
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
                return {
                    "criteria" => lambda {|n| @criteria = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::RubricCriterion.create_from_discriminator_value(pn) }) },
                    "description" => lambda {|n| @description = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::EducationItemBody.create_from_discriminator_value(pn) }) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "qualityId" => lambda {|n| @quality_id = n.get_string_value() },
                    "weight" => lambda {|n| @weight = n.get_object_value(lambda {|pn| RubricQuality::RubricQualityWeight.create_from_discriminator_value(pn) }) },
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
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the qualityId property value. The ID of this resource.
            ## @return a string
            ## 
            def quality_id
                return @quality_id
            end
            ## 
            ## Sets the qualityId property value. The ID of this resource.
            ## @param value Value to set for the qualityId property.
            ## @return a void
            ## 
            def quality_id=(value)
                @quality_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_collection_of_object_values("criteria", @criteria)
                writer.write_object_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("qualityId", @quality_id)
                writer.write_object_value("weight", @weight)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the weight property value. If present, a numerical weight for this quality.  Weights must add up to 100.
            ## @return a rubric_quality_weight
            ## 
            def weight
                return @weight
            end
            ## 
            ## Sets the weight property value. If present, a numerical weight for this quality.  Weights must add up to 100.
            ## @param value Value to set for the weight property.
            ## @return a void
            ## 
            def weight=(value)
                @weight = value
            end

            ## 
            # Composed type wrapper for classes float, ReferenceNumeric, string
            class RubricQualityWeight
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Composed type representation for type float
                @float
                ## 
                # Composed type representation for type ReferenceNumeric
                @reference_numeric
                ## 
                # Composed type representation for type string
                @string
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a rubric_quality_weight
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    mapping_value_node = parse_node.get_child_node("")
                    unless mapping_value_node.nil? then
                        mapping_value = mapping_value_node.get_string_value
                        case mapping_value
                            when "ReferenceNumeric"
                                return ReferenceNumeric.new
                        end
                    end
                    return RubricQualityWeight.new
                end
                ## 
                ## Gets the float property value. Composed type representation for type float
                ## @return a float
                ## 
                def float
                    return @float
                end
                ## 
                ## Sets the float property value. Composed type representation for type float
                ## @param value Value to set for the float property.
                ## @return a void
                ## 
                def float=(value)
                    @float = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "float" => lambda {|n| @float = n.get_float_value() },
                        "ReferenceNumeric" => lambda {|n| @reference_numeric = n.get_enum_value(MicrosoftGraph::Models::ReferenceNumeric) },
                        "string" => lambda {|n| @string = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the ReferenceNumeric property value. Composed type representation for type ReferenceNumeric
                ## @return a reference_numeric
                ## 
                def reference_numeric
                    return @reference_numeric
                end
                ## 
                ## Sets the ReferenceNumeric property value. Composed type representation for type ReferenceNumeric
                ## @param value Value to set for the ReferenceNumeric property.
                ## @return a void
                ## 
                def reference_numeric=(value)
                    @reference_numeric = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_float_value("float", @float)
                    writer.write_enum_value("ReferenceNumeric", @reference_numeric)
                    writer.write_string_value("string", @string)
                end
                ## 
                ## Gets the string property value. Composed type representation for type string
                ## @return a string
                ## 
                def string
                    return @string
                end
                ## 
                ## Sets the string property value. Composed type representation for type string
                ## @param value Value to set for the string property.
                ## @return a void
                ## 
                def string=(value)
                    @string = value
                end
            end
        end
    end
end

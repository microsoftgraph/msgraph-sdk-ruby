require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ControlScore
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Control action category (Identity, Data, Device, Apps, Infrastructure).
            @control_category
            ## 
            # Control unique name.
            @control_name
            ## 
            # Description of the control.
            @description
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Tenant achieved score for the control (it varies day by day depending on tenant operations on the control).
            @score
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
            ## Instantiates a new ControlScore and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the controlCategory property value. Control action category (Identity, Data, Device, Apps, Infrastructure).
            ## @return a string
            ## 
            def control_category
                return @control_category
            end
            ## 
            ## Sets the controlCategory property value. Control action category (Identity, Data, Device, Apps, Infrastructure).
            ## @param value Value to set for the controlCategory property.
            ## @return a void
            ## 
            def control_category=(value)
                @control_category = value
            end
            ## 
            ## Gets the controlName property value. Control unique name.
            ## @return a string
            ## 
            def control_name
                return @control_name
            end
            ## 
            ## Sets the controlName property value. Control unique name.
            ## @param value Value to set for the controlName property.
            ## @return a void
            ## 
            def control_name=(value)
                @control_name = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a control_score
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ControlScore.new
            end
            ## 
            ## Gets the description property value. Description of the control.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. Description of the control.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "controlCategory" => lambda {|n| @control_category = n.get_string_value() },
                    "controlName" => lambda {|n| @control_name = n.get_string_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "score" => lambda {|n| @score = n.get_object_value(lambda {|pn| ControlScore::ControlScoreScore.create_from_discriminator_value(pn) }) },
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
            ## Gets the score property value. Tenant achieved score for the control (it varies day by day depending on tenant operations on the control).
            ## @return a control_score_score
            ## 
            def score
                return @score
            end
            ## 
            ## Sets the score property value. Tenant achieved score for the control (it varies day by day depending on tenant operations on the control).
            ## @param value Value to set for the score property.
            ## @return a void
            ## 
            def score=(value)
                @score = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("controlCategory", @control_category)
                writer.write_string_value("controlName", @control_name)
                writer.write_string_value("description", @description)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("score", @score)
                writer.write_additional_data(@additional_data)
            end

            ## 
            # Composed type wrapper for classes Double, ReferenceNumeric, string
            class ControlScoreScore
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Composed type representation for type Double
                @double
                ## 
                # Composed type representation for type ReferenceNumeric
                @reference_numeric
                ## 
                # Composed type representation for type string
                @string
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a control_score_score
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
                    return ControlScoreScore.new
                end
                ## 
                ## Gets the double property value. Composed type representation for type Double
                ## @return a double
                ## 
                def double
                    return @double
                end
                ## 
                ## Sets the double property value. Composed type representation for type Double
                ## @param value Value to set for the double property.
                ## @return a void
                ## 
                def double=(value)
                    @double = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "double" => lambda {|n| @double = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
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
                    writer.write_object_value("double", @double)
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

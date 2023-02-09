require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ConditionalAccessFilter
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The mode property
            @mode
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Rule syntax is similar to that used for membership rules for groups in Azure Active Directory (Azure AD). For details, see rules with multiple expressions
            @rule
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
            ## Instantiates a new conditionalAccessFilter and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a conditional_access_filter
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ConditionalAccessFilter.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "mode" => lambda {|n| @mode = n.get_enum_value(MicrosoftGraph::Models::FilterMode) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "rule" => lambda {|n| @rule = n.get_string_value() },
                }
            end
            ## 
            ## Gets the mode property value. The mode property
            ## @return a filter_mode
            ## 
            def mode
                return @mode
            end
            ## 
            ## Sets the mode property value. The mode property
            ## @param value Value to set for the mode property.
            ## @return a void
            ## 
            def mode=(value)
                @mode = value
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
            ## Gets the rule property value. Rule syntax is similar to that used for membership rules for groups in Azure Active Directory (Azure AD). For details, see rules with multiple expressions
            ## @return a string
            ## 
            def rule
                return @rule
            end
            ## 
            ## Sets the rule property value. Rule syntax is similar to that used for membership rules for groups in Azure Active Directory (Azure AD). For details, see rules with multiple expressions
            ## @param value Value to set for the rule property.
            ## @return a void
            ## 
            def rule=(value)
                @rule = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_enum_value("mode", @mode)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("rule", @rule)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end

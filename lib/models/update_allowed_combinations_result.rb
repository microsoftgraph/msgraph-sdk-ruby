require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class UpdateAllowedCombinationsResult
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # The additionalInformation property
            @additional_information
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The conditionalAccessReferences property
            @conditional_access_references
            ## 
            # The currentCombinations property
            @current_combinations
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The previousCombinations property
            @previous_combinations
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
            ## Gets the additionalInformation property value. The additionalInformation property
            ## @return a string
            ## 
            def additional_information
                return @additional_information
            end
            ## 
            ## Sets the additionalInformation property value. The additionalInformation property
            ## @param value Value to set for the additional_information property.
            ## @return a void
            ## 
            def additional_information=(value)
                @additional_information = value
            end
            ## 
            ## Gets the conditionalAccessReferences property value. The conditionalAccessReferences property
            ## @return a string
            ## 
            def conditional_access_references
                return @conditional_access_references
            end
            ## 
            ## Sets the conditionalAccessReferences property value. The conditionalAccessReferences property
            ## @param value Value to set for the conditional_access_references property.
            ## @return a void
            ## 
            def conditional_access_references=(value)
                @conditional_access_references = value
            end
            ## 
            ## Instantiates a new updateAllowedCombinationsResult and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a update_allowed_combinations_result
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UpdateAllowedCombinationsResult.new
            end
            ## 
            ## Gets the currentCombinations property value. The currentCombinations property
            ## @return a authentication_method_modes
            ## 
            def current_combinations
                return @current_combinations
            end
            ## 
            ## Sets the currentCombinations property value. The currentCombinations property
            ## @param value Value to set for the current_combinations property.
            ## @return a void
            ## 
            def current_combinations=(value)
                @current_combinations = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "additionalInformation" => lambda {|n| @additional_information = n.get_string_value() },
                    "conditionalAccessReferences" => lambda {|n| @conditional_access_references = n.get_collection_of_primitive_values(String) },
                    "currentCombinations" => lambda {|n| @current_combinations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AuthenticationMethodModes.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "previousCombinations" => lambda {|n| @previous_combinations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AuthenticationMethodModes.create_from_discriminator_value(pn) }) },
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
            ## Gets the previousCombinations property value. The previousCombinations property
            ## @return a authentication_method_modes
            ## 
            def previous_combinations
                return @previous_combinations
            end
            ## 
            ## Sets the previousCombinations property value. The previousCombinations property
            ## @param value Value to set for the previous_combinations property.
            ## @return a void
            ## 
            def previous_combinations=(value)
                @previous_combinations = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("additionalInformation", @additional_information)
                writer.write_collection_of_primitive_values("conditionalAccessReferences", @conditional_access_references)
                writer.write_collection_of_object_values("currentCombinations", @current_combinations)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_collection_of_object_values("previousCombinations", @previous_combinations)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end

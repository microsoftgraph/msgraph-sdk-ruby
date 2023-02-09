require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ScoredEmailAddress
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The email address.
            @address
            ## 
            # The itemId property
            @item_id
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The relevance score of the email address. A relevance score is used as a sort key, in relation to the other returned results. A higher relevance score value corresponds to a more relevant result. Relevance is determined by the user’s communication and collaboration patterns and business relationships.
            @relevance_score
            ## 
            # The selectionLikelihood property
            @selection_likelihood
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
            ## Gets the address property value. The email address.
            ## @return a string
            ## 
            def address
                return @address
            end
            ## 
            ## Sets the address property value. The email address.
            ## @param value Value to set for the address property.
            ## @return a void
            ## 
            def address=(value)
                @address = value
            end
            ## 
            ## Instantiates a new scoredEmailAddress and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a scored_email_address
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ScoredEmailAddress.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "address" => lambda {|n| @address = n.get_string_value() },
                    "itemId" => lambda {|n| @item_id = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "relevanceScore" => lambda {|n| @relevance_score = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "selectionLikelihood" => lambda {|n| @selection_likelihood = n.get_enum_value(MicrosoftGraph::Models::SelectionLikelihoodInfo) },
                }
            end
            ## 
            ## Gets the itemId property value. The itemId property
            ## @return a string
            ## 
            def item_id
                return @item_id
            end
            ## 
            ## Sets the itemId property value. The itemId property
            ## @param value Value to set for the item_id property.
            ## @return a void
            ## 
            def item_id=(value)
                @item_id = value
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
            ## Gets the relevanceScore property value. The relevance score of the email address. A relevance score is used as a sort key, in relation to the other returned results. A higher relevance score value corresponds to a more relevant result. Relevance is determined by the user’s communication and collaboration patterns and business relationships.
            ## @return a double
            ## 
            def relevance_score
                return @relevance_score
            end
            ## 
            ## Sets the relevanceScore property value. The relevance score of the email address. A relevance score is used as a sort key, in relation to the other returned results. A higher relevance score value corresponds to a more relevant result. Relevance is determined by the user’s communication and collaboration patterns and business relationships.
            ## @param value Value to set for the relevance_score property.
            ## @return a void
            ## 
            def relevance_score=(value)
                @relevance_score = value
            end
            ## 
            ## Gets the selectionLikelihood property value. The selectionLikelihood property
            ## @return a selection_likelihood_info
            ## 
            def selection_likelihood
                return @selection_likelihood
            end
            ## 
            ## Sets the selectionLikelihood property value. The selectionLikelihood property
            ## @param value Value to set for the selection_likelihood property.
            ## @return a void
            ## 
            def selection_likelihood=(value)
                @selection_likelihood = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("address", @address)
                writer.write_string_value("itemId", @item_id)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("relevanceScore", @relevance_score)
                writer.write_enum_value("selectionLikelihood", @selection_likelihood)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end

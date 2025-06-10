require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ArtifactQuery
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The type of artifact to search. The possible values are: message, unknownFutureValue.
            @artifact_type
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Specifies criteria to retrieve artifacts.
            @query_expression
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
            ## Gets the artifactType property value. The type of artifact to search. The possible values are: message, unknownFutureValue.
            ## @return a restorable_artifact
            ## 
            def artifact_type
                return @artifact_type
            end
            ## 
            ## Sets the artifactType property value. The type of artifact to search. The possible values are: message, unknownFutureValue.
            ## @param value Value to set for the artifactType property.
            ## @return a void
            ## 
            def artifact_type=(value)
                @artifact_type = value
            end
            ## 
            ## Instantiates a new ArtifactQuery and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a artifact_query
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ArtifactQuery.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "artifactType" => lambda {|n| @artifact_type = n.get_enum_value(MicrosoftGraph::Models::RestorableArtifact) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "queryExpression" => lambda {|n| @query_expression = n.get_string_value() },
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
            ## Gets the queryExpression property value. Specifies criteria to retrieve artifacts.
            ## @return a string
            ## 
            def query_expression
                return @query_expression
            end
            ## 
            ## Sets the queryExpression property value. Specifies criteria to retrieve artifacts.
            ## @param value Value to set for the queryExpression property.
            ## @return a void
            ## 
            def query_expression=(value)
                @query_expression = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_enum_value("artifactType", @artifact_type)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("queryExpression", @query_expression)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end

require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class RestorePointSearchResult
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Total number of artifacts restored.
            @artifact_hit_count
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The restorePoint property
            @restore_point
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
            ## Gets the artifactHitCount property value. Total number of artifacts restored.
            ## @return a integer
            ## 
            def artifact_hit_count
                return @artifact_hit_count
            end
            ## 
            ## Sets the artifactHitCount property value. Total number of artifacts restored.
            ## @param value Value to set for the artifactHitCount property.
            ## @return a void
            ## 
            def artifact_hit_count=(value)
                @artifact_hit_count = value
            end
            ## 
            ## Instantiates a new RestorePointSearchResult and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a restore_point_search_result
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return RestorePointSearchResult.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "artifactHitCount" => lambda {|n| @artifact_hit_count = n.get_number_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "restorePoint" => lambda {|n| @restore_point = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::RestorePoint.create_from_discriminator_value(pn) }) },
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
            ## Gets the restorePoint property value. The restorePoint property
            ## @return a restore_point
            ## 
            def restore_point
                return @restore_point
            end
            ## 
            ## Sets the restorePoint property value. The restorePoint property
            ## @param value Value to set for the restorePoint property.
            ## @return a void
            ## 
            def restore_point=(value)
                @restore_point = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_number_value("artifactHitCount", @artifact_hit_count)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("restorePoint", @restore_point)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end

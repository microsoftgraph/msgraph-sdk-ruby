require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph'
require_relative '../../../../models/artifact_query'
require_relative '../../../../models/restore_point_preference'
require_relative '../../../../models/restore_point_tags'
require_relative '../../../../models/time_period'
require_relative '../../../solutions'
require_relative '../../backup_restore'
require_relative '../restore_points'
require_relative './search'

module MicrosoftGraph
    module Solutions
        module BackupRestore
            module RestorePoints
                module Search
                    class SearchPostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # The artifactQuery property
                        @artifact_query
                        ## 
                        # The protectionTimePeriod property
                        @protection_time_period
                        ## 
                        # The protectionUnitIds property
                        @protection_unit_ids
                        ## 
                        # The restorePointPreference property
                        @restore_point_preference
                        ## 
                        # The tags property
                        @tags
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
                        ## Gets the artifactQuery property value. The artifactQuery property
                        ## @return a artifact_query
                        ## 
                        def artifact_query
                            return @artifact_query
                        end
                        ## 
                        ## Sets the artifactQuery property value. The artifactQuery property
                        ## @param value Value to set for the artifactQuery property.
                        ## @return a void
                        ## 
                        def artifact_query=(value)
                            @artifact_query = value
                        end
                        ## 
                        ## Instantiates a new SearchPostRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parse_node The parse node to use to read the discriminator value and create the object
                        ## @return a search_post_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return SearchPostRequestBody.new
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "artifactQuery" => lambda {|n| @artifact_query = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ArtifactQuery.create_from_discriminator_value(pn) }) },
                                "protectionTimePeriod" => lambda {|n| @protection_time_period = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::TimePeriod.create_from_discriminator_value(pn) }) },
                                "protectionUnitIds" => lambda {|n| @protection_unit_ids = n.get_collection_of_primitive_values(String) },
                                "restorePointPreference" => lambda {|n| @restore_point_preference = n.get_enum_value(MicrosoftGraph::Models::RestorePointPreference) },
                                "tags" => lambda {|n| @tags = n.get_enum_values(MicrosoftGraph::Models::RestorePointTags) },
                            }
                        end
                        ## 
                        ## Gets the protectionTimePeriod property value. The protectionTimePeriod property
                        ## @return a time_period
                        ## 
                        def protection_time_period
                            return @protection_time_period
                        end
                        ## 
                        ## Sets the protectionTimePeriod property value. The protectionTimePeriod property
                        ## @param value Value to set for the protectionTimePeriod property.
                        ## @return a void
                        ## 
                        def protection_time_period=(value)
                            @protection_time_period = value
                        end
                        ## 
                        ## Gets the protectionUnitIds property value. The protectionUnitIds property
                        ## @return a string
                        ## 
                        def protection_unit_ids
                            return @protection_unit_ids
                        end
                        ## 
                        ## Sets the protectionUnitIds property value. The protectionUnitIds property
                        ## @param value Value to set for the protectionUnitIds property.
                        ## @return a void
                        ## 
                        def protection_unit_ids=(value)
                            @protection_unit_ids = value
                        end
                        ## 
                        ## Gets the restorePointPreference property value. The restorePointPreference property
                        ## @return a restore_point_preference
                        ## 
                        def restore_point_preference
                            return @restore_point_preference
                        end
                        ## 
                        ## Sets the restorePointPreference property value. The restorePointPreference property
                        ## @param value Value to set for the restorePointPreference property.
                        ## @return a void
                        ## 
                        def restore_point_preference=(value)
                            @restore_point_preference = value
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_object_value("artifactQuery", @artifact_query)
                            writer.write_object_value("protectionTimePeriod", @protection_time_period)
                            writer.write_collection_of_primitive_values("protectionUnitIds", @protection_unit_ids)
                            writer.write_enum_value("restorePointPreference", @restore_point_preference)
                            writer.write_enum_value("tags", @tags)
                            writer.write_additional_data(@additional_data)
                        end
                        ## 
                        ## Gets the tags property value. The tags property
                        ## @return a restore_point_tags
                        ## 
                        def tags
                            return @tags
                        end
                        ## 
                        ## Sets the tags property value. The tags property
                        ## @param value Value to set for the tags property.
                        ## @return a void
                        ## 
                        def tags=(value)
                            @tags = value
                        end
                    end
                end
            end
        end
    end
end

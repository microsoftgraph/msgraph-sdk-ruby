require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph'
require_relative '../../../../../../../models/security_purge_areas'
require_relative '../../../../../../../models/security_purge_type'
require_relative '../../../../../../security'
require_relative '../../../../../cases'
require_relative '../../../../ediscovery_cases'
require_relative '../../../item'
require_relative '../../searches'
require_relative '../item'
require_relative './microsoft_graph_security_purge_data'

module MicrosoftGraph
    module Security
        module Cases
            module EdiscoveryCases
                module Item
                    module Searches
                        module Item
                            module MicrosoftGraphSecurityPurgeData
                                class PurgeDataPostRequestBody
                                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                    ## 
                                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                    @additional_data
                                    ## 
                                    # The purgeAreas property
                                    @purge_areas
                                    ## 
                                    # The purgeType property
                                    @purge_type
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
                                    ## Instantiates a new purgeDataPostRequestBody and sets the default values.
                                    ## @return a void
                                    ## 
                                    def initialize()
                                        @additional_data = Hash.new
                                    end
                                    ## 
                                    ## Creates a new instance of the appropriate class based on discriminator value
                                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                                    ## @return a purge_data_post_request_body
                                    ## 
                                    def self.create_from_discriminator_value(parse_node)
                                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                        return PurgeDataPostRequestBody.new
                                    end
                                    ## 
                                    ## The deserialization information for the current model
                                    ## @return a i_dictionary
                                    ## 
                                    def get_field_deserializers()
                                        return {
                                            "purgeAreas" => lambda {|n| @purge_areas = n.get_enum_value(MicrosoftGraph::Models::SecurityPurgeAreas) },
                                            "purgeType" => lambda {|n| @purge_type = n.get_enum_value(MicrosoftGraph::Models::SecurityPurgeType) },
                                        }
                                    end
                                    ## 
                                    ## Gets the purgeAreas property value. The purgeAreas property
                                    ## @return a security_purge_areas
                                    ## 
                                    def purge_areas
                                        return @purge_areas
                                    end
                                    ## 
                                    ## Sets the purgeAreas property value. The purgeAreas property
                                    ## @param value Value to set for the purgeAreas property.
                                    ## @return a void
                                    ## 
                                    def purge_areas=(value)
                                        @purge_areas = value
                                    end
                                    ## 
                                    ## Gets the purgeType property value. The purgeType property
                                    ## @return a security_purge_type
                                    ## 
                                    def purge_type
                                        return @purge_type
                                    end
                                    ## 
                                    ## Sets the purgeType property value. The purgeType property
                                    ## @param value Value to set for the purgeType property.
                                    ## @return a void
                                    ## 
                                    def purge_type=(value)
                                        @purge_type = value
                                    end
                                    ## 
                                    ## Serializes information the current object
                                    ## @param writer Serialization writer to use to serialize this model
                                    ## @return a void
                                    ## 
                                    def serialize(writer)
                                        raise StandardError, 'writer cannot be null' if writer.nil?
                                        writer.write_enum_value("purgeAreas", @purge_areas)
                                        writer.write_enum_value("purgeType", @purge_type)
                                        writer.write_additional_data(@additional_data)
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end

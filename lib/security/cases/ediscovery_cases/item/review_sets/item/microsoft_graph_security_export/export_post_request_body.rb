require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph'
require_relative '../../../../../../../models/security_export_file_structure'
require_relative '../../../../../../../models/security_export_options'
require_relative '../../../../../../security'
require_relative '../../../../../cases'
require_relative '../../../../ediscovery_cases'
require_relative '../../../item'
require_relative '../../review_sets'
require_relative '../item'
require_relative './microsoft_graph_security_export'

module MicrosoftGraph
    module Security
        module Cases
            module EdiscoveryCases
                module Item
                    module ReviewSets
                        module Item
                            module MicrosoftGraphSecurityExport
                                class ExportPostRequestBody
                                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                    ## 
                                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                    @additional_data
                                    ## 
                                    # The description property
                                    @description
                                    ## 
                                    # The exportOptions property
                                    @export_options
                                    ## 
                                    # The exportStructure property
                                    @export_structure
                                    ## 
                                    # The outputName property
                                    @output_name
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
                                    ## Instantiates a new exportPostRequestBody and sets the default values.
                                    ## @return a void
                                    ## 
                                    def initialize()
                                        @additional_data = Hash.new
                                    end
                                    ## 
                                    ## Creates a new instance of the appropriate class based on discriminator value
                                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                                    ## @return a export_post_request_body
                                    ## 
                                    def self.create_from_discriminator_value(parse_node)
                                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                        return ExportPostRequestBody.new
                                    end
                                    ## 
                                    ## Gets the description property value. The description property
                                    ## @return a string
                                    ## 
                                    def description
                                        return @description
                                    end
                                    ## 
                                    ## Sets the description property value. The description property
                                    ## @param value Value to set for the description property.
                                    ## @return a void
                                    ## 
                                    def description=(value)
                                        @description = value
                                    end
                                    ## 
                                    ## Gets the exportOptions property value. The exportOptions property
                                    ## @return a security_export_options
                                    ## 
                                    def export_options
                                        return @export_options
                                    end
                                    ## 
                                    ## Sets the exportOptions property value. The exportOptions property
                                    ## @param value Value to set for the exportOptions property.
                                    ## @return a void
                                    ## 
                                    def export_options=(value)
                                        @export_options = value
                                    end
                                    ## 
                                    ## Gets the exportStructure property value. The exportStructure property
                                    ## @return a security_export_file_structure
                                    ## 
                                    def export_structure
                                        return @export_structure
                                    end
                                    ## 
                                    ## Sets the exportStructure property value. The exportStructure property
                                    ## @param value Value to set for the exportStructure property.
                                    ## @return a void
                                    ## 
                                    def export_structure=(value)
                                        @export_structure = value
                                    end
                                    ## 
                                    ## The deserialization information for the current model
                                    ## @return a i_dictionary
                                    ## 
                                    def get_field_deserializers()
                                        return {
                                            "description" => lambda {|n| @description = n.get_string_value() },
                                            "exportOptions" => lambda {|n| @export_options = n.get_enum_values(MicrosoftGraph::Models::SecurityExportOptions) },
                                            "exportStructure" => lambda {|n| @export_structure = n.get_enum_value(MicrosoftGraph::Models::SecurityExportFileStructure) },
                                            "outputName" => lambda {|n| @output_name = n.get_string_value() },
                                        }
                                    end
                                    ## 
                                    ## Gets the outputName property value. The outputName property
                                    ## @return a string
                                    ## 
                                    def output_name
                                        return @output_name
                                    end
                                    ## 
                                    ## Sets the outputName property value. The outputName property
                                    ## @param value Value to set for the outputName property.
                                    ## @return a void
                                    ## 
                                    def output_name=(value)
                                        @output_name = value
                                    end
                                    ## 
                                    ## Serializes information the current object
                                    ## @param writer Serialization writer to use to serialize this model
                                    ## @return a void
                                    ## 
                                    def serialize(writer)
                                        raise StandardError, 'writer cannot be null' if writer.nil?
                                        writer.write_string_value("description", @description)
                                        writer.write_enum_value("exportOptions", @export_options)
                                        writer.write_enum_value("exportStructure", @export_structure)
                                        writer.write_string_value("outputName", @output_name)
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

require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SecurityEdiscoveryExportOperation < MicrosoftGraph::Models::SecurityCaseOperation
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The description provided for the export.
            @description
            ## 
            # The exportFileMetadata property
            @export_file_metadata
            ## 
            # The options provided for the export. For more information, see reviewSet: export. Possible values are: originalFiles, text, pdfReplacement,  tags.
            @export_options
            ## 
            # The options that specify the structure of the export. For more information, see reviewSet: export. Possible values are: none, directory, pst.
            @export_structure
            ## 
            # The name provided for the export.
            @output_name
            ## 
            # Review set from where documents are exported.
            @review_set
            ## 
            # The review set query that is used to filter the documents for export.
            @review_set_query
            ## 
            ## Instantiates a new SecurityEdiscoveryExportOperation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_ediscovery_export_operation
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityEdiscoveryExportOperation.new
            end
            ## 
            ## Gets the description property value. The description provided for the export.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The description provided for the export.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the exportFileMetadata property value. The exportFileMetadata property
            ## @return a security_export_file_metadata
            ## 
            def export_file_metadata
                return @export_file_metadata
            end
            ## 
            ## Sets the exportFileMetadata property value. The exportFileMetadata property
            ## @param value Value to set for the exportFileMetadata property.
            ## @return a void
            ## 
            def export_file_metadata=(value)
                @export_file_metadata = value
            end
            ## 
            ## Gets the exportOptions property value. The options provided for the export. For more information, see reviewSet: export. Possible values are: originalFiles, text, pdfReplacement,  tags.
            ## @return a security_export_options
            ## 
            def export_options
                return @export_options
            end
            ## 
            ## Sets the exportOptions property value. The options provided for the export. For more information, see reviewSet: export. Possible values are: originalFiles, text, pdfReplacement,  tags.
            ## @param value Value to set for the exportOptions property.
            ## @return a void
            ## 
            def export_options=(value)
                @export_options = value
            end
            ## 
            ## Gets the exportStructure property value. The options that specify the structure of the export. For more information, see reviewSet: export. Possible values are: none, directory, pst.
            ## @return a security_export_file_structure
            ## 
            def export_structure
                return @export_structure
            end
            ## 
            ## Sets the exportStructure property value. The options that specify the structure of the export. For more information, see reviewSet: export. Possible values are: none, directory, pst.
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
                return super.merge({
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "exportFileMetadata" => lambda {|n| @export_file_metadata = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SecurityExportFileMetadata.create_from_discriminator_value(pn) }) },
                    "exportOptions" => lambda {|n| @export_options = n.get_enum_values(MicrosoftGraph::Models::SecurityExportOptions) },
                    "exportStructure" => lambda {|n| @export_structure = n.get_enum_value(MicrosoftGraph::Models::SecurityExportFileStructure) },
                    "outputName" => lambda {|n| @output_name = n.get_string_value() },
                    "reviewSet" => lambda {|n| @review_set = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecurityEdiscoveryReviewSet.create_from_discriminator_value(pn) }) },
                    "reviewSetQuery" => lambda {|n| @review_set_query = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecurityEdiscoveryReviewSetQuery.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the outputName property value. The name provided for the export.
            ## @return a string
            ## 
            def output_name
                return @output_name
            end
            ## 
            ## Sets the outputName property value. The name provided for the export.
            ## @param value Value to set for the outputName property.
            ## @return a void
            ## 
            def output_name=(value)
                @output_name = value
            end
            ## 
            ## Gets the reviewSet property value. Review set from where documents are exported.
            ## @return a security_ediscovery_review_set
            ## 
            def review_set
                return @review_set
            end
            ## 
            ## Sets the reviewSet property value. Review set from where documents are exported.
            ## @param value Value to set for the reviewSet property.
            ## @return a void
            ## 
            def review_set=(value)
                @review_set = value
            end
            ## 
            ## Gets the reviewSetQuery property value. The review set query that is used to filter the documents for export.
            ## @return a security_ediscovery_review_set_query
            ## 
            def review_set_query
                return @review_set_query
            end
            ## 
            ## Sets the reviewSetQuery property value. The review set query that is used to filter the documents for export.
            ## @param value Value to set for the reviewSetQuery property.
            ## @return a void
            ## 
            def review_set_query=(value)
                @review_set_query = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("description", @description)
                writer.write_collection_of_object_values("exportFileMetadata", @export_file_metadata)
                writer.write_enum_value("exportOptions", @export_options)
                writer.write_enum_value("exportStructure", @export_structure)
                writer.write_string_value("outputName", @output_name)
                writer.write_object_value("reviewSet", @review_set)
                writer.write_object_value("reviewSetQuery", @review_set_query)
            end
        end
    end
end

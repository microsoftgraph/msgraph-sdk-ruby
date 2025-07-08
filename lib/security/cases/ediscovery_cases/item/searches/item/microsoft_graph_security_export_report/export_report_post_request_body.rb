require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph'
require_relative '../../../../../../../models/security_additional_options'
require_relative '../../../../../../../models/security_cloud_attachment_version'
require_relative '../../../../../../../models/security_document_version'
require_relative '../../../../../../../models/security_export_criteria'
require_relative '../../../../../../../models/security_export_location'
require_relative '../../../../../../security'
require_relative '../../../../../cases'
require_relative '../../../../ediscovery_cases'
require_relative '../../../item'
require_relative '../../searches'
require_relative '../item'
require_relative './microsoft_graph_security_export_report'

module MicrosoftGraph
    module Security
        module Cases
            module EdiscoveryCases
                module Item
                    module Searches
                        module Item
                            module MicrosoftGraphSecurityExportReport
                                class ExportReportPostRequestBody
                                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                    ## 
                                    # The additionalOptions property
                                    @additional_options
                                    ## 
                                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                    @additional_data
                                    ## 
                                    # The cloudAttachmentVersion property
                                    @cloud_attachment_version
                                    ## 
                                    # The description property
                                    @description
                                    ## 
                                    # The displayName property
                                    @display_name
                                    ## 
                                    # The documentVersion property
                                    @document_version
                                    ## 
                                    # The exportCriteria property
                                    @export_criteria
                                    ## 
                                    # The exportLocation property
                                    @export_location
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
                                    ## Gets the additionalOptions property value. The additionalOptions property
                                    ## @return a security_additional_options
                                    ## 
                                    def additional_options
                                        return @additional_options
                                    end
                                    ## 
                                    ## Sets the additionalOptions property value. The additionalOptions property
                                    ## @param value Value to set for the additionalOptions property.
                                    ## @return a void
                                    ## 
                                    def additional_options=(value)
                                        @additional_options = value
                                    end
                                    ## 
                                    ## Gets the cloudAttachmentVersion property value. The cloudAttachmentVersion property
                                    ## @return a security_cloud_attachment_version
                                    ## 
                                    def cloud_attachment_version
                                        return @cloud_attachment_version
                                    end
                                    ## 
                                    ## Sets the cloudAttachmentVersion property value. The cloudAttachmentVersion property
                                    ## @param value Value to set for the cloudAttachmentVersion property.
                                    ## @return a void
                                    ## 
                                    def cloud_attachment_version=(value)
                                        @cloud_attachment_version = value
                                    end
                                    ## 
                                    ## Instantiates a new ExportReportPostRequestBody and sets the default values.
                                    ## @return a void
                                    ## 
                                    def initialize()
                                        @additional_data = Hash.new
                                    end
                                    ## 
                                    ## Creates a new instance of the appropriate class based on discriminator value
                                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                                    ## @return a export_report_post_request_body
                                    ## 
                                    def self.create_from_discriminator_value(parse_node)
                                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                        return ExportReportPostRequestBody.new
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
                                    ## Gets the displayName property value. The displayName property
                                    ## @return a string
                                    ## 
                                    def display_name
                                        return @display_name
                                    end
                                    ## 
                                    ## Sets the displayName property value. The displayName property
                                    ## @param value Value to set for the displayName property.
                                    ## @return a void
                                    ## 
                                    def display_name=(value)
                                        @display_name = value
                                    end
                                    ## 
                                    ## Gets the documentVersion property value. The documentVersion property
                                    ## @return a security_document_version
                                    ## 
                                    def document_version
                                        return @document_version
                                    end
                                    ## 
                                    ## Sets the documentVersion property value. The documentVersion property
                                    ## @param value Value to set for the documentVersion property.
                                    ## @return a void
                                    ## 
                                    def document_version=(value)
                                        @document_version = value
                                    end
                                    ## 
                                    ## Gets the exportCriteria property value. The exportCriteria property
                                    ## @return a security_export_criteria
                                    ## 
                                    def export_criteria
                                        return @export_criteria
                                    end
                                    ## 
                                    ## Sets the exportCriteria property value. The exportCriteria property
                                    ## @param value Value to set for the exportCriteria property.
                                    ## @return a void
                                    ## 
                                    def export_criteria=(value)
                                        @export_criteria = value
                                    end
                                    ## 
                                    ## Gets the exportLocation property value. The exportLocation property
                                    ## @return a security_export_location
                                    ## 
                                    def export_location
                                        return @export_location
                                    end
                                    ## 
                                    ## Sets the exportLocation property value. The exportLocation property
                                    ## @param value Value to set for the exportLocation property.
                                    ## @return a void
                                    ## 
                                    def export_location=(value)
                                        @export_location = value
                                    end
                                    ## 
                                    ## The deserialization information for the current model
                                    ## @return a i_dictionary
                                    ## 
                                    def get_field_deserializers()
                                        return {
                                            "additionalOptions" => lambda {|n| @additional_options = n.get_enum_values(MicrosoftGraph::Models::SecurityAdditionalOptions) },
                                            "cloudAttachmentVersion" => lambda {|n| @cloud_attachment_version = n.get_enum_value(MicrosoftGraph::Models::SecurityCloudAttachmentVersion) },
                                            "description" => lambda {|n| @description = n.get_string_value() },
                                            "displayName" => lambda {|n| @display_name = n.get_string_value() },
                                            "documentVersion" => lambda {|n| @document_version = n.get_enum_value(MicrosoftGraph::Models::SecurityDocumentVersion) },
                                            "exportCriteria" => lambda {|n| @export_criteria = n.get_enum_values(MicrosoftGraph::Models::SecurityExportCriteria) },
                                            "exportLocation" => lambda {|n| @export_location = n.get_enum_values(MicrosoftGraph::Models::SecurityExportLocation) },
                                        }
                                    end
                                    ## 
                                    ## Serializes information the current object
                                    ## @param writer Serialization writer to use to serialize this model
                                    ## @return a void
                                    ## 
                                    def serialize(writer)
                                        raise StandardError, 'writer cannot be null' if writer.nil?
                                        writer.write_enum_value("additionalOptions", @additional_options)
                                        writer.write_enum_value("cloudAttachmentVersion", @cloud_attachment_version)
                                        writer.write_string_value("description", @description)
                                        writer.write_string_value("displayName", @display_name)
                                        writer.write_enum_value("documentVersion", @document_version)
                                        writer.write_enum_value("exportCriteria", @export_criteria)
                                        writer.write_enum_value("exportLocation", @export_location)
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

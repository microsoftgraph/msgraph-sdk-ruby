require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SecurityEdiscoveryAddToReviewSetOperation < MicrosoftGraph::Models::SecurityCaseOperation
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The additionalDataOptions property
            @additional_data_options
            ## 
            # The cloudAttachmentVersion property
            @cloud_attachment_version
            ## 
            # The documentVersion property
            @document_version
            ## 
            # The itemsToInclude property
            @items_to_include
            ## 
            # eDiscovery review set to which items matching source collection query gets added.
            @review_set
            ## 
            # eDiscovery search that gets added to review set.
            @search
            ## 
            ## Gets the additionalDataOptions property value. The additionalDataOptions property
            ## @return a security_additional_data_options
            ## 
            def additional_data_options
                return @additional_data_options
            end
            ## 
            ## Sets the additionalDataOptions property value. The additionalDataOptions property
            ## @param value Value to set for the additionalDataOptions property.
            ## @return a void
            ## 
            def additional_data_options=(value)
                @additional_data_options = value
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
            ## Instantiates a new SecurityEdiscoveryAddToReviewSetOperation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_ediscovery_add_to_review_set_operation
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityEdiscoveryAddToReviewSetOperation.new
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
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "additionalDataOptions" => lambda {|n| @additional_data_options = n.get_enum_values(MicrosoftGraph::Models::SecurityAdditionalDataOptions) },
                    "cloudAttachmentVersion" => lambda {|n| @cloud_attachment_version = n.get_enum_value(MicrosoftGraph::Models::SecurityCloudAttachmentVersion) },
                    "documentVersion" => lambda {|n| @document_version = n.get_enum_value(MicrosoftGraph::Models::SecurityDocumentVersion) },
                    "itemsToInclude" => lambda {|n| @items_to_include = n.get_enum_values(MicrosoftGraph::Models::SecurityItemsToInclude) },
                    "reviewSet" => lambda {|n| @review_set = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecurityEdiscoveryReviewSet.create_from_discriminator_value(pn) }) },
                    "search" => lambda {|n| @search = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecurityEdiscoverySearch.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the itemsToInclude property value. The itemsToInclude property
            ## @return a security_items_to_include
            ## 
            def items_to_include
                return @items_to_include
            end
            ## 
            ## Sets the itemsToInclude property value. The itemsToInclude property
            ## @param value Value to set for the itemsToInclude property.
            ## @return a void
            ## 
            def items_to_include=(value)
                @items_to_include = value
            end
            ## 
            ## Gets the reviewSet property value. eDiscovery review set to which items matching source collection query gets added.
            ## @return a security_ediscovery_review_set
            ## 
            def review_set
                return @review_set
            end
            ## 
            ## Sets the reviewSet property value. eDiscovery review set to which items matching source collection query gets added.
            ## @param value Value to set for the reviewSet property.
            ## @return a void
            ## 
            def review_set=(value)
                @review_set = value
            end
            ## 
            ## Gets the search property value. eDiscovery search that gets added to review set.
            ## @return a security_ediscovery_search
            ## 
            def search
                return @search
            end
            ## 
            ## Sets the search property value. eDiscovery search that gets added to review set.
            ## @param value Value to set for the search property.
            ## @return a void
            ## 
            def search=(value)
                @search = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("additionalDataOptions", @additional_data_options)
                writer.write_enum_value("cloudAttachmentVersion", @cloud_attachment_version)
                writer.write_enum_value("documentVersion", @document_version)
                writer.write_enum_value("itemsToInclude", @items_to_include)
                writer.write_object_value("reviewSet", @review_set)
                writer.write_object_value("search", @search)
            end
        end
    end
end

require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ProcessContentRequest
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # The activityMetadata property
            @activity_metadata
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # A collection of content entries to be processed. Each entry contains the content itself and its metadata. Use conversation metadata for content like prompts and responses and file metadata for files. Required.
            @content_entries
            ## 
            # The deviceMetadata property
            @device_metadata
            ## 
            # The integratedAppMetadata property
            @integrated_app_metadata
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Metadata about the protected application making the request. Required.
            @protected_app_metadata
            ## 
            ## Gets the activityMetadata property value. The activityMetadata property
            ## @return a activity_metadata
            ## 
            def activity_metadata
                return @activity_metadata
            end
            ## 
            ## Sets the activityMetadata property value. The activityMetadata property
            ## @param value Value to set for the activityMetadata property.
            ## @return a void
            ## 
            def activity_metadata=(value)
                @activity_metadata = value
            end
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
            ## Instantiates a new ProcessContentRequest and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the contentEntries property value. A collection of content entries to be processed. Each entry contains the content itself and its metadata. Use conversation metadata for content like prompts and responses and file metadata for files. Required.
            ## @return a process_content_metadata_base
            ## 
            def content_entries
                return @content_entries
            end
            ## 
            ## Sets the contentEntries property value. A collection of content entries to be processed. Each entry contains the content itself and its metadata. Use conversation metadata for content like prompts and responses and file metadata for files. Required.
            ## @param value Value to set for the contentEntries property.
            ## @return a void
            ## 
            def content_entries=(value)
                @content_entries = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a process_content_request
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ProcessContentRequest.new
            end
            ## 
            ## Gets the deviceMetadata property value. The deviceMetadata property
            ## @return a device_metadata
            ## 
            def device_metadata
                return @device_metadata
            end
            ## 
            ## Sets the deviceMetadata property value. The deviceMetadata property
            ## @param value Value to set for the deviceMetadata property.
            ## @return a void
            ## 
            def device_metadata=(value)
                @device_metadata = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "activityMetadata" => lambda {|n| @activity_metadata = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ActivityMetadata.create_from_discriminator_value(pn) }) },
                    "contentEntries" => lambda {|n| @content_entries = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ProcessContentMetadataBase.create_from_discriminator_value(pn) }) },
                    "deviceMetadata" => lambda {|n| @device_metadata = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DeviceMetadata.create_from_discriminator_value(pn) }) },
                    "integratedAppMetadata" => lambda {|n| @integrated_app_metadata = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IntegratedApplicationMetadata.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "protectedAppMetadata" => lambda {|n| @protected_app_metadata = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ProtectedApplicationMetadata.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the integratedAppMetadata property value. The integratedAppMetadata property
            ## @return a integrated_application_metadata
            ## 
            def integrated_app_metadata
                return @integrated_app_metadata
            end
            ## 
            ## Sets the integratedAppMetadata property value. The integratedAppMetadata property
            ## @param value Value to set for the integratedAppMetadata property.
            ## @return a void
            ## 
            def integrated_app_metadata=(value)
                @integrated_app_metadata = value
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
            ## Gets the protectedAppMetadata property value. Metadata about the protected application making the request. Required.
            ## @return a protected_application_metadata
            ## 
            def protected_app_metadata
                return @protected_app_metadata
            end
            ## 
            ## Sets the protectedAppMetadata property value. Metadata about the protected application making the request. Required.
            ## @param value Value to set for the protectedAppMetadata property.
            ## @return a void
            ## 
            def protected_app_metadata=(value)
                @protected_app_metadata = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("activityMetadata", @activity_metadata)
                writer.write_collection_of_object_values("contentEntries", @content_entries)
                writer.write_object_value("deviceMetadata", @device_metadata)
                writer.write_object_value("integratedAppMetadata", @integrated_app_metadata)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("protectedAppMetadata", @protected_app_metadata)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end

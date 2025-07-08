require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ProcessFileMetadata < MicrosoftGraph::Models::ProcessContentMetadataBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # A dictionary containing custom metadata associated with the file, potentially extracted by the calling application.
            @custom_properties
            ## 
            # The unique identifier (for example, Entra User ID or UPN) of the owner of the file.
            @owner_id
            ## 
            ## Instantiates a new ProcessFileMetadata and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.processFileMetadata"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a process_file_metadata
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ProcessFileMetadata.new
            end
            ## 
            ## Gets the customProperties property value. A dictionary containing custom metadata associated with the file, potentially extracted by the calling application.
            ## @return a custom_metadata_dictionary
            ## 
            def custom_properties
                return @custom_properties
            end
            ## 
            ## Sets the customProperties property value. A dictionary containing custom metadata associated with the file, potentially extracted by the calling application.
            ## @param value Value to set for the customProperties property.
            ## @return a void
            ## 
            def custom_properties=(value)
                @custom_properties = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "customProperties" => lambda {|n| @custom_properties = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::CustomMetadataDictionary.create_from_discriminator_value(pn) }) },
                    "ownerId" => lambda {|n| @owner_id = n.get_string_value() },
                })
            end
            ## 
            ## Gets the ownerId property value. The unique identifier (for example, Entra User ID or UPN) of the owner of the file.
            ## @return a string
            ## 
            def owner_id
                return @owner_id
            end
            ## 
            ## Sets the ownerId property value. The unique identifier (for example, Entra User ID or UPN) of the owner of the file.
            ## @param value Value to set for the ownerId property.
            ## @return a void
            ## 
            def owner_id=(value)
                @owner_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("customProperties", @custom_properties)
                writer.write_string_value("ownerId", @owner_id)
            end
        end
    end
end

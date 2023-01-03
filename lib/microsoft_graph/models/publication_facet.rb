require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraph::Models
    class PublicationFacet
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The state of publication for this document. Either published or checkout. Read-only.
        @level
        ## 
        # The OdataType property
        @odata_type
        ## 
        # The unique identifier for the version that is visible to the current caller. Read-only.
        @version_id
        ## 
        ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        ## @return a i_dictionary
        ## 
        def additional_data
            return @additional_data
        end
        ## 
        ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        ## @param value Value to set for the AdditionalData property.
        ## @return a void
        ## 
        def additional_data=(value)
            @additional_data = value
        end
        ## 
        ## Instantiates a new publicationFacet and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a publication_facet
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return PublicationFacet.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "level" => lambda {|n| @level = n.get_string_value() },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "versionId" => lambda {|n| @version_id = n.get_string_value() },
            }
        end
        ## 
        ## Gets the level property value. The state of publication for this document. Either published or checkout. Read-only.
        ## @return a string
        ## 
        def level
            return @level
        end
        ## 
        ## Sets the level property value. The state of publication for this document. Either published or checkout. Read-only.
        ## @param value Value to set for the level property.
        ## @return a void
        ## 
        def level=(value)
            @level = value
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
        ## @param value Value to set for the OdataType property.
        ## @return a void
        ## 
        def odata_type=(value)
            @odata_type = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_string_value("level", @level)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_string_value("versionId", @version_id)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the versionId property value. The unique identifier for the version that is visible to the current caller. Read-only.
        ## @return a string
        ## 
        def version_id
            return @version_id
        end
        ## 
        ## Sets the versionId property value. The unique identifier for the version that is visible to the current caller. Read-only.
        ## @param value Value to set for the versionId property.
        ## @return a void
        ## 
        def version_id=(value)
            @version_id = value
        end
    end
end

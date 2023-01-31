require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph::Models
    class DelegatedAdminAccessContainer
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        @access_container_id
        @access_container_type
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        @odata_type
        ## 
        ## Gets the accessContainerId property value. 
        ## @return a string
        ## 
        def access_container_id
            return @access_container_id
        end
        ## 
        ## Sets the accessContainerId property value. 
        ## @param value Value to set for the accessContainerId property.
        ## @return a void
        ## 
        def access_container_id=(value)
            @access_container_id = value
        end
        ## 
        ## Gets the accessContainerType property value. 
        ## @return a delegated_admin_access_container_type
        ## 
        def access_container_type
            return @access_container_type
        end
        ## 
        ## Sets the accessContainerType property value. 
        ## @param value Value to set for the accessContainerType property.
        ## @return a void
        ## 
        def access_container_type=(value)
            @access_container_type = value
        end
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
        ## Instantiates a new delegatedAdminAccessContainer and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a delegated_admin_access_container
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return DelegatedAdminAccessContainer.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "accessContainerId" => lambda {|n| @access_container_id = n.get_string_value() },
                "accessContainerType" => lambda {|n| @access_container_type = n.get_enum_value(MicrosoftGraph::Models::DelegatedAdminAccessContainerType) },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
            }
        end
        ## 
        ## Gets the @odata.type property value. 
        ## @return a string
        ## 
        def odata_type
            return @odata_type
        end
        ## 
        ## Sets the @odata.type property value. 
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
            writer.write_string_value("accessContainerId", @access_container_id)
            writer.write_enum_value("accessContainerType", @access_container_type)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_additional_data(@additional_data)
        end
    end
end

require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AuthenticationAttributeCollectionPageViewConfiguration
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The description of the page.
            @description
            ## 
            # The display configuration of attributes being collected on the attribute collection page.
            @inputs
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The title of the attribute collection page.
            @title
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
            ## Instantiates a new AuthenticationAttributeCollectionPageViewConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a authentication_attribute_collection_page_view_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AuthenticationAttributeCollectionPageViewConfiguration.new
            end
            ## 
            ## Gets the description property value. The description of the page.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The description of the page.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "inputs" => lambda {|n| @inputs = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AuthenticationAttributeCollectionInputConfiguration.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "title" => lambda {|n| @title = n.get_string_value() },
                }
            end
            ## 
            ## Gets the inputs property value. The display configuration of attributes being collected on the attribute collection page.
            ## @return a authentication_attribute_collection_input_configuration
            ## 
            def inputs
                return @inputs
            end
            ## 
            ## Sets the inputs property value. The display configuration of attributes being collected on the attribute collection page.
            ## @param value Value to set for the inputs property.
            ## @return a void
            ## 
            def inputs=(value)
                @inputs = value
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("description", @description)
                writer.write_collection_of_object_values("inputs", @inputs)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("title", @title)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the title property value. The title of the attribute collection page.
            ## @return a string
            ## 
            def title
                return @title
            end
            ## 
            ## Sets the title property value. The title of the attribute collection page.
            ## @param value Value to set for the title property.
            ## @return a void
            ## 
            def title=(value)
                @title = value
            end
        end
    end
end

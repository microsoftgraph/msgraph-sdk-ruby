require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraph::Models
    class AssignmentOrder
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The OdataType property
        @odata_type
        ## 
        # A list of identityUserFlowAttribute object identifiers that determine the order in which attributes should be collected within a user flow.
        @order
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
        ## Instantiates a new assignmentOrder and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a assignment_order
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return AssignmentOrder.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "order" => lambda {|n| @order = n.get_collection_of_primitive_values(String) },
            }
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
        ## Gets the order property value. A list of identityUserFlowAttribute object identifiers that determine the order in which attributes should be collected within a user flow.
        ## @return a string
        ## 
        def order
            return @order
        end
        ## 
        ## Sets the order property value. A list of identityUserFlowAttribute object identifiers that determine the order in which attributes should be collected within a user flow.
        ## @param value Value to set for the order property.
        ## @return a void
        ## 
        def order=(value)
            @order = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_collection_of_primitive_values("order", @order)
            writer.write_additional_data(@additional_data)
        end
    end
end

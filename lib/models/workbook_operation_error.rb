require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph::Models
    class WorkbookOperationError
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The error code.
        @code
        ## 
        # The innerError property
        @inner_error
        ## 
        # The error message.
        @message
        ## 
        # The OdataType property
        @odata_type
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
        ## Gets the code property value. The error code.
        ## @return a string
        ## 
        def code
            return @code
        end
        ## 
        ## Sets the code property value. The error code.
        ## @param value Value to set for the code property.
        ## @return a void
        ## 
        def code=(value)
            @code = value
        end
        ## 
        ## Instantiates a new workbookOperationError and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a workbook_operation_error
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return WorkbookOperationError.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "code" => lambda {|n| @code = n.get_string_value() },
                "innerError" => lambda {|n| @inner_error = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::WorkbookOperationError.create_from_discriminator_value(pn) }) },
                "message" => lambda {|n| @message = n.get_string_value() },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
            }
        end
        ## 
        ## Gets the innerError property value. The innerError property
        ## @return a workbook_operation_error
        ## 
        def inner_error
            return @inner_error
        end
        ## 
        ## Sets the innerError property value. The innerError property
        ## @param value Value to set for the inner_error property.
        ## @return a void
        ## 
        def inner_error=(value)
            @inner_error = value
        end
        ## 
        ## Gets the message property value. The error message.
        ## @return a string
        ## 
        def message
            return @message
        end
        ## 
        ## Sets the message property value. The error message.
        ## @param value Value to set for the message property.
        ## @return a void
        ## 
        def message=(value)
            @message = value
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
        ## @param value Value to set for the odata_type property.
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
            writer.write_string_value("code", @code)
            writer.write_object_value("innerError", @inner_error)
            writer.write_string_value("message", @message)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_additional_data(@additional_data)
        end
    end
end

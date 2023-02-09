require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './external_connectors'

module MicrosoftGraph
    module Models
        module ExternalConnectors
            class ConnectionOperation < MicrosoftGraph::Models::Entity
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # If status is failed, provides more information about the error that caused the failure.
                @error
                ## 
                # Indicates the status of the asynchronous operation. Possible values are: unspecified, inprogress, completed, failed, unknownFutureValue.
                @status
                ## 
                ## Instantiates a new connectionOperation and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a connection_operation
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return ConnectionOperation.new
                end
                ## 
                ## Gets the error property value. If status is failed, provides more information about the error that caused the failure.
                ## @return a public_error
                ## 
                def error
                    return @error
                end
                ## 
                ## Sets the error property value. If status is failed, provides more information about the error that caused the failure.
                ## @param value Value to set for the error property.
                ## @return a void
                ## 
                def error=(value)
                    @error = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "error" => lambda {|n| @error = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PublicError.create_from_discriminator_value(pn) }) },
                        "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraph::Models::ExternalConnectors::ConnectionOperationStatus) },
                    })
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_object_value("error", @error)
                    writer.write_enum_value("status", @status)
                end
                ## 
                ## Gets the status property value. Indicates the status of the asynchronous operation. Possible values are: unspecified, inprogress, completed, failed, unknownFutureValue.
                ## @return a connection_operation_status
                ## 
                def status
                    return @status
                end
                ## 
                ## Sets the status property value. Indicates the status of the asynchronous operation. Possible values are: unspecified, inprogress, completed, failed, unknownFutureValue.
                ## @param value Value to set for the status property.
                ## @return a void
                ## 
                def status=(value)
                    @status = value
                end
            end
        end
    end
end

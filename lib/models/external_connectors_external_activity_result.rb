require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ExternalConnectorsExternalActivityResult < MicrosoftGraph::Models::ExternalConnectorsExternalActivity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Error information that explains the failure to process an external activity.
            @error
            ## 
            ## Instantiates a new externalConnectorsExternalActivityResult and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a external_connectors_external_activity_result
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ExternalConnectorsExternalActivityResult.new
            end
            ## 
            ## Gets the error property value. Error information that explains the failure to process an external activity.
            ## @return a public_error
            ## 
            def error
                return @error
            end
            ## 
            ## Sets the error property value. Error information that explains the failure to process an external activity.
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
            end
        end
    end
end

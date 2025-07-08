require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ProtectedApplicationMetadata < MicrosoftGraph::Models::IntegratedApplicationMetadata
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The client (application) ID of the Microsoft Entra application. Required.
            @application_location
            ## 
            ## Gets the applicationLocation property value. The client (application) ID of the Microsoft Entra application. Required.
            ## @return a policy_location
            ## 
            def application_location
                return @application_location
            end
            ## 
            ## Sets the applicationLocation property value. The client (application) ID of the Microsoft Entra application. Required.
            ## @param value Value to set for the applicationLocation property.
            ## @return a void
            ## 
            def application_location=(value)
                @application_location = value
            end
            ## 
            ## Instantiates a new ProtectedApplicationMetadata and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.protectedApplicationMetadata"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a protected_application_metadata
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ProtectedApplicationMetadata.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "applicationLocation" => lambda {|n| @application_location = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PolicyLocation.create_from_discriminator_value(pn) }) },
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
                writer.write_object_value("applicationLocation", @application_location)
            end
        end
    end
end

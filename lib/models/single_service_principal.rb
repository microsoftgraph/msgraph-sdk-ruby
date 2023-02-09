require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SingleServicePrincipal < MicrosoftGraph::Models::SubjectSet
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Description of this service principal.
            @description
            ## 
            # ID of the servicePrincipal.
            @service_principal_id
            ## 
            ## Instantiates a new SingleServicePrincipal and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.singleServicePrincipal"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a single_service_principal
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SingleServicePrincipal.new
            end
            ## 
            ## Gets the description property value. Description of this service principal.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. Description of this service principal.
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
                return super.merge({
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "servicePrincipalId" => lambda {|n| @service_principal_id = n.get_string_value() },
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
                writer.write_string_value("description", @description)
                writer.write_string_value("servicePrincipalId", @service_principal_id)
            end
            ## 
            ## Gets the servicePrincipalId property value. ID of the servicePrincipal.
            ## @return a string
            ## 
            def service_principal_id
                return @service_principal_id
            end
            ## 
            ## Sets the servicePrincipalId property value. ID of the servicePrincipal.
            ## @param value Value to set for the service_principal_id property.
            ## @return a void
            ## 
            def service_principal_id=(value)
                @service_principal_id = value
            end
        end
    end
end

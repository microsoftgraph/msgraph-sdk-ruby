require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SecurityIdentityContainer < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Represents potential issues identified by Microsoft Defender for Identity within a customer's Microsoft Defender for Identity configuration.
            @health_issues
            ## 
            # Represents a customer's Microsoft Defender for Identity sensors.
            @sensors
            ## 
            ## Instantiates a new SecurityIdentityContainer and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_identity_container
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityIdentityContainer.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "healthIssues" => lambda {|n| @health_issues = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SecurityHealthIssue.create_from_discriminator_value(pn) }) },
                    "sensors" => lambda {|n| @sensors = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SecuritySensor.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the healthIssues property value. Represents potential issues identified by Microsoft Defender for Identity within a customer's Microsoft Defender for Identity configuration.
            ## @return a security_health_issue
            ## 
            def health_issues
                return @health_issues
            end
            ## 
            ## Sets the healthIssues property value. Represents potential issues identified by Microsoft Defender for Identity within a customer's Microsoft Defender for Identity configuration.
            ## @param value Value to set for the healthIssues property.
            ## @return a void
            ## 
            def health_issues=(value)
                @health_issues = value
            end
            ## 
            ## Gets the sensors property value. Represents a customer's Microsoft Defender for Identity sensors.
            ## @return a security_sensor
            ## 
            def sensors
                return @sensors
            end
            ## 
            ## Sets the sensors property value. Represents a customer's Microsoft Defender for Identity sensors.
            ## @param value Value to set for the sensors property.
            ## @return a void
            ## 
            def sensors=(value)
                @sensors = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("healthIssues", @health_issues)
                writer.write_collection_of_object_values("sensors", @sensors)
            end
        end
    end
end

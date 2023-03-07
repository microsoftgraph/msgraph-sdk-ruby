require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class OnPremisesDirectorySynchronization < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Consists of configurations that can be fine-tuned and impact the on-premises directory synchronization process for a tenant.
            @configuration
            ## 
            # The features property
            @features
            ## 
            ## Gets the configuration property value. Consists of configurations that can be fine-tuned and impact the on-premises directory synchronization process for a tenant.
            ## @return a on_premises_directory_synchronization_configuration
            ## 
            def configuration
                return @configuration
            end
            ## 
            ## Sets the configuration property value. Consists of configurations that can be fine-tuned and impact the on-premises directory synchronization process for a tenant.
            ## @param value Value to set for the configuration property.
            ## @return a void
            ## 
            def configuration=(value)
                @configuration = value
            end
            ## 
            ## Instantiates a new onPremisesDirectorySynchronization and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a on_premises_directory_synchronization
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OnPremisesDirectorySynchronization.new
            end
            ## 
            ## Gets the features property value. The features property
            ## @return a on_premises_directory_synchronization_feature
            ## 
            def features
                return @features
            end
            ## 
            ## Sets the features property value. The features property
            ## @param value Value to set for the features property.
            ## @return a void
            ## 
            def features=(value)
                @features = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "configuration" => lambda {|n| @configuration = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::OnPremisesDirectorySynchronizationConfiguration.create_from_discriminator_value(pn) }) },
                    "features" => lambda {|n| @features = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::OnPremisesDirectorySynchronizationFeature.create_from_discriminator_value(pn) }) },
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
                writer.write_object_value("configuration", @configuration)
                writer.write_object_value("features", @features)
            end
        end
    end
end

require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Synchronization < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Performs synchronization by periodically running in the background, polling for changes in one directory, and pushing them to another directory.
            @jobs
            ## 
            # Represents a collection of credentials to access provisioned cloud applications.
            @secrets
            ## 
            # Pre-configured synchronization settings for a particular application.
            @templates
            ## 
            ## Instantiates a new synchronization and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a synchronization
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Synchronization.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "jobs" => lambda {|n| @jobs = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SynchronizationJob.create_from_discriminator_value(pn) }) },
                    "secrets" => lambda {|n| @secrets = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SynchronizationSecretKeyStringValuePair.create_from_discriminator_value(pn) }) },
                    "templates" => lambda {|n| @templates = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SynchronizationTemplate.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the jobs property value. Performs synchronization by periodically running in the background, polling for changes in one directory, and pushing them to another directory.
            ## @return a synchronization_job
            ## 
            def jobs
                return @jobs
            end
            ## 
            ## Sets the jobs property value. Performs synchronization by periodically running in the background, polling for changes in one directory, and pushing them to another directory.
            ## @param value Value to set for the jobs property.
            ## @return a void
            ## 
            def jobs=(value)
                @jobs = value
            end
            ## 
            ## Gets the secrets property value. Represents a collection of credentials to access provisioned cloud applications.
            ## @return a synchronization_secret_key_string_value_pair
            ## 
            def secrets
                return @secrets
            end
            ## 
            ## Sets the secrets property value. Represents a collection of credentials to access provisioned cloud applications.
            ## @param value Value to set for the secrets property.
            ## @return a void
            ## 
            def secrets=(value)
                @secrets = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("jobs", @jobs)
                writer.write_collection_of_object_values("secrets", @secrets)
                writer.write_collection_of_object_values("templates", @templates)
            end
            ## 
            ## Gets the templates property value. Pre-configured synchronization settings for a particular application.
            ## @return a synchronization_template
            ## 
            def templates
                return @templates
            end
            ## 
            ## Sets the templates property value. Pre-configured synchronization settings for a particular application.
            ## @param value Value to set for the templates property.
            ## @return a void
            ## 
            def templates=(value)
                @templates = value
            end
        end
    end
end

require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ServiceAnnouncement < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # A collection of service health information for tenant. This property is a contained navigation property, it is nullable and readonly.
            @health_overviews
            ## 
            # A collection of service issues for tenant. This property is a contained navigation property, it is nullable and readonly.
            @issues
            ## 
            # A collection of service messages for tenant. This property is a contained navigation property, it is nullable and readonly.
            @messages
            ## 
            ## Instantiates a new ServiceAnnouncement and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a service_announcement
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ServiceAnnouncement.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "healthOverviews" => lambda {|n| @health_overviews = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ServiceHealth.create_from_discriminator_value(pn) }) },
                    "issues" => lambda {|n| @issues = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ServiceHealthIssue.create_from_discriminator_value(pn) }) },
                    "messages" => lambda {|n| @messages = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ServiceUpdateMessage.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the healthOverviews property value. A collection of service health information for tenant. This property is a contained navigation property, it is nullable and readonly.
            ## @return a service_health
            ## 
            def health_overviews
                return @health_overviews
            end
            ## 
            ## Sets the healthOverviews property value. A collection of service health information for tenant. This property is a contained navigation property, it is nullable and readonly.
            ## @param value Value to set for the health_overviews property.
            ## @return a void
            ## 
            def health_overviews=(value)
                @health_overviews = value
            end
            ## 
            ## Gets the issues property value. A collection of service issues for tenant. This property is a contained navigation property, it is nullable and readonly.
            ## @return a service_health_issue
            ## 
            def issues
                return @issues
            end
            ## 
            ## Sets the issues property value. A collection of service issues for tenant. This property is a contained navigation property, it is nullable and readonly.
            ## @param value Value to set for the issues property.
            ## @return a void
            ## 
            def issues=(value)
                @issues = value
            end
            ## 
            ## Gets the messages property value. A collection of service messages for tenant. This property is a contained navigation property, it is nullable and readonly.
            ## @return a service_update_message
            ## 
            def messages
                return @messages
            end
            ## 
            ## Sets the messages property value. A collection of service messages for tenant. This property is a contained navigation property, it is nullable and readonly.
            ## @param value Value to set for the messages property.
            ## @return a void
            ## 
            def messages=(value)
                @messages = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("healthOverviews", @health_overviews)
                writer.write_collection_of_object_values("issues", @issues)
                writer.write_collection_of_object_values("messages", @messages)
            end
        end
    end
end

require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ServiceHealth < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # A collection of issues that happened on the service, with detailed information for each issue.
            @issues
            ## 
            # The service name. Use the list healthOverviews operation to get exact string names for services subscribed by the tenant.
            @service
            ## 
            # The status property
            @status
            ## 
            ## Instantiates a new serviceHealth and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a service_health
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ServiceHealth.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "issues" => lambda {|n| @issues = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ServiceHealthIssue.create_from_discriminator_value(pn) }) },
                    "service" => lambda {|n| @service = n.get_string_value() },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraph::Models::ServiceHealthStatus) },
                })
            end
            ## 
            ## Gets the issues property value. A collection of issues that happened on the service, with detailed information for each issue.
            ## @return a service_health_issue
            ## 
            def issues
                return @issues
            end
            ## 
            ## Sets the issues property value. A collection of issues that happened on the service, with detailed information for each issue.
            ## @param value Value to set for the issues property.
            ## @return a void
            ## 
            def issues=(value)
                @issues = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("issues", @issues)
                writer.write_string_value("service", @service)
                writer.write_enum_value("status", @status)
            end
            ## 
            ## Gets the service property value. The service name. Use the list healthOverviews operation to get exact string names for services subscribed by the tenant.
            ## @return a string
            ## 
            def service
                return @service
            end
            ## 
            ## Sets the service property value. The service name. Use the list healthOverviews operation to get exact string names for services subscribed by the tenant.
            ## @param value Value to set for the service property.
            ## @return a void
            ## 
            def service=(value)
                @service = value
            end
            ## 
            ## Gets the status property value. The status property
            ## @return a service_health_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The status property
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
        end
    end
end

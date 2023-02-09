require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ServiceHealthIssue < MicrosoftGraph::Models::ServiceAnnouncementBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The classification property
            @classification
            ## 
            # The feature name of the service issue.
            @feature
            ## 
            # The feature group name of the service issue.
            @feature_group
            ## 
            # The description of the service issue impact.
            @impact_description
            ## 
            # Indicates whether the issue is resolved.
            @is_resolved
            ## 
            # The origin property
            @origin
            ## 
            # Collection of historical posts for the service issue.
            @posts
            ## 
            # Indicates the service affected by the issue.
            @service
            ## 
            # The status property
            @status
            ## 
            ## Gets the classification property value. The classification property
            ## @return a service_health_classification_type
            ## 
            def classification
                return @classification
            end
            ## 
            ## Sets the classification property value. The classification property
            ## @param value Value to set for the classification property.
            ## @return a void
            ## 
            def classification=(value)
                @classification = value
            end
            ## 
            ## Instantiates a new ServiceHealthIssue and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.serviceHealthIssue"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a service_health_issue
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ServiceHealthIssue.new
            end
            ## 
            ## Gets the feature property value. The feature name of the service issue.
            ## @return a string
            ## 
            def feature
                return @feature
            end
            ## 
            ## Sets the feature property value. The feature name of the service issue.
            ## @param value Value to set for the feature property.
            ## @return a void
            ## 
            def feature=(value)
                @feature = value
            end
            ## 
            ## Gets the featureGroup property value. The feature group name of the service issue.
            ## @return a string
            ## 
            def feature_group
                return @feature_group
            end
            ## 
            ## Sets the featureGroup property value. The feature group name of the service issue.
            ## @param value Value to set for the feature_group property.
            ## @return a void
            ## 
            def feature_group=(value)
                @feature_group = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "classification" => lambda {|n| @classification = n.get_enum_value(MicrosoftGraph::Models::ServiceHealthClassificationType) },
                    "feature" => lambda {|n| @feature = n.get_string_value() },
                    "featureGroup" => lambda {|n| @feature_group = n.get_string_value() },
                    "impactDescription" => lambda {|n| @impact_description = n.get_string_value() },
                    "isResolved" => lambda {|n| @is_resolved = n.get_boolean_value() },
                    "origin" => lambda {|n| @origin = n.get_enum_value(MicrosoftGraph::Models::ServiceHealthOrigin) },
                    "posts" => lambda {|n| @posts = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ServiceHealthIssuePost.create_from_discriminator_value(pn) }) },
                    "service" => lambda {|n| @service = n.get_string_value() },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraph::Models::ServiceHealthStatus) },
                })
            end
            ## 
            ## Gets the impactDescription property value. The description of the service issue impact.
            ## @return a string
            ## 
            def impact_description
                return @impact_description
            end
            ## 
            ## Sets the impactDescription property value. The description of the service issue impact.
            ## @param value Value to set for the impact_description property.
            ## @return a void
            ## 
            def impact_description=(value)
                @impact_description = value
            end
            ## 
            ## Gets the isResolved property value. Indicates whether the issue is resolved.
            ## @return a boolean
            ## 
            def is_resolved
                return @is_resolved
            end
            ## 
            ## Sets the isResolved property value. Indicates whether the issue is resolved.
            ## @param value Value to set for the is_resolved property.
            ## @return a void
            ## 
            def is_resolved=(value)
                @is_resolved = value
            end
            ## 
            ## Gets the origin property value. The origin property
            ## @return a service_health_origin
            ## 
            def origin
                return @origin
            end
            ## 
            ## Sets the origin property value. The origin property
            ## @param value Value to set for the origin property.
            ## @return a void
            ## 
            def origin=(value)
                @origin = value
            end
            ## 
            ## Gets the posts property value. Collection of historical posts for the service issue.
            ## @return a service_health_issue_post
            ## 
            def posts
                return @posts
            end
            ## 
            ## Sets the posts property value. Collection of historical posts for the service issue.
            ## @param value Value to set for the posts property.
            ## @return a void
            ## 
            def posts=(value)
                @posts = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("classification", @classification)
                writer.write_string_value("feature", @feature)
                writer.write_string_value("featureGroup", @feature_group)
                writer.write_string_value("impactDescription", @impact_description)
                writer.write_boolean_value("isResolved", @is_resolved)
                writer.write_enum_value("origin", @origin)
                writer.write_collection_of_object_values("posts", @posts)
                writer.write_string_value("service", @service)
                writer.write_enum_value("status", @status)
            end
            ## 
            ## Gets the service property value. Indicates the service affected by the issue.
            ## @return a string
            ## 
            def service
                return @service
            end
            ## 
            ## Sets the service property value. Indicates the service affected by the issue.
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

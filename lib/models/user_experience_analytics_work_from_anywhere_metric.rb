require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # The user experience analytics metric for work from anywhere report.
        class UserExperienceAnalyticsWorkFromAnywhereMetric < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The work from anywhere metric devices. Read-only.
            @metric_devices
            ## 
            ## Instantiates a new userExperienceAnalyticsWorkFromAnywhereMetric and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a user_experience_analytics_work_from_anywhere_metric
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserExperienceAnalyticsWorkFromAnywhereMetric.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "metricDevices" => lambda {|n| @metric_devices = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::UserExperienceAnalyticsWorkFromAnywhereDevice.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the metricDevices property value. The work from anywhere metric devices. Read-only.
            ## @return a user_experience_analytics_work_from_anywhere_device
            ## 
            def metric_devices
                return @metric_devices
            end
            ## 
            ## Sets the metricDevices property value. The work from anywhere metric devices. Read-only.
            ## @param value Value to set for the metric_devices property.
            ## @return a void
            ## 
            def metric_devices=(value)
                @metric_devices = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("metricDevices", @metric_devices)
            end
        end
    end
end

require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Trending < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            @last_modified_date_time
            ## 
            # Used for navigating to the trending document.
            @resource
            ## 
            # Reference properties of the trending document, such as the url and type of the document.
            @resource_reference
            ## 
            # Properties that you can use to visualize the document in your experience.
            @resource_visualization
            ## 
            # Value indicating how much the document is currently trending. The larger the number, the more the document is currently trending around the user (the more relevant it is). Returned documents are sorted by this value.
            @weight
            ## 
            ## Instantiates a new Trending and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a trending
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Trending.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "resource" => lambda {|n| @resource = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Entity.create_from_discriminator_value(pn) }) },
                    "resourceReference" => lambda {|n| @resource_reference = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ResourceReference.create_from_discriminator_value(pn) }) },
                    "resourceVisualization" => lambda {|n| @resource_visualization = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ResourceVisualization.create_from_discriminator_value(pn) }) },
                    "weight" => lambda {|n| @weight = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the lastModifiedDateTime property value. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            ## @param value Value to set for the lastModifiedDateTime property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the resource property value. Used for navigating to the trending document.
            ## @return a entity
            ## 
            def resource
                return @resource
            end
            ## 
            ## Sets the resource property value. Used for navigating to the trending document.
            ## @param value Value to set for the resource property.
            ## @return a void
            ## 
            def resource=(value)
                @resource = value
            end
            ## 
            ## Gets the resourceReference property value. Reference properties of the trending document, such as the url and type of the document.
            ## @return a resource_reference
            ## 
            def resource_reference
                return @resource_reference
            end
            ## 
            ## Sets the resourceReference property value. Reference properties of the trending document, such as the url and type of the document.
            ## @param value Value to set for the resourceReference property.
            ## @return a void
            ## 
            def resource_reference=(value)
                @resource_reference = value
            end
            ## 
            ## Gets the resourceVisualization property value. Properties that you can use to visualize the document in your experience.
            ## @return a resource_visualization
            ## 
            def resource_visualization
                return @resource_visualization
            end
            ## 
            ## Sets the resourceVisualization property value. Properties that you can use to visualize the document in your experience.
            ## @param value Value to set for the resourceVisualization property.
            ## @return a void
            ## 
            def resource_visualization=(value)
                @resource_visualization = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_object_value("resource", @resource)
                writer.write_object_value("weight", @weight)
            end
            ## 
            ## Gets the weight property value. Value indicating how much the document is currently trending. The larger the number, the more the document is currently trending around the user (the more relevant it is). Returned documents are sorted by this value.
            ## @return a double
            ## 
            def weight
                return @weight
            end
            ## 
            ## Sets the weight property value. Value indicating how much the document is currently trending. The larger the number, the more the document is currently trending around the user (the more relevant it is). Returned documents are sorted by this value.
            ## @param value Value to set for the weight property.
            ## @return a void
            ## 
            def weight=(value)
                @weight = value
            end
        end
    end
end

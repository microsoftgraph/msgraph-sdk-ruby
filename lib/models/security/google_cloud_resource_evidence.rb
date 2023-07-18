require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './security'

module MicrosoftGraph
    module Models
        module Security
            class GoogleCloudResourceEvidence < MicrosoftGraph::Models::Security::AlertEvidence
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The zone or region where the resource is located.
                @location
                ## 
                # The type of location. Possible values are: unknown, regional, zonal, global, unknownFutureValue.
                @location_type
                ## 
                # The Google project ID as defined by the user.
                @project_id
                ## 
                # The project number assigned by Google.
                @project_number
                ## 
                # The name of the resource.
                @resource_name
                ## 
                # The type of the resource.
                @resource_type
                ## 
                ## Instantiates a new googleCloudResourceEvidence and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a google_cloud_resource_evidence
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return GoogleCloudResourceEvidence.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "location" => lambda {|n| @location = n.get_string_value() },
                        "locationType" => lambda {|n| @location_type = n.get_enum_value(MicrosoftGraph::Models::Security::GoogleCloudLocationType) },
                        "projectId" => lambda {|n| @project_id = n.get_string_value() },
                        "projectNumber" => lambda {|n| @project_number = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                        "resourceName" => lambda {|n| @resource_name = n.get_string_value() },
                        "resourceType" => lambda {|n| @resource_type = n.get_string_value() },
                    })
                end
                ## 
                ## Gets the location property value. The zone or region where the resource is located.
                ## @return a string
                ## 
                def location
                    return @location
                end
                ## 
                ## Sets the location property value. The zone or region where the resource is located.
                ## @param value Value to set for the location property.
                ## @return a void
                ## 
                def location=(value)
                    @location = value
                end
                ## 
                ## Gets the locationType property value. The type of location. Possible values are: unknown, regional, zonal, global, unknownFutureValue.
                ## @return a google_cloud_location_type
                ## 
                def location_type
                    return @location_type
                end
                ## 
                ## Sets the locationType property value. The type of location. Possible values are: unknown, regional, zonal, global, unknownFutureValue.
                ## @param value Value to set for the location_type property.
                ## @return a void
                ## 
                def location_type=(value)
                    @location_type = value
                end
                ## 
                ## Gets the projectId property value. The Google project ID as defined by the user.
                ## @return a string
                ## 
                def project_id
                    return @project_id
                end
                ## 
                ## Sets the projectId property value. The Google project ID as defined by the user.
                ## @param value Value to set for the project_id property.
                ## @return a void
                ## 
                def project_id=(value)
                    @project_id = value
                end
                ## 
                ## Gets the projectNumber property value. The project number assigned by Google.
                ## @return a int64
                ## 
                def project_number
                    return @project_number
                end
                ## 
                ## Sets the projectNumber property value. The project number assigned by Google.
                ## @param value Value to set for the project_number property.
                ## @return a void
                ## 
                def project_number=(value)
                    @project_number = value
                end
                ## 
                ## Gets the resourceName property value. The name of the resource.
                ## @return a string
                ## 
                def resource_name
                    return @resource_name
                end
                ## 
                ## Sets the resourceName property value. The name of the resource.
                ## @param value Value to set for the resource_name property.
                ## @return a void
                ## 
                def resource_name=(value)
                    @resource_name = value
                end
                ## 
                ## Gets the resourceType property value. The type of the resource.
                ## @return a string
                ## 
                def resource_type
                    return @resource_type
                end
                ## 
                ## Sets the resourceType property value. The type of the resource.
                ## @param value Value to set for the resource_type property.
                ## @return a void
                ## 
                def resource_type=(value)
                    @resource_type = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_string_value("location", @location)
                    writer.write_enum_value("locationType", @location_type)
                    writer.write_string_value("projectId", @project_id)
                    writer.write_object_value("projectNumber", @project_number)
                    writer.write_string_value("resourceName", @resource_name)
                    writer.write_string_value("resourceType", @resource_type)
                end
            end
        end
    end
end

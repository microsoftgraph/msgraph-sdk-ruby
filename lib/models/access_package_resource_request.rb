require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AccessPackageResourceRequest < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The catalog property
            @catalog
            ## 
            # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            @created_date_time
            ## 
            # The type of the request. Use adminAdd to add a resource, if the caller is an administrator or resource owner, adminUpdate to update a resource, or adminRemove to remove a resource.
            @request_type
            ## 
            # The resource property
            @resource
            ## 
            # The outcome of whether the service was able to add the resource to the catalog.  The value is delivered if the resource was added or removed, and deliveryFailed if it could not be added or removed. Read-only.
            @state
            ## 
            ## Gets the catalog property value. The catalog property
            ## @return a access_package_catalog
            ## 
            def catalog
                return @catalog
            end
            ## 
            ## Sets the catalog property value. The catalog property
            ## @param value Value to set for the catalog property.
            ## @return a void
            ## 
            def catalog=(value)
                @catalog = value
            end
            ## 
            ## Instantiates a new accessPackageResourceRequest and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a access_package_resource_request
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AccessPackageResourceRequest.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "catalog" => lambda {|n| @catalog = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AccessPackageCatalog.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "requestType" => lambda {|n| @request_type = n.get_enum_value(MicrosoftGraph::Models::AccessPackageRequestType) },
                    "resource" => lambda {|n| @resource = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AccessPackageResource.create_from_discriminator_value(pn) }) },
                    "state" => lambda {|n| @state = n.get_enum_value(MicrosoftGraph::Models::AccessPackageRequestState) },
                })
            end
            ## 
            ## Gets the requestType property value. The type of the request. Use adminAdd to add a resource, if the caller is an administrator or resource owner, adminUpdate to update a resource, or adminRemove to remove a resource.
            ## @return a access_package_request_type
            ## 
            def request_type
                return @request_type
            end
            ## 
            ## Sets the requestType property value. The type of the request. Use adminAdd to add a resource, if the caller is an administrator or resource owner, adminUpdate to update a resource, or adminRemove to remove a resource.
            ## @param value Value to set for the requestType property.
            ## @return a void
            ## 
            def request_type=(value)
                @request_type = value
            end
            ## 
            ## Gets the resource property value. The resource property
            ## @return a access_package_resource
            ## 
            def resource
                return @resource
            end
            ## 
            ## Sets the resource property value. The resource property
            ## @param value Value to set for the resource property.
            ## @return a void
            ## 
            def resource=(value)
                @resource = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("catalog", @catalog)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_enum_value("requestType", @request_type)
                writer.write_object_value("resource", @resource)
                writer.write_enum_value("state", @state)
            end
            ## 
            ## Gets the state property value. The outcome of whether the service was able to add the resource to the catalog.  The value is delivered if the resource was added or removed, and deliveryFailed if it could not be added or removed. Read-only.
            ## @return a access_package_request_state
            ## 
            def state
                return @state
            end
            ## 
            ## Sets the state property value. The outcome of whether the service was able to add the resource to the catalog.  The value is delivered if the resource was added or removed, and deliveryFailed if it could not be added or removed. Read-only.
            ## @param value Value to set for the state property.
            ## @return a void
            ## 
            def state=(value)
                @state = value
            end
        end
    end
end

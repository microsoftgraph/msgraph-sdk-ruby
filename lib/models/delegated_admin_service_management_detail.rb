require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class DelegatedAdminServiceManagementDetail < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The URL of the management portal for the managed service. Read-only.
            @service_management_url
            ## 
            # The name of a managed service. Read-only.
            @service_name
            ## 
            ## Instantiates a new delegatedAdminServiceManagementDetail and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a delegated_admin_service_management_detail
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DelegatedAdminServiceManagementDetail.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "serviceManagementUrl" => lambda {|n| @service_management_url = n.get_string_value() },
                    "serviceName" => lambda {|n| @service_name = n.get_string_value() },
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
                writer.write_string_value("serviceManagementUrl", @service_management_url)
                writer.write_string_value("serviceName", @service_name)
            end
            ## 
            ## Gets the serviceManagementUrl property value. The URL of the management portal for the managed service. Read-only.
            ## @return a string
            ## 
            def service_management_url
                return @service_management_url
            end
            ## 
            ## Sets the serviceManagementUrl property value. The URL of the management portal for the managed service. Read-only.
            ## @param value Value to set for the service_management_url property.
            ## @return a void
            ## 
            def service_management_url=(value)
                @service_management_url = value
            end
            ## 
            ## Gets the serviceName property value. The name of a managed service. Read-only.
            ## @return a string
            ## 
            def service_name
                return @service_name
            end
            ## 
            ## Sets the serviceName property value. The name of a managed service. Read-only.
            ## @param value Value to set for the service_name property.
            ## @return a void
            ## 
            def service_name=(value)
                @service_name = value
            end
        end
    end
end

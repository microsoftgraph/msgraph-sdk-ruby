require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SecurityCloudApplicationEvidence < MicrosoftGraph::Models::SecurityAlertEvidence
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Unique identifier of the application.
            @app_id
            ## 
            # Name of the application.
            @display_name
            ## 
            # Identifier of the instance of the Software as a Service (SaaS) application.
            @instance_id
            ## 
            # Name of the instance of the SaaS application.
            @instance_name
            ## 
            # The identifier of the SaaS application.
            @saas_app_id
            ## 
            # The stream property
            @stream
            ## 
            ## Gets the appId property value. Unique identifier of the application.
            ## @return a int64
            ## 
            def app_id
                return @app_id
            end
            ## 
            ## Sets the appId property value. Unique identifier of the application.
            ## @param value Value to set for the appId property.
            ## @return a void
            ## 
            def app_id=(value)
                @app_id = value
            end
            ## 
            ## Instantiates a new SecurityCloudApplicationEvidence and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.security.cloudApplicationEvidence"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_cloud_application_evidence
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityCloudApplicationEvidence.new
            end
            ## 
            ## Gets the displayName property value. Name of the application.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Name of the application.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "appId" => lambda {|n| @app_id = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "instanceId" => lambda {|n| @instance_id = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "instanceName" => lambda {|n| @instance_name = n.get_string_value() },
                    "saasAppId" => lambda {|n| @saas_app_id = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "stream" => lambda {|n| @stream = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecurityStream.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the instanceId property value. Identifier of the instance of the Software as a Service (SaaS) application.
            ## @return a int64
            ## 
            def instance_id
                return @instance_id
            end
            ## 
            ## Sets the instanceId property value. Identifier of the instance of the Software as a Service (SaaS) application.
            ## @param value Value to set for the instanceId property.
            ## @return a void
            ## 
            def instance_id=(value)
                @instance_id = value
            end
            ## 
            ## Gets the instanceName property value. Name of the instance of the SaaS application.
            ## @return a string
            ## 
            def instance_name
                return @instance_name
            end
            ## 
            ## Sets the instanceName property value. Name of the instance of the SaaS application.
            ## @param value Value to set for the instanceName property.
            ## @return a void
            ## 
            def instance_name=(value)
                @instance_name = value
            end
            ## 
            ## Gets the saasAppId property value. The identifier of the SaaS application.
            ## @return a int64
            ## 
            def saas_app_id
                return @saas_app_id
            end
            ## 
            ## Sets the saasAppId property value. The identifier of the SaaS application.
            ## @param value Value to set for the saasAppId property.
            ## @return a void
            ## 
            def saas_app_id=(value)
                @saas_app_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("appId", @app_id)
                writer.write_string_value("displayName", @display_name)
                writer.write_object_value("instanceId", @instance_id)
                writer.write_string_value("instanceName", @instance_name)
                writer.write_object_value("saasAppId", @saas_app_id)
                writer.write_object_value("stream", @stream)
            end
            ## 
            ## Gets the stream property value. The stream property
            ## @return a security_stream
            ## 
            def stream
                return @stream
            end
            ## 
            ## Sets the stream property value. The stream property
            ## @param value Value to set for the stream property.
            ## @return a void
            ## 
            def stream=(value)
                @stream = value
            end
        end
    end
end

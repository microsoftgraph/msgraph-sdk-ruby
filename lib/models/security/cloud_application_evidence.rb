require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './security'

module MicrosoftGraph
    module Models
        module Security
            class CloudApplicationEvidence < MicrosoftGraph::Models::Security::AlertEvidence
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
                ## Gets the appId property value. Unique identifier of the application.
                ## @return a int64
                ## 
                def app_id
                    return @app_id
                end
                ## 
                ## Sets the appId property value. Unique identifier of the application.
                ## @param value Value to set for the app_id property.
                ## @return a void
                ## 
                def app_id=(value)
                    @app_id = value
                end
                ## 
                ## Instantiates a new CloudApplicationEvidence and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a cloud_application_evidence
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return CloudApplicationEvidence.new
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
                ## @param value Value to set for the display_name property.
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
                ## @param value Value to set for the instance_id property.
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
                ## @param value Value to set for the instance_name property.
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
                ## @param value Value to set for the saas_app_id property.
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
                end
            end
        end
    end
end

require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class CloudAppSecuritySessionControl < MicrosoftGraph::Models::ConditionalAccessSessionControl
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Possible values are: mcasConfigured, monitorOnly, blockDownloads, unknownFutureValue. For more information, see Deploy Conditional Access App Control for featured apps.
            @cloud_app_security_type
            ## 
            ## Gets the cloudAppSecurityType property value. Possible values are: mcasConfigured, monitorOnly, blockDownloads, unknownFutureValue. For more information, see Deploy Conditional Access App Control for featured apps.
            ## @return a cloud_app_security_session_control_type
            ## 
            def cloud_app_security_type
                return @cloud_app_security_type
            end
            ## 
            ## Sets the cloudAppSecurityType property value. Possible values are: mcasConfigured, monitorOnly, blockDownloads, unknownFutureValue. For more information, see Deploy Conditional Access App Control for featured apps.
            ## @param value Value to set for the cloud_app_security_type property.
            ## @return a void
            ## 
            def cloud_app_security_type=(value)
                @cloud_app_security_type = value
            end
            ## 
            ## Instantiates a new CloudAppSecuritySessionControl and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.cloudAppSecuritySessionControl"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a cloud_app_security_session_control
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CloudAppSecuritySessionControl.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "cloudAppSecurityType" => lambda {|n| @cloud_app_security_type = n.get_enum_value(MicrosoftGraph::Models::CloudAppSecuritySessionControlType) },
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
                writer.write_enum_value("cloudAppSecurityType", @cloud_app_security_type)
            end
        end
    end
end

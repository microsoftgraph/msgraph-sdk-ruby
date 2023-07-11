require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './security'

module MicrosoftGraph
    module Models
        module Security
            class Artifact < MicrosoftGraph::Models::Entity
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                ## Instantiates a new artifact and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a artifact
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    mapping_value_node = parse_node.get_child_node("@odata.type")
                    unless mapping_value_node.nil? then
                        mapping_value = mapping_value_node.get_string_value
                        case mapping_value
                            when "#microsoft.graph.security.host"
                                return Host.new
                            when "#microsoft.graph.security.hostComponent"
                                return HostComponent.new
                            when "#microsoft.graph.security.hostCookie"
                                return HostCookie.new
                            when "#microsoft.graph.security.hostname"
                                return Hostname.new
                            when "#microsoft.graph.security.hostTracker"
                                return HostTracker.new
                            when "#microsoft.graph.security.ipAddress"
                                return IpAddress.new
                            when "#microsoft.graph.security.passiveDnsRecord"
                                return PassiveDnsRecord.new
                            when "#microsoft.graph.security.unclassifiedArtifact"
                                return UnclassifiedArtifact.new
                        end
                    end
                    return Artifact.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
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
                end
            end
        end
    end
end

require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './security'

module MicrosoftGraph
    module Models
        module Security
            class RegistryKeyEvidence < MicrosoftGraph::Models::Security::AlertEvidence
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Registry hive of the key that the recorded action was applied to.
                @registry_hive
                ## 
                # Registry key that the recorded action was applied to.
                @registry_key
                ## 
                ## Instantiates a new RegistryKeyEvidence and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a registry_key_evidence
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return RegistryKeyEvidence.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "registryHive" => lambda {|n| @registry_hive = n.get_string_value() },
                        "registryKey" => lambda {|n| @registry_key = n.get_string_value() },
                    })
                end
                ## 
                ## Gets the registryHive property value. Registry hive of the key that the recorded action was applied to.
                ## @return a string
                ## 
                def registry_hive
                    return @registry_hive
                end
                ## 
                ## Sets the registryHive property value. Registry hive of the key that the recorded action was applied to.
                ## @param value Value to set for the registry_hive property.
                ## @return a void
                ## 
                def registry_hive=(value)
                    @registry_hive = value
                end
                ## 
                ## Gets the registryKey property value. Registry key that the recorded action was applied to.
                ## @return a string
                ## 
                def registry_key
                    return @registry_key
                end
                ## 
                ## Sets the registryKey property value. Registry key that the recorded action was applied to.
                ## @param value Value to set for the registry_key property.
                ## @return a void
                ## 
                def registry_key=(value)
                    @registry_key = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_string_value("registryHive", @registry_hive)
                    writer.write_string_value("registryKey", @registry_key)
                end
            end
        end
    end
end

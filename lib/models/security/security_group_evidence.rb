require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './security'

module MicrosoftGraph
    module Models
        module Security
            class SecurityGroupEvidence < MicrosoftGraph::Models::Security::AlertEvidence
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The name of the security group.
                @display_name
                ## 
                # Unique identifier of the security group.
                @security_group_id
                ## 
                ## Instantiates a new SecurityGroupEvidence and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a security_group_evidence
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return SecurityGroupEvidence.new
                end
                ## 
                ## Gets the displayName property value. The name of the security group.
                ## @return a string
                ## 
                def display_name
                    return @display_name
                end
                ## 
                ## Sets the displayName property value. The name of the security group.
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
                        "displayName" => lambda {|n| @display_name = n.get_string_value() },
                        "securityGroupId" => lambda {|n| @security_group_id = n.get_string_value() },
                    })
                end
                ## 
                ## Gets the securityGroupId property value. Unique identifier of the security group.
                ## @return a string
                ## 
                def security_group_id
                    return @security_group_id
                end
                ## 
                ## Sets the securityGroupId property value. Unique identifier of the security group.
                ## @param value Value to set for the security_group_id property.
                ## @return a void
                ## 
                def security_group_id=(value)
                    @security_group_id = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_string_value("displayName", @display_name)
                    writer.write_string_value("securityGroupId", @security_group_id)
                end
            end
        end
    end
end

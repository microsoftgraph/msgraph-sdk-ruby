require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class StsPolicy < MicrosoftGraph::Models::PolicyBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The appliesTo property
            @applies_to
            ## 
            # A string collection containing a JSON string that defines the rules and settings for a policy. The syntax for the definition differs for each derived policy type. Required.
            @definition
            ## 
            # If set to true, activates this policy. There can be many policies for the same policy type, but only one can be activated as the organization default. Optional, default value is false.
            @is_organization_default
            ## 
            ## Gets the appliesTo property value. The appliesTo property
            ## @return a directory_object
            ## 
            def applies_to
                return @applies_to
            end
            ## 
            ## Sets the appliesTo property value. The appliesTo property
            ## @param value Value to set for the applies_to property.
            ## @return a void
            ## 
            def applies_to=(value)
                @applies_to = value
            end
            ## 
            ## Instantiates a new StsPolicy and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.stsPolicy"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a sts_policy
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.activityBasedTimeoutPolicy"
                            return ActivityBasedTimeoutPolicy.new
                        when "#microsoft.graph.claimsMappingPolicy"
                            return ClaimsMappingPolicy.new
                        when "#microsoft.graph.homeRealmDiscoveryPolicy"
                            return HomeRealmDiscoveryPolicy.new
                        when "#microsoft.graph.tokenIssuancePolicy"
                            return TokenIssuancePolicy.new
                        when "#microsoft.graph.tokenLifetimePolicy"
                            return TokenLifetimePolicy.new
                    end
                end
                return StsPolicy.new
            end
            ## 
            ## Gets the definition property value. A string collection containing a JSON string that defines the rules and settings for a policy. The syntax for the definition differs for each derived policy type. Required.
            ## @return a string
            ## 
            def definition
                return @definition
            end
            ## 
            ## Sets the definition property value. A string collection containing a JSON string that defines the rules and settings for a policy. The syntax for the definition differs for each derived policy type. Required.
            ## @param value Value to set for the definition property.
            ## @return a void
            ## 
            def definition=(value)
                @definition = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "appliesTo" => lambda {|n| @applies_to = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                    "definition" => lambda {|n| @definition = n.get_collection_of_primitive_values(String) },
                    "isOrganizationDefault" => lambda {|n| @is_organization_default = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the isOrganizationDefault property value. If set to true, activates this policy. There can be many policies for the same policy type, but only one can be activated as the organization default. Optional, default value is false.
            ## @return a boolean
            ## 
            def is_organization_default
                return @is_organization_default
            end
            ## 
            ## Sets the isOrganizationDefault property value. If set to true, activates this policy. There can be many policies for the same policy type, but only one can be activated as the organization default. Optional, default value is false.
            ## @param value Value to set for the is_organization_default property.
            ## @return a void
            ## 
            def is_organization_default=(value)
                @is_organization_default = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("appliesTo", @applies_to)
                writer.write_collection_of_primitive_values("definition", @definition)
                writer.write_boolean_value("isOrganizationDefault", @is_organization_default)
            end
        end
    end
end

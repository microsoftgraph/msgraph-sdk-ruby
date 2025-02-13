require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class IdentityGovernanceGroupBasedSubjectSet < MicrosoftGraph::Models::SubjectSet
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The groups property
            @groups
            ## 
            ## Instantiates a new IdentityGovernanceGroupBasedSubjectSet and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.identityGovernance.groupBasedSubjectSet"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a identity_governance_group_based_subject_set
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IdentityGovernanceGroupBasedSubjectSet.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "groups" => lambda {|n| @groups = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Group.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the groups property value. The groups property
            ## @return a group
            ## 
            def groups
                return @groups
            end
            ## 
            ## Sets the groups property value. The groups property
            ## @param value Value to set for the groups property.
            ## @return a void
            ## 
            def groups=(value)
                @groups = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("groups", @groups)
            end
        end
    end
end

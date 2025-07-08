require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class UserDataSecurityAndGovernance < MicrosoftGraph::Models::DataSecurityAndGovernance
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Container for activity logs (content processing and audit) related to this user. ContainsTarget: true.
            @activities
            ## 
            # The protectionScopes property
            @protection_scopes
            ## 
            ## Gets the activities property value. Container for activity logs (content processing and audit) related to this user. ContainsTarget: true.
            ## @return a activities_container
            ## 
            def activities
                return @activities
            end
            ## 
            ## Sets the activities property value. Container for activity logs (content processing and audit) related to this user. ContainsTarget: true.
            ## @param value Value to set for the activities property.
            ## @return a void
            ## 
            def activities=(value)
                @activities = value
            end
            ## 
            ## Instantiates a new UserDataSecurityAndGovernance and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.userDataSecurityAndGovernance"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a user_data_security_and_governance
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserDataSecurityAndGovernance.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "activities" => lambda {|n| @activities = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ActivitiesContainer.create_from_discriminator_value(pn) }) },
                    "protectionScopes" => lambda {|n| @protection_scopes = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::UserProtectionScopeContainer.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the protectionScopes property value. The protectionScopes property
            ## @return a user_protection_scope_container
            ## 
            def protection_scopes
                return @protection_scopes
            end
            ## 
            ## Sets the protectionScopes property value. The protectionScopes property
            ## @param value Value to set for the protectionScopes property.
            ## @return a void
            ## 
            def protection_scopes=(value)
                @protection_scopes = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("activities", @activities)
                writer.write_object_value("protectionScopes", @protection_scopes)
            end
        end
    end
end

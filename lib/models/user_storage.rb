require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class UserStorage < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The quota property
            @quota
            ## 
            ## Instantiates a new UserStorage and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a user_storage
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserStorage.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "quota" => lambda {|n| @quota = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::UnifiedStorageQuota.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the quota property value. The quota property
            ## @return a unified_storage_quota
            ## 
            def quota
                return @quota
            end
            ## 
            ## Sets the quota property value. The quota property
            ## @param value Value to set for the quota property.
            ## @return a void
            ## 
            def quota=(value)
                @quota = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("quota", @quota)
            end
        end
    end
end

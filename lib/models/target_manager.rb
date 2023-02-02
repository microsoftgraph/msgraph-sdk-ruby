require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph::Models
    class TargetManager < MicrosoftGraph::Models::SubjectSet
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Manager level, between 1 and 4. The direct manager is 1.
        @manager_level
        ## 
        ## Instantiates a new TargetManager and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.targetManager"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a target_manager
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return TargetManager.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "managerLevel" => lambda {|n| @manager_level = n.get_number_value() },
            })
        end
        ## 
        ## Gets the managerLevel property value. Manager level, between 1 and 4. The direct manager is 1.
        ## @return a integer
        ## 
        def manager_level
            return @manager_level
        end
        ## 
        ## Sets the managerLevel property value. Manager level, between 1 and 4. The direct manager is 1.
        ## @param value Value to set for the manager_level property.
        ## @return a void
        ## 
        def manager_level=(value)
            @manager_level = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_number_value("managerLevel", @manager_level)
        end
    end
end

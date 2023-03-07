require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AppManagementPolicy < MicrosoftGraph::Models::PolicyBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The appliesTo property
            @applies_to
            ## 
            # The isEnabled property
            @is_enabled
            ## 
            # The restrictions property
            @restrictions
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
            ## Instantiates a new AppManagementPolicy and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.appManagementPolicy"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a app_management_policy
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AppManagementPolicy.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "appliesTo" => lambda {|n| @applies_to = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                    "isEnabled" => lambda {|n| @is_enabled = n.get_boolean_value() },
                    "restrictions" => lambda {|n| @restrictions = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AppManagementConfiguration.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the isEnabled property value. The isEnabled property
            ## @return a boolean
            ## 
            def is_enabled
                return @is_enabled
            end
            ## 
            ## Sets the isEnabled property value. The isEnabled property
            ## @param value Value to set for the is_enabled property.
            ## @return a void
            ## 
            def is_enabled=(value)
                @is_enabled = value
            end
            ## 
            ## Gets the restrictions property value. The restrictions property
            ## @return a app_management_configuration
            ## 
            def restrictions
                return @restrictions
            end
            ## 
            ## Sets the restrictions property value. The restrictions property
            ## @param value Value to set for the restrictions property.
            ## @return a void
            ## 
            def restrictions=(value)
                @restrictions = value
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
                writer.write_boolean_value("isEnabled", @is_enabled)
                writer.write_object_value("restrictions", @restrictions)
            end
        end
    end
end

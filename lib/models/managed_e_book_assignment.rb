require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # Contains properties used to assign a eBook to a group.
        class ManagedEBookAssignment < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Possible values for the install intent chosen by the admin.
            @install_intent
            ## 
            # The assignment target for eBook.
            @target
            ## 
            ## Instantiates a new managedEBookAssignment and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a managed_e_book_assignment
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.iosVppEBookAssignment"
                            return IosVppEBookAssignment.new
                    end
                end
                return ManagedEBookAssignment.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "installIntent" => lambda {|n| @install_intent = n.get_enum_value(MicrosoftGraph::Models::InstallIntent) },
                    "target" => lambda {|n| @target = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DeviceAndAppManagementAssignmentTarget.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the installIntent property value. Possible values for the install intent chosen by the admin.
            ## @return a install_intent
            ## 
            def install_intent
                return @install_intent
            end
            ## 
            ## Sets the installIntent property value. Possible values for the install intent chosen by the admin.
            ## @param value Value to set for the install_intent property.
            ## @return a void
            ## 
            def install_intent=(value)
                @install_intent = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("installIntent", @install_intent)
                writer.write_object_value("target", @target)
            end
            ## 
            ## Gets the target property value. The assignment target for eBook.
            ## @return a device_and_app_management_assignment_target
            ## 
            def target
                return @target
            end
            ## 
            ## Sets the target property value. The assignment target for eBook.
            ## @param value Value to set for the target property.
            ## @return a void
            ## 
            def target=(value)
                @target = value
            end
        end
    end
end

require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SynchronizationLinkedObjects
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The manager property
            @manager
            ## 
            # All group members that you would like to provision.
            @members
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The owners property
            @owners
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new SynchronizationLinkedObjects and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a synchronization_linked_objects
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SynchronizationLinkedObjects.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "manager" => lambda {|n| @manager = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SynchronizationJobSubject.create_from_discriminator_value(pn) }) },
                    "members" => lambda {|n| @members = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SynchronizationJobSubject.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "owners" => lambda {|n| @owners = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SynchronizationJobSubject.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the manager property value. The manager property
            ## @return a synchronization_job_subject
            ## 
            def manager
                return @manager
            end
            ## 
            ## Sets the manager property value. The manager property
            ## @param value Value to set for the manager property.
            ## @return a void
            ## 
            def manager=(value)
                @manager = value
            end
            ## 
            ## Gets the members property value. All group members that you would like to provision.
            ## @return a synchronization_job_subject
            ## 
            def members
                return @members
            end
            ## 
            ## Sets the members property value. All group members that you would like to provision.
            ## @param value Value to set for the members property.
            ## @return a void
            ## 
            def members=(value)
                @members = value
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the owners property value. The owners property
            ## @return a synchronization_job_subject
            ## 
            def owners
                return @owners
            end
            ## 
            ## Sets the owners property value. The owners property
            ## @param value Value to set for the owners property.
            ## @return a void
            ## 
            def owners=(value)
                @owners = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("manager", @manager)
                writer.write_collection_of_object_values("members", @members)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_collection_of_object_values("owners", @owners)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end

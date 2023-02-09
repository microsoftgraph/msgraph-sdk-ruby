require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class EducationAssignmentIndividualRecipient < MicrosoftGraph::Models::EducationAssignmentRecipient
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # A collection of IDs of the recipients.
            @recipients
            ## 
            ## Instantiates a new EducationAssignmentIndividualRecipient and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.educationAssignmentIndividualRecipient"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a education_assignment_individual_recipient
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EducationAssignmentIndividualRecipient.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "recipients" => lambda {|n| @recipients = n.get_collection_of_primitive_values(String) },
                })
            end
            ## 
            ## Gets the recipients property value. A collection of IDs of the recipients.
            ## @return a string
            ## 
            def recipients
                return @recipients
            end
            ## 
            ## Sets the recipients property value. A collection of IDs of the recipients.
            ## @param value Value to set for the recipients property.
            ## @return a void
            ## 
            def recipients=(value)
                @recipients = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_primitive_values("recipients", @recipients)
            end
        end
    end
end

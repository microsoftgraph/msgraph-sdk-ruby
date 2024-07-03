require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SecurityLabelsRoot < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Specifies the underlying authority that describes the type of content to be retained and its retention schedule.
            @authorities
            ## 
            # Specifies a group of similar types of content in a particular department.
            @categories
            ## 
            # The specific rule or regulation created by a jurisdiction used to determine whether certain labels and content should be retained or deleted.
            @citations
            ## 
            # Specifies the department or business unit of an organization to which a label belongs.
            @departments
            ## 
            # Specifies a unique alpha-numeric identifier for an organization’s retention schedule.
            @file_plan_references
            ## 
            # Represents how customers can manage their data, whether and for how long to retain or delete it.
            @retention_labels
            ## 
            ## Gets the authorities property value. Specifies the underlying authority that describes the type of content to be retained and its retention schedule.
            ## @return a security_authority_template
            ## 
            def authorities
                return @authorities
            end
            ## 
            ## Sets the authorities property value. Specifies the underlying authority that describes the type of content to be retained and its retention schedule.
            ## @param value Value to set for the authorities property.
            ## @return a void
            ## 
            def authorities=(value)
                @authorities = value
            end
            ## 
            ## Gets the categories property value. Specifies a group of similar types of content in a particular department.
            ## @return a security_category_template
            ## 
            def categories
                return @categories
            end
            ## 
            ## Sets the categories property value. Specifies a group of similar types of content in a particular department.
            ## @param value Value to set for the categories property.
            ## @return a void
            ## 
            def categories=(value)
                @categories = value
            end
            ## 
            ## Gets the citations property value. The specific rule or regulation created by a jurisdiction used to determine whether certain labels and content should be retained or deleted.
            ## @return a security_citation_template
            ## 
            def citations
                return @citations
            end
            ## 
            ## Sets the citations property value. The specific rule or regulation created by a jurisdiction used to determine whether certain labels and content should be retained or deleted.
            ## @param value Value to set for the citations property.
            ## @return a void
            ## 
            def citations=(value)
                @citations = value
            end
            ## 
            ## Instantiates a new SecurityLabelsRoot and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_labels_root
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityLabelsRoot.new
            end
            ## 
            ## Gets the departments property value. Specifies the department or business unit of an organization to which a label belongs.
            ## @return a security_department_template
            ## 
            def departments
                return @departments
            end
            ## 
            ## Sets the departments property value. Specifies the department or business unit of an organization to which a label belongs.
            ## @param value Value to set for the departments property.
            ## @return a void
            ## 
            def departments=(value)
                @departments = value
            end
            ## 
            ## Gets the filePlanReferences property value. Specifies a unique alpha-numeric identifier for an organization’s retention schedule.
            ## @return a security_file_plan_reference_template
            ## 
            def file_plan_references
                return @file_plan_references
            end
            ## 
            ## Sets the filePlanReferences property value. Specifies a unique alpha-numeric identifier for an organization’s retention schedule.
            ## @param value Value to set for the filePlanReferences property.
            ## @return a void
            ## 
            def file_plan_references=(value)
                @file_plan_references = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "authorities" => lambda {|n| @authorities = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SecurityAuthorityTemplate.create_from_discriminator_value(pn) }) },
                    "categories" => lambda {|n| @categories = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SecurityCategoryTemplate.create_from_discriminator_value(pn) }) },
                    "citations" => lambda {|n| @citations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SecurityCitationTemplate.create_from_discriminator_value(pn) }) },
                    "departments" => lambda {|n| @departments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SecurityDepartmentTemplate.create_from_discriminator_value(pn) }) },
                    "filePlanReferences" => lambda {|n| @file_plan_references = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SecurityFilePlanReferenceTemplate.create_from_discriminator_value(pn) }) },
                    "retentionLabels" => lambda {|n| @retention_labels = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SecurityRetentionLabel.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the retentionLabels property value. Represents how customers can manage their data, whether and for how long to retain or delete it.
            ## @return a security_retention_label
            ## 
            def retention_labels
                return @retention_labels
            end
            ## 
            ## Sets the retentionLabels property value. Represents how customers can manage their data, whether and for how long to retain or delete it.
            ## @param value Value to set for the retentionLabels property.
            ## @return a void
            ## 
            def retention_labels=(value)
                @retention_labels = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("authorities", @authorities)
                writer.write_collection_of_object_values("categories", @categories)
                writer.write_collection_of_object_values("citations", @citations)
                writer.write_collection_of_object_values("departments", @departments)
                writer.write_collection_of_object_values("filePlanReferences", @file_plan_references)
                writer.write_collection_of_object_values("retentionLabels", @retention_labels)
            end
        end
    end
end

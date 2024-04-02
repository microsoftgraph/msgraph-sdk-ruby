require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SecurityFilePlanDescriptor < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The authority property
            @authority
            ## 
            # The authorityTemplate property
            @authority_template
            ## 
            # The category property
            @category
            ## 
            # The categoryTemplate property
            @category_template
            ## 
            # The citation property
            @citation
            ## 
            # The citationTemplate property
            @citation_template
            ## 
            # The department property
            @department
            ## 
            # The departmentTemplate property
            @department_template
            ## 
            # The filePlanReference property
            @file_plan_reference
            ## 
            # The filePlanReferenceTemplate property
            @file_plan_reference_template
            ## 
            ## Gets the authority property value. The authority property
            ## @return a security_file_plan_authority
            ## 
            def authority
                return @authority
            end
            ## 
            ## Sets the authority property value. The authority property
            ## @param value Value to set for the authority property.
            ## @return a void
            ## 
            def authority=(value)
                @authority = value
            end
            ## 
            ## Gets the authorityTemplate property value. The authorityTemplate property
            ## @return a security_authority_template
            ## 
            def authority_template
                return @authority_template
            end
            ## 
            ## Sets the authorityTemplate property value. The authorityTemplate property
            ## @param value Value to set for the authorityTemplate property.
            ## @return a void
            ## 
            def authority_template=(value)
                @authority_template = value
            end
            ## 
            ## Gets the category property value. The category property
            ## @return a security_file_plan_applied_category
            ## 
            def category
                return @category
            end
            ## 
            ## Sets the category property value. The category property
            ## @param value Value to set for the category property.
            ## @return a void
            ## 
            def category=(value)
                @category = value
            end
            ## 
            ## Gets the categoryTemplate property value. The categoryTemplate property
            ## @return a security_category_template
            ## 
            def category_template
                return @category_template
            end
            ## 
            ## Sets the categoryTemplate property value. The categoryTemplate property
            ## @param value Value to set for the categoryTemplate property.
            ## @return a void
            ## 
            def category_template=(value)
                @category_template = value
            end
            ## 
            ## Gets the citation property value. The citation property
            ## @return a security_file_plan_citation
            ## 
            def citation
                return @citation
            end
            ## 
            ## Sets the citation property value. The citation property
            ## @param value Value to set for the citation property.
            ## @return a void
            ## 
            def citation=(value)
                @citation = value
            end
            ## 
            ## Gets the citationTemplate property value. The citationTemplate property
            ## @return a security_citation_template
            ## 
            def citation_template
                return @citation_template
            end
            ## 
            ## Sets the citationTemplate property value. The citationTemplate property
            ## @param value Value to set for the citationTemplate property.
            ## @return a void
            ## 
            def citation_template=(value)
                @citation_template = value
            end
            ## 
            ## Instantiates a new SecurityFilePlanDescriptor and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_file_plan_descriptor
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityFilePlanDescriptor.new
            end
            ## 
            ## Gets the department property value. The department property
            ## @return a security_file_plan_department
            ## 
            def department
                return @department
            end
            ## 
            ## Sets the department property value. The department property
            ## @param value Value to set for the department property.
            ## @return a void
            ## 
            def department=(value)
                @department = value
            end
            ## 
            ## Gets the departmentTemplate property value. The departmentTemplate property
            ## @return a security_department_template
            ## 
            def department_template
                return @department_template
            end
            ## 
            ## Sets the departmentTemplate property value. The departmentTemplate property
            ## @param value Value to set for the departmentTemplate property.
            ## @return a void
            ## 
            def department_template=(value)
                @department_template = value
            end
            ## 
            ## Gets the filePlanReference property value. The filePlanReference property
            ## @return a security_file_plan_reference
            ## 
            def file_plan_reference
                return @file_plan_reference
            end
            ## 
            ## Sets the filePlanReference property value. The filePlanReference property
            ## @param value Value to set for the filePlanReference property.
            ## @return a void
            ## 
            def file_plan_reference=(value)
                @file_plan_reference = value
            end
            ## 
            ## Gets the filePlanReferenceTemplate property value. The filePlanReferenceTemplate property
            ## @return a security_file_plan_reference_template
            ## 
            def file_plan_reference_template
                return @file_plan_reference_template
            end
            ## 
            ## Sets the filePlanReferenceTemplate property value. The filePlanReferenceTemplate property
            ## @param value Value to set for the filePlanReferenceTemplate property.
            ## @return a void
            ## 
            def file_plan_reference_template=(value)
                @file_plan_reference_template = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "authority" => lambda {|n| @authority = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecurityFilePlanAuthority.create_from_discriminator_value(pn) }) },
                    "authorityTemplate" => lambda {|n| @authority_template = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecurityAuthorityTemplate.create_from_discriminator_value(pn) }) },
                    "category" => lambda {|n| @category = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecurityFilePlanAppliedCategory.create_from_discriminator_value(pn) }) },
                    "categoryTemplate" => lambda {|n| @category_template = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecurityCategoryTemplate.create_from_discriminator_value(pn) }) },
                    "citation" => lambda {|n| @citation = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecurityFilePlanCitation.create_from_discriminator_value(pn) }) },
                    "citationTemplate" => lambda {|n| @citation_template = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecurityCitationTemplate.create_from_discriminator_value(pn) }) },
                    "department" => lambda {|n| @department = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecurityFilePlanDepartment.create_from_discriminator_value(pn) }) },
                    "departmentTemplate" => lambda {|n| @department_template = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecurityDepartmentTemplate.create_from_discriminator_value(pn) }) },
                    "filePlanReference" => lambda {|n| @file_plan_reference = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecurityFilePlanReference.create_from_discriminator_value(pn) }) },
                    "filePlanReferenceTemplate" => lambda {|n| @file_plan_reference_template = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecurityFilePlanReferenceTemplate.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("authority", @authority)
                writer.write_object_value("authorityTemplate", @authority_template)
                writer.write_object_value("category", @category)
                writer.write_object_value("categoryTemplate", @category_template)
                writer.write_object_value("citation", @citation)
                writer.write_object_value("citationTemplate", @citation_template)
                writer.write_object_value("department", @department)
                writer.write_object_value("departmentTemplate", @department_template)
                writer.write_object_value("filePlanReference", @file_plan_reference)
                writer.write_object_value("filePlanReferenceTemplate", @file_plan_reference_template)
            end
        end
    end
end

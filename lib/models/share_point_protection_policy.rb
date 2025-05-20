require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SharePointProtectionPolicy < MicrosoftGraph::Models::ProtectionPolicyBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The rules associated with the SharePoint Protection policy.
            @site_inclusion_rules
            ## 
            # The protection units (sites) that are protected under the site protection policy.
            @site_protection_units
            ## 
            # The siteProtectionUnitsBulkAdditionJobs property
            @site_protection_units_bulk_addition_jobs
            ## 
            ## Instantiates a new SharePointProtectionPolicy and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.sharePointProtectionPolicy"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a share_point_protection_policy
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SharePointProtectionPolicy.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "siteInclusionRules" => lambda {|n| @site_inclusion_rules = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SiteProtectionRule.create_from_discriminator_value(pn) }) },
                    "siteProtectionUnits" => lambda {|n| @site_protection_units = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SiteProtectionUnit.create_from_discriminator_value(pn) }) },
                    "siteProtectionUnitsBulkAdditionJobs" => lambda {|n| @site_protection_units_bulk_addition_jobs = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SiteProtectionUnitsBulkAdditionJob.create_from_discriminator_value(pn) }) },
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
                writer.write_collection_of_object_values("siteInclusionRules", @site_inclusion_rules)
                writer.write_collection_of_object_values("siteProtectionUnits", @site_protection_units)
                writer.write_collection_of_object_values("siteProtectionUnitsBulkAdditionJobs", @site_protection_units_bulk_addition_jobs)
            end
            ## 
            ## Gets the siteInclusionRules property value. The rules associated with the SharePoint Protection policy.
            ## @return a site_protection_rule
            ## 
            def site_inclusion_rules
                return @site_inclusion_rules
            end
            ## 
            ## Sets the siteInclusionRules property value. The rules associated with the SharePoint Protection policy.
            ## @param value Value to set for the siteInclusionRules property.
            ## @return a void
            ## 
            def site_inclusion_rules=(value)
                @site_inclusion_rules = value
            end
            ## 
            ## Gets the siteProtectionUnits property value. The protection units (sites) that are protected under the site protection policy.
            ## @return a site_protection_unit
            ## 
            def site_protection_units
                return @site_protection_units
            end
            ## 
            ## Sets the siteProtectionUnits property value. The protection units (sites) that are protected under the site protection policy.
            ## @param value Value to set for the siteProtectionUnits property.
            ## @return a void
            ## 
            def site_protection_units=(value)
                @site_protection_units = value
            end
            ## 
            ## Gets the siteProtectionUnitsBulkAdditionJobs property value. The siteProtectionUnitsBulkAdditionJobs property
            ## @return a site_protection_units_bulk_addition_job
            ## 
            def site_protection_units_bulk_addition_jobs
                return @site_protection_units_bulk_addition_jobs
            end
            ## 
            ## Sets the siteProtectionUnitsBulkAdditionJobs property value. The siteProtectionUnitsBulkAdditionJobs property
            ## @param value Value to set for the siteProtectionUnitsBulkAdditionJobs property.
            ## @return a void
            ## 
            def site_protection_units_bulk_addition_jobs=(value)
                @site_protection_units_bulk_addition_jobs = value
            end
        end
    end
end

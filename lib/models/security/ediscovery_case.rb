require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './security'

module MicrosoftGraph
    module Models
        module Security
            class EdiscoveryCase < MicrosoftGraph::Models::Security::Case_escaped
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The user who closed the case.
                @closed_by
                ## 
                # The date and time when the case was closed. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
                @closed_date_time
                ## 
                # Returns a list of case ediscoveryCustodian objects for this case.
                @custodians
                ## 
                # The external case number for customer reference.
                @external_id
                ## 
                # Returns a list of case ediscoveryNoncustodialDataSource objects for this case.
                @noncustodial_data_sources
                ## 
                # Returns a list of case caseOperation objects for this case.
                @operations
                ## 
                # Returns a list of eDiscoveryReviewSet objects in the case.
                @review_sets
                ## 
                # Returns a list of eDiscoverySearch objects associated with this case.
                @searches
                ## 
                # Returns a list of eDIscoverySettings objects in the case.
                @settings
                ## 
                # Returns a list of ediscoveryReviewTag objects associated to this case.
                @tags
                ## 
                ## Gets the closedBy property value. The user who closed the case.
                ## @return a identity_set
                ## 
                def closed_by
                    return @closed_by
                end
                ## 
                ## Sets the closedBy property value. The user who closed the case.
                ## @param value Value to set for the closed_by property.
                ## @return a void
                ## 
                def closed_by=(value)
                    @closed_by = value
                end
                ## 
                ## Gets the closedDateTime property value. The date and time when the case was closed. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
                ## @return a date_time
                ## 
                def closed_date_time
                    return @closed_date_time
                end
                ## 
                ## Sets the closedDateTime property value. The date and time when the case was closed. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
                ## @param value Value to set for the closed_date_time property.
                ## @return a void
                ## 
                def closed_date_time=(value)
                    @closed_date_time = value
                end
                ## 
                ## Instantiates a new EdiscoveryCase and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                    @odata_type = "#microsoft.graph.security.ediscoveryCase"
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a ediscovery_case
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return EdiscoveryCase.new
                end
                ## 
                ## Gets the custodians property value. Returns a list of case ediscoveryCustodian objects for this case.
                ## @return a ediscovery_custodian
                ## 
                def custodians
                    return @custodians
                end
                ## 
                ## Sets the custodians property value. Returns a list of case ediscoveryCustodian objects for this case.
                ## @param value Value to set for the custodians property.
                ## @return a void
                ## 
                def custodians=(value)
                    @custodians = value
                end
                ## 
                ## Gets the externalId property value. The external case number for customer reference.
                ## @return a string
                ## 
                def external_id
                    return @external_id
                end
                ## 
                ## Sets the externalId property value. The external case number for customer reference.
                ## @param value Value to set for the external_id property.
                ## @return a void
                ## 
                def external_id=(value)
                    @external_id = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "closedBy" => lambda {|n| @closed_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                        "closedDateTime" => lambda {|n| @closed_date_time = n.get_date_time_value() },
                        "custodians" => lambda {|n| @custodians = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Security::EdiscoveryCustodian.create_from_discriminator_value(pn) }) },
                        "externalId" => lambda {|n| @external_id = n.get_string_value() },
                        "noncustodialDataSources" => lambda {|n| @noncustodial_data_sources = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Security::EdiscoveryNoncustodialDataSource.create_from_discriminator_value(pn) }) },
                        "operations" => lambda {|n| @operations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Security::CaseOperation.create_from_discriminator_value(pn) }) },
                        "reviewSets" => lambda {|n| @review_sets = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Security::EdiscoveryReviewSet.create_from_discriminator_value(pn) }) },
                        "searches" => lambda {|n| @searches = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Security::EdiscoverySearch.create_from_discriminator_value(pn) }) },
                        "settings" => lambda {|n| @settings = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Security::EdiscoveryCaseSettings.create_from_discriminator_value(pn) }) },
                        "tags" => lambda {|n| @tags = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Security::EdiscoveryReviewTag.create_from_discriminator_value(pn) }) },
                    })
                end
                ## 
                ## Gets the noncustodialDataSources property value. Returns a list of case ediscoveryNoncustodialDataSource objects for this case.
                ## @return a ediscovery_noncustodial_data_source
                ## 
                def noncustodial_data_sources
                    return @noncustodial_data_sources
                end
                ## 
                ## Sets the noncustodialDataSources property value. Returns a list of case ediscoveryNoncustodialDataSource objects for this case.
                ## @param value Value to set for the noncustodial_data_sources property.
                ## @return a void
                ## 
                def noncustodial_data_sources=(value)
                    @noncustodial_data_sources = value
                end
                ## 
                ## Gets the operations property value. Returns a list of case caseOperation objects for this case.
                ## @return a case_operation
                ## 
                def operations
                    return @operations
                end
                ## 
                ## Sets the operations property value. Returns a list of case caseOperation objects for this case.
                ## @param value Value to set for the operations property.
                ## @return a void
                ## 
                def operations=(value)
                    @operations = value
                end
                ## 
                ## Gets the reviewSets property value. Returns a list of eDiscoveryReviewSet objects in the case.
                ## @return a ediscovery_review_set
                ## 
                def review_sets
                    return @review_sets
                end
                ## 
                ## Sets the reviewSets property value. Returns a list of eDiscoveryReviewSet objects in the case.
                ## @param value Value to set for the review_sets property.
                ## @return a void
                ## 
                def review_sets=(value)
                    @review_sets = value
                end
                ## 
                ## Gets the searches property value. Returns a list of eDiscoverySearch objects associated with this case.
                ## @return a ediscovery_search
                ## 
                def searches
                    return @searches
                end
                ## 
                ## Sets the searches property value. Returns a list of eDiscoverySearch objects associated with this case.
                ## @param value Value to set for the searches property.
                ## @return a void
                ## 
                def searches=(value)
                    @searches = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_object_value("closedBy", @closed_by)
                    writer.write_date_time_value("closedDateTime", @closed_date_time)
                    writer.write_collection_of_object_values("custodians", @custodians)
                    writer.write_string_value("externalId", @external_id)
                    writer.write_collection_of_object_values("noncustodialDataSources", @noncustodial_data_sources)
                    writer.write_collection_of_object_values("operations", @operations)
                    writer.write_collection_of_object_values("reviewSets", @review_sets)
                    writer.write_collection_of_object_values("searches", @searches)
                    writer.write_object_value("settings", @settings)
                    writer.write_collection_of_object_values("tags", @tags)
                end
                ## 
                ## Gets the settings property value. Returns a list of eDIscoverySettings objects in the case.
                ## @return a ediscovery_case_settings
                ## 
                def settings
                    return @settings
                end
                ## 
                ## Sets the settings property value. Returns a list of eDIscoverySettings objects in the case.
                ## @param value Value to set for the settings property.
                ## @return a void
                ## 
                def settings=(value)
                    @settings = value
                end
                ## 
                ## Gets the tags property value. Returns a list of ediscoveryReviewTag objects associated to this case.
                ## @return a ediscovery_review_tag
                ## 
                def tags
                    return @tags
                end
                ## 
                ## Sets the tags property value. Returns a list of ediscoveryReviewTag objects associated to this case.
                ## @param value Value to set for the tags property.
                ## @return a void
                ## 
                def tags=(value)
                    @tags = value
                end
            end
        end
    end
end

require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './security'

module MicrosoftGraph
    module Models
        module Security
            class EdiscoverySearch < MicrosoftGraph::Models::Security::Search
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Adds the results of the eDiscovery search to the specified reviewSet.
                @add_to_review_set_operation
                ## 
                # Adds an additional source to the eDiscovery search.
                @additional_sources
                ## 
                # Custodian sources that are included in the eDiscovery search.
                @custodian_sources
                ## 
                # When specified, the collection will span across a service for an entire workload. Possible values are: none, allTenantMailboxes, allTenantSites, allCaseCustodians, allCaseNoncustodialDataSources.
                @data_source_scopes
                ## 
                # The last estimate operation associated with the eDiscovery search.
                @last_estimate_statistics_operation
                ## 
                # noncustodialDataSource sources that are included in the eDiscovery search
                @noncustodial_sources
                ## 
                ## Gets the addToReviewSetOperation property value. Adds the results of the eDiscovery search to the specified reviewSet.
                ## @return a ediscovery_add_to_review_set_operation
                ## 
                def add_to_review_set_operation
                    return @add_to_review_set_operation
                end
                ## 
                ## Sets the addToReviewSetOperation property value. Adds the results of the eDiscovery search to the specified reviewSet.
                ## @param value Value to set for the add_to_review_set_operation property.
                ## @return a void
                ## 
                def add_to_review_set_operation=(value)
                    @add_to_review_set_operation = value
                end
                ## 
                ## Gets the additionalSources property value. Adds an additional source to the eDiscovery search.
                ## @return a data_source
                ## 
                def additional_sources
                    return @additional_sources
                end
                ## 
                ## Sets the additionalSources property value. Adds an additional source to the eDiscovery search.
                ## @param value Value to set for the additional_sources property.
                ## @return a void
                ## 
                def additional_sources=(value)
                    @additional_sources = value
                end
                ## 
                ## Instantiates a new EdiscoverySearch and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                    @odata_type = "#microsoft.graph.security.ediscoverySearch"
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a ediscovery_search
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return EdiscoverySearch.new
                end
                ## 
                ## Gets the custodianSources property value. Custodian sources that are included in the eDiscovery search.
                ## @return a data_source
                ## 
                def custodian_sources
                    return @custodian_sources
                end
                ## 
                ## Sets the custodianSources property value. Custodian sources that are included in the eDiscovery search.
                ## @param value Value to set for the custodian_sources property.
                ## @return a void
                ## 
                def custodian_sources=(value)
                    @custodian_sources = value
                end
                ## 
                ## Gets the dataSourceScopes property value. When specified, the collection will span across a service for an entire workload. Possible values are: none, allTenantMailboxes, allTenantSites, allCaseCustodians, allCaseNoncustodialDataSources.
                ## @return a data_source_scopes
                ## 
                def data_source_scopes
                    return @data_source_scopes
                end
                ## 
                ## Sets the dataSourceScopes property value. When specified, the collection will span across a service for an entire workload. Possible values are: none, allTenantMailboxes, allTenantSites, allCaseCustodians, allCaseNoncustodialDataSources.
                ## @param value Value to set for the data_source_scopes property.
                ## @return a void
                ## 
                def data_source_scopes=(value)
                    @data_source_scopes = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "addToReviewSetOperation" => lambda {|n| @add_to_review_set_operation = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Security::EdiscoveryAddToReviewSetOperation.create_from_discriminator_value(pn) }) },
                        "additionalSources" => lambda {|n| @additional_sources = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Security::DataSource.create_from_discriminator_value(pn) }) },
                        "custodianSources" => lambda {|n| @custodian_sources = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Security::DataSource.create_from_discriminator_value(pn) }) },
                        "dataSourceScopes" => lambda {|n| @data_source_scopes = n.get_enum_value(MicrosoftGraph::Models::Security::DataSourceScopes) },
                        "lastEstimateStatisticsOperation" => lambda {|n| @last_estimate_statistics_operation = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Security::EdiscoveryEstimateOperation.create_from_discriminator_value(pn) }) },
                        "noncustodialSources" => lambda {|n| @noncustodial_sources = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Security::EdiscoveryNoncustodialDataSource.create_from_discriminator_value(pn) }) },
                    })
                end
                ## 
                ## Gets the lastEstimateStatisticsOperation property value. The last estimate operation associated with the eDiscovery search.
                ## @return a ediscovery_estimate_operation
                ## 
                def last_estimate_statistics_operation
                    return @last_estimate_statistics_operation
                end
                ## 
                ## Sets the lastEstimateStatisticsOperation property value. The last estimate operation associated with the eDiscovery search.
                ## @param value Value to set for the last_estimate_statistics_operation property.
                ## @return a void
                ## 
                def last_estimate_statistics_operation=(value)
                    @last_estimate_statistics_operation = value
                end
                ## 
                ## Gets the noncustodialSources property value. noncustodialDataSource sources that are included in the eDiscovery search
                ## @return a ediscovery_noncustodial_data_source
                ## 
                def noncustodial_sources
                    return @noncustodial_sources
                end
                ## 
                ## Sets the noncustodialSources property value. noncustodialDataSource sources that are included in the eDiscovery search
                ## @param value Value to set for the noncustodial_sources property.
                ## @return a void
                ## 
                def noncustodial_sources=(value)
                    @noncustodial_sources = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_object_value("addToReviewSetOperation", @add_to_review_set_operation)
                    writer.write_collection_of_object_values("additionalSources", @additional_sources)
                    writer.write_collection_of_object_values("custodianSources", @custodian_sources)
                    writer.write_enum_value("dataSourceScopes", @data_source_scopes)
                    writer.write_object_value("lastEstimateStatisticsOperation", @last_estimate_statistics_operation)
                    writer.write_collection_of_object_values("noncustodialSources", @noncustodial_sources)
                end
            end
        end
    end
end

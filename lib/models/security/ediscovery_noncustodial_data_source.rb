require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './security'

module MicrosoftGraph
    module Models
        module Security
            class EdiscoveryNoncustodialDataSource < MicrosoftGraph::Models::Security::DataSourceContainer
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # User source or SharePoint site data source as non-custodial data source.
                @data_source
                ## 
                # Operation entity that represents the latest indexing for the non-custodial data source.
                @last_index_operation
                ## 
                ## Instantiates a new EdiscoveryNoncustodialDataSource and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                    @odata_type = "#microsoft.graph.security.ediscoveryNoncustodialDataSource"
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a ediscovery_noncustodial_data_source
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return EdiscoveryNoncustodialDataSource.new
                end
                ## 
                ## Gets the dataSource property value. User source or SharePoint site data source as non-custodial data source.
                ## @return a data_source
                ## 
                def data_source
                    return @data_source
                end
                ## 
                ## Sets the dataSource property value. User source or SharePoint site data source as non-custodial data source.
                ## @param value Value to set for the data_source property.
                ## @return a void
                ## 
                def data_source=(value)
                    @data_source = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "dataSource" => lambda {|n| @data_source = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Security::DataSource.create_from_discriminator_value(pn) }) },
                        "lastIndexOperation" => lambda {|n| @last_index_operation = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Security::EdiscoveryIndexOperation.create_from_discriminator_value(pn) }) },
                    })
                end
                ## 
                ## Gets the lastIndexOperation property value. Operation entity that represents the latest indexing for the non-custodial data source.
                ## @return a ediscovery_index_operation
                ## 
                def last_index_operation
                    return @last_index_operation
                end
                ## 
                ## Sets the lastIndexOperation property value. Operation entity that represents the latest indexing for the non-custodial data source.
                ## @param value Value to set for the last_index_operation property.
                ## @return a void
                ## 
                def last_index_operation=(value)
                    @last_index_operation = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_object_value("dataSource", @data_source)
                    writer.write_object_value("lastIndexOperation", @last_index_operation)
                end
            end
        end
    end
end

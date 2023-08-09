require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './call_records/call_records'
require_relative './models'

module MicrosoftGraph
    module Models
        class CallRecordsServiceEndpoint < MicrosoftGraph::Models::CallRecordsEndpoint
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            ## Instantiates a new serviceEndpoint and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.callRecords.serviceEndpoint"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a call_records_service_endpoint
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CallRecordsServiceEndpoint.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
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
            end
        end
    end
end

require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SecurityWhoisRecord < MicrosoftGraph::Models::SecurityWhoisBaseRecord
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The collection of historical records associated to this WHOIS object.
            @history
            ## 
            ## Instantiates a new securityWhoisRecord and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.security.whoisRecord"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_whois_record
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityWhoisRecord.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "history" => lambda {|n| @history = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SecurityWhoisHistoryRecord.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the history property value. The collection of historical records associated to this WHOIS object.
            ## @return a security_whois_history_record
            ## 
            def history
                return @history
            end
            ## 
            ## Sets the history property value. The collection of historical records associated to this WHOIS object.
            ## @param value Value to set for the history property.
            ## @return a void
            ## 
            def history=(value)
                @history = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("history", @history)
            end
        end
    end
end

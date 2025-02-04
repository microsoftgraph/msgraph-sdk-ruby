require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ExternalConnectorsItemIdResolver < MicrosoftGraph::Models::ExternalConnectorsUrlToItemResolverBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Pattern that specifies how to form the ID of the external item that the URL represents. The named groups from the regular expression in urlPattern within the urlMatchInfo can be referenced by inserting the group name inside curly brackets.
            @item_id
            ## 
            # Configurations to match and resolve URL.
            @url_match_info
            ## 
            ## Instantiates a new ExternalConnectorsItemIdResolver and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.externalConnectors.itemIdResolver"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a external_connectors_item_id_resolver
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ExternalConnectorsItemIdResolver.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "itemId" => lambda {|n| @item_id = n.get_string_value() },
                    "urlMatchInfo" => lambda {|n| @url_match_info = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ExternalConnectorsUrlMatchInfo.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the itemId property value. Pattern that specifies how to form the ID of the external item that the URL represents. The named groups from the regular expression in urlPattern within the urlMatchInfo can be referenced by inserting the group name inside curly brackets.
            ## @return a string
            ## 
            def item_id
                return @item_id
            end
            ## 
            ## Sets the itemId property value. Pattern that specifies how to form the ID of the external item that the URL represents. The named groups from the regular expression in urlPattern within the urlMatchInfo can be referenced by inserting the group name inside curly brackets.
            ## @param value Value to set for the itemId property.
            ## @return a void
            ## 
            def item_id=(value)
                @item_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("itemId", @item_id)
                writer.write_object_value("urlMatchInfo", @url_match_info)
            end
            ## 
            ## Gets the urlMatchInfo property value. Configurations to match and resolve URL.
            ## @return a external_connectors_url_match_info
            ## 
            def url_match_info
                return @url_match_info
            end
            ## 
            ## Sets the urlMatchInfo property value. Configurations to match and resolve URL.
            ## @param value Value to set for the urlMatchInfo property.
            ## @return a void
            ## 
            def url_match_info=(value)
                @url_match_info = value
            end
        end
    end
end

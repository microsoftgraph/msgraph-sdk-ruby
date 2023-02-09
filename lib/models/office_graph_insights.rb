require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class OfficeGraphInsights < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Calculated relationship identifying documents shared with or by the user. This includes URLs, file attachments, and reference attachments to OneDrive for Business and SharePoint files found in Outlook messages and meetings. This also includes URLs and reference attachments to Teams conversations. Ordered by recency of share.
            @shared
            ## 
            # Calculated relationship identifying documents trending around a user. Trending documents are calculated based on activity of the user's closest network of people and include files stored in OneDrive for Business and SharePoint. Trending insights help the user to discover potentially useful content that the user has access to, but has never viewed before.
            @trending
            ## 
            # Calculated relationship identifying the latest documents viewed or modified by a user, including OneDrive for Business and SharePoint documents, ranked by recency of use.
            @used
            ## 
            ## Instantiates a new officeGraphInsights and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a office_graph_insights
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OfficeGraphInsights.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "shared" => lambda {|n| @shared = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SharedInsight.create_from_discriminator_value(pn) }) },
                    "trending" => lambda {|n| @trending = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Trending.create_from_discriminator_value(pn) }) },
                    "used" => lambda {|n| @used = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::UsedInsight.create_from_discriminator_value(pn) }) },
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
                writer.write_collection_of_object_values("shared", @shared)
                writer.write_collection_of_object_values("trending", @trending)
                writer.write_collection_of_object_values("used", @used)
            end
            ## 
            ## Gets the shared property value. Calculated relationship identifying documents shared with or by the user. This includes URLs, file attachments, and reference attachments to OneDrive for Business and SharePoint files found in Outlook messages and meetings. This also includes URLs and reference attachments to Teams conversations. Ordered by recency of share.
            ## @return a shared_insight
            ## 
            def shared
                return @shared
            end
            ## 
            ## Sets the shared property value. Calculated relationship identifying documents shared with or by the user. This includes URLs, file attachments, and reference attachments to OneDrive for Business and SharePoint files found in Outlook messages and meetings. This also includes URLs and reference attachments to Teams conversations. Ordered by recency of share.
            ## @param value Value to set for the shared property.
            ## @return a void
            ## 
            def shared=(value)
                @shared = value
            end
            ## 
            ## Gets the trending property value. Calculated relationship identifying documents trending around a user. Trending documents are calculated based on activity of the user's closest network of people and include files stored in OneDrive for Business and SharePoint. Trending insights help the user to discover potentially useful content that the user has access to, but has never viewed before.
            ## @return a trending
            ## 
            def trending
                return @trending
            end
            ## 
            ## Sets the trending property value. Calculated relationship identifying documents trending around a user. Trending documents are calculated based on activity of the user's closest network of people and include files stored in OneDrive for Business and SharePoint. Trending insights help the user to discover potentially useful content that the user has access to, but has never viewed before.
            ## @param value Value to set for the trending property.
            ## @return a void
            ## 
            def trending=(value)
                @trending = value
            end
            ## 
            ## Gets the used property value. Calculated relationship identifying the latest documents viewed or modified by a user, including OneDrive for Business and SharePoint documents, ranked by recency of use.
            ## @return a used_insight
            ## 
            def used
                return @used
            end
            ## 
            ## Sets the used property value. Calculated relationship identifying the latest documents viewed or modified by a user, including OneDrive for Business and SharePoint documents, ranked by recency of use.
            ## @param value Value to set for the used property.
            ## @return a void
            ## 
            def used=(value)
                @used = value
            end
        end
    end
end

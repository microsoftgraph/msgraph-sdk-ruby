require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SubjectRightsRequestEnumeratedSiteLocation < MicrosoftGraph::Models::SubjectRightsRequestSiteLocation
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Collection of site URLs that should be included. Includes the URL of each site, for example, https://www.contoso.com/site1.
            @urls
            ## 
            ## Instantiates a new SubjectRightsRequestEnumeratedSiteLocation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.subjectRightsRequestEnumeratedSiteLocation"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a subject_rights_request_enumerated_site_location
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SubjectRightsRequestEnumeratedSiteLocation.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "urls" => lambda {|n| @urls = n.get_collection_of_primitive_values(String) },
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
                writer.write_collection_of_primitive_values("urls", @urls)
            end
            ## 
            ## Gets the urls property value. Collection of site URLs that should be included. Includes the URL of each site, for example, https://www.contoso.com/site1.
            ## @return a string
            ## 
            def urls
                return @urls
            end
            ## 
            ## Sets the urls property value. Collection of site URLs that should be included. Includes the URL of each site, for example, https://www.contoso.com/site1.
            ## @param value Value to set for the urls property.
            ## @return a void
            ## 
            def urls=(value)
                @urls = value
            end
        end
    end
end

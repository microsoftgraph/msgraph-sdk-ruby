require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ServiceHostedMediaConfig < MicrosoftGraph::Models::MediaConfig
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The list of media to pre-fetch.
            @pre_fetch_media
            ## 
            ## Instantiates a new ServiceHostedMediaConfig and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.serviceHostedMediaConfig"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a service_hosted_media_config
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ServiceHostedMediaConfig.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "preFetchMedia" => lambda {|n| @pre_fetch_media = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::MediaInfo.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the preFetchMedia property value. The list of media to pre-fetch.
            ## @return a media_info
            ## 
            def pre_fetch_media
                return @pre_fetch_media
            end
            ## 
            ## Sets the preFetchMedia property value. The list of media to pre-fetch.
            ## @param value Value to set for the pre_fetch_media property.
            ## @return a void
            ## 
            def pre_fetch_media=(value)
                @pre_fetch_media = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("preFetchMedia", @pre_fetch_media)
            end
        end
    end
end

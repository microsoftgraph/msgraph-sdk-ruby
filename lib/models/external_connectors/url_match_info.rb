require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './external_connectors'

module MicrosoftGraph
    module Models
        module ExternalConnectors
            class UrlMatchInfo
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # A list of the URL prefixes that must match URLs to be processed by this URL-to-item-resolver.
                @base_urls
                ## 
                # The OdataType property
                @odata_type
                ## 
                # A regular expression that will be matched towards the URL that is processed by this URL-to-item-resolver. The ECMAScript specification for regular expressions (ECMA-262) is used for the evaluation. The named groups defined by the regular expression will be used later to extract values from the URL.
                @url_pattern
                ## 
                ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                ## @return a i_dictionary
                ## 
                def additional_data
                    return @additional_data
                end
                ## 
                ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                ## @param value Value to set for the AdditionalData property.
                ## @return a void
                ## 
                def additional_data=(value)
                    @additional_data = value
                end
                ## 
                ## Gets the baseUrls property value. A list of the URL prefixes that must match URLs to be processed by this URL-to-item-resolver.
                ## @return a string
                ## 
                def base_urls
                    return @base_urls
                end
                ## 
                ## Sets the baseUrls property value. A list of the URL prefixes that must match URLs to be processed by this URL-to-item-resolver.
                ## @param value Value to set for the base_urls property.
                ## @return a void
                ## 
                def base_urls=(value)
                    @base_urls = value
                end
                ## 
                ## Instantiates a new urlMatchInfo and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a url_match_info
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return UrlMatchInfo.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "baseUrls" => lambda {|n| @base_urls = n.get_collection_of_primitive_values(String) },
                        "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                        "urlPattern" => lambda {|n| @url_pattern = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the @odata.type property value. The OdataType property
                ## @return a string
                ## 
                def odata_type
                    return @odata_type
                end
                ## 
                ## Sets the @odata.type property value. The OdataType property
                ## @param value Value to set for the odata_type property.
                ## @return a void
                ## 
                def odata_type=(value)
                    @odata_type = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_collection_of_primitive_values("baseUrls", @base_urls)
                    writer.write_string_value("@odata.type", @odata_type)
                    writer.write_string_value("urlPattern", @url_pattern)
                    writer.write_additional_data(@additional_data)
                end
                ## 
                ## Gets the urlPattern property value. A regular expression that will be matched towards the URL that is processed by this URL-to-item-resolver. The ECMAScript specification for regular expressions (ECMA-262) is used for the evaluation. The named groups defined by the regular expression will be used later to extract values from the URL.
                ## @return a string
                ## 
                def url_pattern
                    return @url_pattern
                end
                ## 
                ## Sets the urlPattern property value. A regular expression that will be matched towards the URL that is processed by this URL-to-item-resolver. The ECMAScript specification for regular expressions (ECMA-262) is used for the evaluation. The named groups defined by the regular expression will be used later to extract values from the URL.
                ## @param value Value to set for the url_pattern property.
                ## @return a void
                ## 
                def url_pattern=(value)
                    @url_pattern = value
                end
            end
        end
    end
end

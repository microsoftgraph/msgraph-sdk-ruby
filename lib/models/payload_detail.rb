require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class PayloadDetail
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The coachmarks property
            @coachmarks
            ## 
            # The content property
            @content
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The phishingUrl property
            @phishing_url
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the coachmarks property value. The coachmarks property
            ## @return a payload_coachmark
            ## 
            def coachmarks
                return @coachmarks
            end
            ## 
            ## Sets the coachmarks property value. The coachmarks property
            ## @param value Value to set for the coachmarks property.
            ## @return a void
            ## 
            def coachmarks=(value)
                @coachmarks = value
            end
            ## 
            ## Instantiates a new payloadDetail and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the content property value. The content property
            ## @return a string
            ## 
            def content
                return @content
            end
            ## 
            ## Sets the content property value. The content property
            ## @param value Value to set for the content property.
            ## @return a void
            ## 
            def content=(value)
                @content = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a payload_detail
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.emailPayloadDetail"
                            return EmailPayloadDetail.new
                    end
                end
                return PayloadDetail.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "coachmarks" => lambda {|n| @coachmarks = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::PayloadCoachmark.create_from_discriminator_value(pn) }) },
                    "content" => lambda {|n| @content = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "phishingUrl" => lambda {|n| @phishing_url = n.get_string_value() },
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
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the phishingUrl property value. The phishingUrl property
            ## @return a string
            ## 
            def phishing_url
                return @phishing_url
            end
            ## 
            ## Sets the phishingUrl property value. The phishingUrl property
            ## @param value Value to set for the phishingUrl property.
            ## @return a void
            ## 
            def phishing_url=(value)
                @phishing_url = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_collection_of_object_values("coachmarks", @coachmarks)
                writer.write_string_value("content", @content)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("phishingUrl", @phishing_url)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end

require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './security'

module MicrosoftGraph
    module Models
        module Security
            class EdiscoveryCaseSettings < MicrosoftGraph::Models::Entity
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The OCR (Optical Character Recognition) settings for the case.
                @ocr
                ## 
                # The redundancy (near duplicate and email threading) detection settings for the case.
                @redundancy_detection
                ## 
                # The Topic Modeling (Themes) settings for the case.
                @topic_modeling
                ## 
                ## Instantiates a new ediscoveryCaseSettings and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a ediscovery_case_settings
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return EdiscoveryCaseSettings.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "ocr" => lambda {|n| @ocr = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Security::OcrSettings.create_from_discriminator_value(pn) }) },
                        "redundancyDetection" => lambda {|n| @redundancy_detection = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Security::RedundancyDetectionSettings.create_from_discriminator_value(pn) }) },
                        "topicModeling" => lambda {|n| @topic_modeling = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Security::TopicModelingSettings.create_from_discriminator_value(pn) }) },
                    })
                end
                ## 
                ## Gets the ocr property value. The OCR (Optical Character Recognition) settings for the case.
                ## @return a ocr_settings
                ## 
                def ocr
                    return @ocr
                end
                ## 
                ## Sets the ocr property value. The OCR (Optical Character Recognition) settings for the case.
                ## @param value Value to set for the ocr property.
                ## @return a void
                ## 
                def ocr=(value)
                    @ocr = value
                end
                ## 
                ## Gets the redundancyDetection property value. The redundancy (near duplicate and email threading) detection settings for the case.
                ## @return a redundancy_detection_settings
                ## 
                def redundancy_detection
                    return @redundancy_detection
                end
                ## 
                ## Sets the redundancyDetection property value. The redundancy (near duplicate and email threading) detection settings for the case.
                ## @param value Value to set for the redundancy_detection property.
                ## @return a void
                ## 
                def redundancy_detection=(value)
                    @redundancy_detection = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_object_value("ocr", @ocr)
                    writer.write_object_value("redundancyDetection", @redundancy_detection)
                    writer.write_object_value("topicModeling", @topic_modeling)
                end
                ## 
                ## Gets the topicModeling property value. The Topic Modeling (Themes) settings for the case.
                ## @return a topic_modeling_settings
                ## 
                def topic_modeling
                    return @topic_modeling
                end
                ## 
                ## Sets the topicModeling property value. The Topic Modeling (Themes) settings for the case.
                ## @param value Value to set for the topic_modeling property.
                ## @return a void
                ## 
                def topic_modeling=(value)
                    @topic_modeling = value
                end
            end
        end
    end
end

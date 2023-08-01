require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './security'

module MicrosoftGraph
    module Models
        module Security
            class CvssSummary
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The OdataType property
                @odata_type
                ## 
                # The CVSS score about this vulnerability.
                @score
                ## 
                # The CVSS severity rating for this vulnerability. The possible values are: none, low, medium, high, critical, unknownFutureValue.
                @severity
                ## 
                # The CVSS vector string for this vulnerability.
                @vector_string
                ## 
                ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                ## @return a i_dictionary
                ## 
                def additional_data
                    return @additional_data
                end
                ## 
                ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                ## @param value Value to set for the additionalData property.
                ## @return a void
                ## 
                def additional_data=(value)
                    @additional_data = value
                end
                ## 
                ## Instantiates a new cvssSummary and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a cvss_summary
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return CvssSummary.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                        "score" => lambda {|n| @score = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "severity" => lambda {|n| @severity = n.get_enum_value(MicrosoftGraph::Models::Security::VulnerabilitySeverity) },
                        "vectorString" => lambda {|n| @vector_string = n.get_string_value() },
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
                ## Gets the score property value. The CVSS score about this vulnerability.
                ## @return a double
                ## 
                def score
                    return @score
                end
                ## 
                ## Sets the score property value. The CVSS score about this vulnerability.
                ## @param value Value to set for the score property.
                ## @return a void
                ## 
                def score=(value)
                    @score = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_string_value("@odata.type", @odata_type)
                    writer.write_object_value("score", @score)
                    writer.write_enum_value("severity", @severity)
                    writer.write_string_value("vectorString", @vector_string)
                    writer.write_additional_data(@additional_data)
                end
                ## 
                ## Gets the severity property value. The CVSS severity rating for this vulnerability. The possible values are: none, low, medium, high, critical, unknownFutureValue.
                ## @return a vulnerability_severity
                ## 
                def severity
                    return @severity
                end
                ## 
                ## Sets the severity property value. The CVSS severity rating for this vulnerability. The possible values are: none, low, medium, high, critical, unknownFutureValue.
                ## @param value Value to set for the severity property.
                ## @return a void
                ## 
                def severity=(value)
                    @severity = value
                end
                ## 
                ## Gets the vectorString property value. The CVSS vector string for this vulnerability.
                ## @return a string
                ## 
                def vector_string
                    return @vector_string
                end
                ## 
                ## Sets the vectorString property value. The CVSS vector string for this vulnerability.
                ## @param value Value to set for the vectorString property.
                ## @return a void
                ## 
                def vector_string=(value)
                    @vector_string = value
                end
            end
        end
    end
end

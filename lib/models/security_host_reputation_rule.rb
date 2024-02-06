require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SecurityHostReputationRule
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The description of the rule that gives more context.
            @description
            ## 
            # The name of the rule.
            @name
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Link to a web page with details related to this rule.
            @related_details_url
            ## 
            # The severity property
            @severity
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
            ## Instantiates a new securityHostReputationRule and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_host_reputation_rule
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityHostReputationRule.new
            end
            ## 
            ## Gets the description property value. The description of the rule that gives more context.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The description of the rule that gives more context.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "relatedDetailsUrl" => lambda {|n| @related_details_url = n.get_string_value() },
                    "severity" => lambda {|n| @severity = n.get_enum_value(MicrosoftGraph::Models::SecurityHostReputationRuleSeverity) },
                }
            end
            ## 
            ## Gets the name property value. The name of the rule.
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. The name of the rule.
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
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
            ## Gets the relatedDetailsUrl property value. Link to a web page with details related to this rule.
            ## @return a string
            ## 
            def related_details_url
                return @related_details_url
            end
            ## 
            ## Sets the relatedDetailsUrl property value. Link to a web page with details related to this rule.
            ## @param value Value to set for the relatedDetailsUrl property.
            ## @return a void
            ## 
            def related_details_url=(value)
                @related_details_url = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("description", @description) unless @description.nil?
                writer.write_string_value("name", @name) unless @name.nil?
                writer.write_string_value("@odata.type", @odata_type) unless @odata_type.nil?
                writer.write_string_value("relatedDetailsUrl", @related_details_url) unless @related_details_url.nil?
                writer.write_enum_value("severity", @severity) unless @severity.nil?
                writer.write_additional_data(@additional_data) unless @additional_data.nil?
            end
            ## 
            ## Gets the severity property value. The severity property
            ## @return a security_host_reputation_rule_severity
            ## 
            def severity
                return @severity
            end
            ## 
            ## Sets the severity property value. The severity property
            ## @param value Value to set for the severity property.
            ## @return a void
            ## 
            def severity=(value)
                @severity = value
            end
        end
    end
end

require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Payload < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The brand property
            @brand
            ## 
            # The complexity property
            @complexity
            ## 
            # The createdBy property
            @created_by
            ## 
            # The createdDateTime property
            @created_date_time
            ## 
            # The description property
            @description
            ## 
            # The detail property
            @detail
            ## 
            # The displayName property
            @display_name
            ## 
            # The industry property
            @industry
            ## 
            # The isAutomated property
            @is_automated
            ## 
            # The isControversial property
            @is_controversial
            ## 
            # The isCurrentEvent property
            @is_current_event
            ## 
            # The language property
            @language
            ## 
            # The lastModifiedBy property
            @last_modified_by
            ## 
            # The lastModifiedDateTime property
            @last_modified_date_time
            ## 
            # The payloadTags property
            @payload_tags
            ## 
            # The platform property
            @platform
            ## 
            # The predictedCompromiseRate property
            @predicted_compromise_rate
            ## 
            # The simulationAttackType property
            @simulation_attack_type
            ## 
            # The source property
            @source
            ## 
            # The status property
            @status
            ## 
            # The technique property
            @technique
            ## 
            # The theme property
            @theme
            ## 
            ## Gets the brand property value. The brand property
            ## @return a payload_brand
            ## 
            def brand
                return @brand
            end
            ## 
            ## Sets the brand property value. The brand property
            ## @param value Value to set for the brand property.
            ## @return a void
            ## 
            def brand=(value)
                @brand = value
            end
            ## 
            ## Gets the complexity property value. The complexity property
            ## @return a payload_complexity
            ## 
            def complexity
                return @complexity
            end
            ## 
            ## Sets the complexity property value. The complexity property
            ## @param value Value to set for the complexity property.
            ## @return a void
            ## 
            def complexity=(value)
                @complexity = value
            end
            ## 
            ## Instantiates a new payload and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdBy property value. The createdBy property
            ## @return a email_identity
            ## 
            def created_by
                return @created_by
            end
            ## 
            ## Sets the createdBy property value. The createdBy property
            ## @param value Value to set for the createdBy property.
            ## @return a void
            ## 
            def created_by=(value)
                @created_by = value
            end
            ## 
            ## Gets the createdDateTime property value. The createdDateTime property
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The createdDateTime property
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a payload
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Payload.new
            end
            ## 
            ## Gets the description property value. The description property
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The description property
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the detail property value. The detail property
            ## @return a payload_detail
            ## 
            def detail
                return @detail
            end
            ## 
            ## Sets the detail property value. The detail property
            ## @param value Value to set for the detail property.
            ## @return a void
            ## 
            def detail=(value)
                @detail = value
            end
            ## 
            ## Gets the displayName property value. The displayName property
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The displayName property
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "brand" => lambda {|n| @brand = n.get_enum_value(MicrosoftGraph::Models::PayloadBrand) },
                    "complexity" => lambda {|n| @complexity = n.get_enum_value(MicrosoftGraph::Models::PayloadComplexity) },
                    "createdBy" => lambda {|n| @created_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::EmailIdentity.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "detail" => lambda {|n| @detail = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PayloadDetail.create_from_discriminator_value(pn) }) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "industry" => lambda {|n| @industry = n.get_enum_value(MicrosoftGraph::Models::PayloadIndustry) },
                    "isAutomated" => lambda {|n| @is_automated = n.get_boolean_value() },
                    "isControversial" => lambda {|n| @is_controversial = n.get_boolean_value() },
                    "isCurrentEvent" => lambda {|n| @is_current_event = n.get_boolean_value() },
                    "language" => lambda {|n| @language = n.get_string_value() },
                    "lastModifiedBy" => lambda {|n| @last_modified_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::EmailIdentity.create_from_discriminator_value(pn) }) },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "payloadTags" => lambda {|n| @payload_tags = n.get_collection_of_primitive_values(String) },
                    "platform" => lambda {|n| @platform = n.get_enum_value(MicrosoftGraph::Models::PayloadDeliveryPlatform) },
                    "predictedCompromiseRate" => lambda {|n| @predicted_compromise_rate = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "simulationAttackType" => lambda {|n| @simulation_attack_type = n.get_enum_value(MicrosoftGraph::Models::SimulationAttackType) },
                    "source" => lambda {|n| @source = n.get_enum_value(MicrosoftGraph::Models::SimulationContentSource) },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraph::Models::SimulationContentStatus) },
                    "technique" => lambda {|n| @technique = n.get_enum_value(MicrosoftGraph::Models::SimulationAttackTechnique) },
                    "theme" => lambda {|n| @theme = n.get_enum_value(MicrosoftGraph::Models::PayloadTheme) },
                })
            end
            ## 
            ## Gets the industry property value. The industry property
            ## @return a payload_industry
            ## 
            def industry
                return @industry
            end
            ## 
            ## Sets the industry property value. The industry property
            ## @param value Value to set for the industry property.
            ## @return a void
            ## 
            def industry=(value)
                @industry = value
            end
            ## 
            ## Gets the isAutomated property value. The isAutomated property
            ## @return a boolean
            ## 
            def is_automated
                return @is_automated
            end
            ## 
            ## Sets the isAutomated property value. The isAutomated property
            ## @param value Value to set for the isAutomated property.
            ## @return a void
            ## 
            def is_automated=(value)
                @is_automated = value
            end
            ## 
            ## Gets the isControversial property value. The isControversial property
            ## @return a boolean
            ## 
            def is_controversial
                return @is_controversial
            end
            ## 
            ## Sets the isControversial property value. The isControversial property
            ## @param value Value to set for the isControversial property.
            ## @return a void
            ## 
            def is_controversial=(value)
                @is_controversial = value
            end
            ## 
            ## Gets the isCurrentEvent property value. The isCurrentEvent property
            ## @return a boolean
            ## 
            def is_current_event
                return @is_current_event
            end
            ## 
            ## Sets the isCurrentEvent property value. The isCurrentEvent property
            ## @param value Value to set for the isCurrentEvent property.
            ## @return a void
            ## 
            def is_current_event=(value)
                @is_current_event = value
            end
            ## 
            ## Gets the language property value. The language property
            ## @return a string
            ## 
            def language
                return @language
            end
            ## 
            ## Sets the language property value. The language property
            ## @param value Value to set for the language property.
            ## @return a void
            ## 
            def language=(value)
                @language = value
            end
            ## 
            ## Gets the lastModifiedBy property value. The lastModifiedBy property
            ## @return a email_identity
            ## 
            def last_modified_by
                return @last_modified_by
            end
            ## 
            ## Sets the lastModifiedBy property value. The lastModifiedBy property
            ## @param value Value to set for the lastModifiedBy property.
            ## @return a void
            ## 
            def last_modified_by=(value)
                @last_modified_by = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. The lastModifiedDateTime property
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. The lastModifiedDateTime property
            ## @param value Value to set for the lastModifiedDateTime property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the payloadTags property value. The payloadTags property
            ## @return a string
            ## 
            def payload_tags
                return @payload_tags
            end
            ## 
            ## Sets the payloadTags property value. The payloadTags property
            ## @param value Value to set for the payloadTags property.
            ## @return a void
            ## 
            def payload_tags=(value)
                @payload_tags = value
            end
            ## 
            ## Gets the platform property value. The platform property
            ## @return a payload_delivery_platform
            ## 
            def platform
                return @platform
            end
            ## 
            ## Sets the platform property value. The platform property
            ## @param value Value to set for the platform property.
            ## @return a void
            ## 
            def platform=(value)
                @platform = value
            end
            ## 
            ## Gets the predictedCompromiseRate property value. The predictedCompromiseRate property
            ## @return a double
            ## 
            def predicted_compromise_rate
                return @predicted_compromise_rate
            end
            ## 
            ## Sets the predictedCompromiseRate property value. The predictedCompromiseRate property
            ## @param value Value to set for the predictedCompromiseRate property.
            ## @return a void
            ## 
            def predicted_compromise_rate=(value)
                @predicted_compromise_rate = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("brand", @brand)
                writer.write_enum_value("complexity", @complexity)
                writer.write_object_value("createdBy", @created_by)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("description", @description)
                writer.write_object_value("detail", @detail)
                writer.write_string_value("displayName", @display_name)
                writer.write_enum_value("industry", @industry)
                writer.write_boolean_value("isAutomated", @is_automated)
                writer.write_boolean_value("isControversial", @is_controversial)
                writer.write_boolean_value("isCurrentEvent", @is_current_event)
                writer.write_string_value("language", @language)
                writer.write_object_value("lastModifiedBy", @last_modified_by)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_collection_of_primitive_values("payloadTags", @payload_tags)
                writer.write_enum_value("platform", @platform)
                writer.write_object_value("predictedCompromiseRate", @predicted_compromise_rate)
                writer.write_enum_value("simulationAttackType", @simulation_attack_type)
                writer.write_enum_value("source", @source)
                writer.write_enum_value("status", @status)
                writer.write_enum_value("technique", @technique)
                writer.write_enum_value("theme", @theme)
            end
            ## 
            ## Gets the simulationAttackType property value. The simulationAttackType property
            ## @return a simulation_attack_type
            ## 
            def simulation_attack_type
                return @simulation_attack_type
            end
            ## 
            ## Sets the simulationAttackType property value. The simulationAttackType property
            ## @param value Value to set for the simulationAttackType property.
            ## @return a void
            ## 
            def simulation_attack_type=(value)
                @simulation_attack_type = value
            end
            ## 
            ## Gets the source property value. The source property
            ## @return a simulation_content_source
            ## 
            def source
                return @source
            end
            ## 
            ## Sets the source property value. The source property
            ## @param value Value to set for the source property.
            ## @return a void
            ## 
            def source=(value)
                @source = value
            end
            ## 
            ## Gets the status property value. The status property
            ## @return a simulation_content_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The status property
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
            ## 
            ## Gets the technique property value. The technique property
            ## @return a simulation_attack_technique
            ## 
            def technique
                return @technique
            end
            ## 
            ## Sets the technique property value. The technique property
            ## @param value Value to set for the technique property.
            ## @return a void
            ## 
            def technique=(value)
                @technique = value
            end
            ## 
            ## Gets the theme property value. The theme property
            ## @return a payload_theme
            ## 
            def theme
                return @theme
            end
            ## 
            ## Sets the theme property value. The theme property
            ## @param value Value to set for the theme property.
            ## @return a void
            ## 
            def theme=(value)
                @theme = value
            end
        end
    end
end

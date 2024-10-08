require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class UserTrainingContentEventInfo
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Browser of the user from where the training event was generated.
            @browser
            ## 
            # Date and time of the training content playback by the user.
            @content_date_time
            ## 
            # IP address of the user for the training event.
            @ip_address
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The operating system, platform, and device details of the user for the training event.
            @os_platform_device_details
            ## 
            # Potential improvement in the tenant security posture after completion of the training by the user.
            @potential_score_impact
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
            ## Gets the browser property value. Browser of the user from where the training event was generated.
            ## @return a string
            ## 
            def browser
                return @browser
            end
            ## 
            ## Sets the browser property value. Browser of the user from where the training event was generated.
            ## @param value Value to set for the browser property.
            ## @return a void
            ## 
            def browser=(value)
                @browser = value
            end
            ## 
            ## Instantiates a new UserTrainingContentEventInfo and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the contentDateTime property value. Date and time of the training content playback by the user.
            ## @return a date_time
            ## 
            def content_date_time
                return @content_date_time
            end
            ## 
            ## Sets the contentDateTime property value. Date and time of the training content playback by the user.
            ## @param value Value to set for the contentDateTime property.
            ## @return a void
            ## 
            def content_date_time=(value)
                @content_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a user_training_content_event_info
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserTrainingContentEventInfo.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "browser" => lambda {|n| @browser = n.get_string_value() },
                    "contentDateTime" => lambda {|n| @content_date_time = n.get_date_time_value() },
                    "ipAddress" => lambda {|n| @ip_address = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "osPlatformDeviceDetails" => lambda {|n| @os_platform_device_details = n.get_string_value() },
                    "potentialScoreImpact" => lambda {|n| @potential_score_impact = n.get_object_value(lambda {|pn| UserTrainingContentEventInfo::UserTrainingContentEventInfoPotentialScoreImpact.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the ipAddress property value. IP address of the user for the training event.
            ## @return a string
            ## 
            def ip_address
                return @ip_address
            end
            ## 
            ## Sets the ipAddress property value. IP address of the user for the training event.
            ## @param value Value to set for the ipAddress property.
            ## @return a void
            ## 
            def ip_address=(value)
                @ip_address = value
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
            ## Gets the osPlatformDeviceDetails property value. The operating system, platform, and device details of the user for the training event.
            ## @return a string
            ## 
            def os_platform_device_details
                return @os_platform_device_details
            end
            ## 
            ## Sets the osPlatformDeviceDetails property value. The operating system, platform, and device details of the user for the training event.
            ## @param value Value to set for the osPlatformDeviceDetails property.
            ## @return a void
            ## 
            def os_platform_device_details=(value)
                @os_platform_device_details = value
            end
            ## 
            ## Gets the potentialScoreImpact property value. Potential improvement in the tenant security posture after completion of the training by the user.
            ## @return a user_training_content_event_info_potential_score_impact
            ## 
            def potential_score_impact
                return @potential_score_impact
            end
            ## 
            ## Sets the potentialScoreImpact property value. Potential improvement in the tenant security posture after completion of the training by the user.
            ## @param value Value to set for the potentialScoreImpact property.
            ## @return a void
            ## 
            def potential_score_impact=(value)
                @potential_score_impact = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("browser", @browser)
                writer.write_date_time_value("contentDateTime", @content_date_time)
                writer.write_string_value("ipAddress", @ip_address)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("osPlatformDeviceDetails", @os_platform_device_details)
                writer.write_object_value("potentialScoreImpact", @potential_score_impact)
                writer.write_additional_data(@additional_data)
            end

            ## 
            # Composed type wrapper for classes Double, ReferenceNumeric, string
            class UserTrainingContentEventInfoPotentialScoreImpact
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Composed type representation for type Double
                @double
                ## 
                # Composed type representation for type ReferenceNumeric
                @reference_numeric
                ## 
                # Composed type representation for type string
                @string
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a user_training_content_event_info_potential_score_impact
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    mapping_value_node = parse_node.get_child_node("")
                    unless mapping_value_node.nil? then
                        mapping_value = mapping_value_node.get_string_value
                        case mapping_value
                            when "ReferenceNumeric"
                                return ReferenceNumeric.new
                        end
                    end
                    return UserTrainingContentEventInfoPotentialScoreImpact.new
                end
                ## 
                ## Gets the double property value. Composed type representation for type Double
                ## @return a double
                ## 
                def double
                    return @double
                end
                ## 
                ## Sets the double property value. Composed type representation for type Double
                ## @param value Value to set for the double property.
                ## @return a void
                ## 
                def double=(value)
                    @double = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "double" => lambda {|n| @double = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "ReferenceNumeric" => lambda {|n| @reference_numeric = n.get_enum_value(MicrosoftGraph::Models::ReferenceNumeric) },
                        "string" => lambda {|n| @string = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the ReferenceNumeric property value. Composed type representation for type ReferenceNumeric
                ## @return a reference_numeric
                ## 
                def reference_numeric
                    return @reference_numeric
                end
                ## 
                ## Sets the ReferenceNumeric property value. Composed type representation for type ReferenceNumeric
                ## @param value Value to set for the ReferenceNumeric property.
                ## @return a void
                ## 
                def reference_numeric=(value)
                    @reference_numeric = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_object_value("double", @double)
                    writer.write_enum_value("ReferenceNumeric", @reference_numeric)
                    writer.write_string_value("string", @string)
                end
                ## 
                ## Gets the string property value. Composed type representation for type string
                ## @return a string
                ## 
                def string
                    return @string
                end
                ## 
                ## Sets the string property value. Composed type representation for type string
                ## @param value Value to set for the string property.
                ## @return a void
                ## 
                def string=(value)
                    @string = value
                end
            end
        end
    end
end

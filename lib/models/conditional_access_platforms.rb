require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ConditionalAccessPlatforms
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Possible values are: android, iOS, windows, windowsPhone, macOS, linux, all, unknownFutureValue.
            @exclude_platforms
            ## 
            # Possible values are: android, iOS, windows, windowsPhone, macOS, linux, all, unknownFutureValue.
            @include_platforms
            ## 
            # The OdataType property
            @odata_type
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
            ## Instantiates a new conditionalAccessPlatforms and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a conditional_access_platforms
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ConditionalAccessPlatforms.new
            end
            ## 
            ## Gets the excludePlatforms property value. Possible values are: android, iOS, windows, windowsPhone, macOS, linux, all, unknownFutureValue.
            ## @return a conditional_access_device_platform
            ## 
            def exclude_platforms
                return @exclude_platforms
            end
            ## 
            ## Sets the excludePlatforms property value. Possible values are: android, iOS, windows, windowsPhone, macOS, linux, all, unknownFutureValue.
            ## @param value Value to set for the exclude_platforms property.
            ## @return a void
            ## 
            def exclude_platforms=(value)
                @exclude_platforms = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "excludePlatforms" => lambda {|n| @exclude_platforms = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ConditionalAccessDevicePlatform.create_from_discriminator_value(pn) }) },
                    "includePlatforms" => lambda {|n| @include_platforms = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ConditionalAccessDevicePlatform.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the includePlatforms property value. Possible values are: android, iOS, windows, windowsPhone, macOS, linux, all, unknownFutureValue.
            ## @return a conditional_access_device_platform
            ## 
            def include_platforms
                return @include_platforms
            end
            ## 
            ## Sets the includePlatforms property value. Possible values are: android, iOS, windows, windowsPhone, macOS, linux, all, unknownFutureValue.
            ## @param value Value to set for the include_platforms property.
            ## @return a void
            ## 
            def include_platforms=(value)
                @include_platforms = value
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
                writer.write_collection_of_object_values("excludePlatforms", @exclude_platforms)
                writer.write_collection_of_object_values("includePlatforms", @include_platforms)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end

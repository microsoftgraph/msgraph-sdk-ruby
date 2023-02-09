require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ConditionalAccessLocations
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Location IDs excluded from scope of policy.
            @exclude_locations
            ## 
            # Location IDs in scope of policy unless explicitly excluded, All, or AllTrusted.
            @include_locations
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
            ## Instantiates a new conditionalAccessLocations and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a conditional_access_locations
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ConditionalAccessLocations.new
            end
            ## 
            ## Gets the excludeLocations property value. Location IDs excluded from scope of policy.
            ## @return a string
            ## 
            def exclude_locations
                return @exclude_locations
            end
            ## 
            ## Sets the excludeLocations property value. Location IDs excluded from scope of policy.
            ## @param value Value to set for the exclude_locations property.
            ## @return a void
            ## 
            def exclude_locations=(value)
                @exclude_locations = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "excludeLocations" => lambda {|n| @exclude_locations = n.get_collection_of_primitive_values(String) },
                    "includeLocations" => lambda {|n| @include_locations = n.get_collection_of_primitive_values(String) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the includeLocations property value. Location IDs in scope of policy unless explicitly excluded, All, or AllTrusted.
            ## @return a string
            ## 
            def include_locations
                return @include_locations
            end
            ## 
            ## Sets the includeLocations property value. Location IDs in scope of policy unless explicitly excluded, All, or AllTrusted.
            ## @param value Value to set for the include_locations property.
            ## @return a void
            ## 
            def include_locations=(value)
                @include_locations = value
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
                writer.write_collection_of_primitive_values("excludeLocations", @exclude_locations)
                writer.write_collection_of_primitive_values("includeLocations", @include_locations)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end

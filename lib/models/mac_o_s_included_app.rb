require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # Contains properties of an included .app in a MacOS app.
        class MacOSIncludedApp
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The bundleId of the app. This maps to the CFBundleIdentifier in the app's bundle configuration.
            @bundle_id
            ## 
            # The version of the app. This maps to the CFBundleShortVersion in the app's bundle configuration.
            @bundle_version
            ## 
            # The OdataType property
            @odata_type
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
            ## Gets the bundleId property value. The bundleId of the app. This maps to the CFBundleIdentifier in the app's bundle configuration.
            ## @return a string
            ## 
            def bundle_id
                return @bundle_id
            end
            ## 
            ## Sets the bundleId property value. The bundleId of the app. This maps to the CFBundleIdentifier in the app's bundle configuration.
            ## @param value Value to set for the bundleId property.
            ## @return a void
            ## 
            def bundle_id=(value)
                @bundle_id = value
            end
            ## 
            ## Gets the bundleVersion property value. The version of the app. This maps to the CFBundleShortVersion in the app's bundle configuration.
            ## @return a string
            ## 
            def bundle_version
                return @bundle_version
            end
            ## 
            ## Sets the bundleVersion property value. The version of the app. This maps to the CFBundleShortVersion in the app's bundle configuration.
            ## @param value Value to set for the bundleVersion property.
            ## @return a void
            ## 
            def bundle_version=(value)
                @bundle_version = value
            end
            ## 
            ## Instantiates a new MacOSIncludedApp and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a mac_o_s_included_app
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MacOSIncludedApp.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "bundleId" => lambda {|n| @bundle_id = n.get_string_value() },
                    "bundleVersion" => lambda {|n| @bundle_version = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("bundleId", @bundle_id)
                writer.write_string_value("bundleVersion", @bundle_version)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end

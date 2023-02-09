require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AndroidMobileAppIdentifier < MicrosoftGraph::Models::MobileAppIdentifier
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The identifier for an app, as specified in the play store.
            @package_id
            ## 
            ## Instantiates a new AndroidMobileAppIdentifier and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.androidMobileAppIdentifier"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a android_mobile_app_identifier
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AndroidMobileAppIdentifier.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "packageId" => lambda {|n| @package_id = n.get_string_value() },
                })
            end
            ## 
            ## Gets the packageId property value. The identifier for an app, as specified in the play store.
            ## @return a string
            ## 
            def package_id
                return @package_id
            end
            ## 
            ## Sets the packageId property value. The identifier for an app, as specified in the play store.
            ## @param value Value to set for the package_id property.
            ## @return a void
            ## 
            def package_id=(value)
                @package_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("packageId", @package_id)
            end
        end
    end
end

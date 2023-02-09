require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class IosMobileAppIdentifier < MicrosoftGraph::Models::MobileAppIdentifier
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The identifier for an app, as specified in the app store.
            @bundle_id
            ## 
            ## Gets the bundleId property value. The identifier for an app, as specified in the app store.
            ## @return a string
            ## 
            def bundle_id
                return @bundle_id
            end
            ## 
            ## Sets the bundleId property value. The identifier for an app, as specified in the app store.
            ## @param value Value to set for the bundle_id property.
            ## @return a void
            ## 
            def bundle_id=(value)
                @bundle_id = value
            end
            ## 
            ## Instantiates a new IosMobileAppIdentifier and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.iosMobileAppIdentifier"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a ios_mobile_app_identifier
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IosMobileAppIdentifier.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "bundleId" => lambda {|n| @bundle_id = n.get_string_value() },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("bundleId", @bundle_id)
            end
        end
    end
end

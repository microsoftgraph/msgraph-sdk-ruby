require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # The identifier for the deployment an app.
        class ManagedMobileApp < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The identifier for an app with it's operating system type.
            @mobile_app_identifier
            ## 
            # Version of the entity.
            @version
            ## 
            ## Instantiates a new managedMobileApp and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a managed_mobile_app
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ManagedMobileApp.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "mobileAppIdentifier" => lambda {|n| @mobile_app_identifier = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::MobileAppIdentifier.create_from_discriminator_value(pn) }) },
                    "version" => lambda {|n| @version = n.get_string_value() },
                })
            end
            ## 
            ## Gets the mobileAppIdentifier property value. The identifier for an app with it's operating system type.
            ## @return a mobile_app_identifier
            ## 
            def mobile_app_identifier
                return @mobile_app_identifier
            end
            ## 
            ## Sets the mobileAppIdentifier property value. The identifier for an app with it's operating system type.
            ## @param value Value to set for the mobile_app_identifier property.
            ## @return a void
            ## 
            def mobile_app_identifier=(value)
                @mobile_app_identifier = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("mobileAppIdentifier", @mobile_app_identifier)
                writer.write_string_value("version", @version)
            end
            ## 
            ## Gets the version property value. Version of the entity.
            ## @return a string
            ## 
            def version
                return @version
            end
            ## 
            ## Sets the version property value. Version of the entity.
            ## @param value Value to set for the version property.
            ## @return a void
            ## 
            def version=(value)
                @version = value
            end
        end
    end
end

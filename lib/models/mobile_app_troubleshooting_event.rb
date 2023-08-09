require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class MobileAppTroubleshootingEvent < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Indicates collection of App Log Upload Request.
            @app_log_collection_requests
            ## 
            ## Gets the appLogCollectionRequests property value. Indicates collection of App Log Upload Request.
            ## @return a app_log_collection_request
            ## 
            def app_log_collection_requests
                return @app_log_collection_requests
            end
            ## 
            ## Sets the appLogCollectionRequests property value. Indicates collection of App Log Upload Request.
            ## @param value Value to set for the appLogCollectionRequests property.
            ## @return a void
            ## 
            def app_log_collection_requests=(value)
                @app_log_collection_requests = value
            end
            ## 
            ## Instantiates a new mobileAppTroubleshootingEvent and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a mobile_app_troubleshooting_event
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MobileAppTroubleshootingEvent.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "appLogCollectionRequests" => lambda {|n| @app_log_collection_requests = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AppLogCollectionRequest.create_from_discriminator_value(pn) }) },
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
                writer.write_collection_of_object_values("appLogCollectionRequests", @app_log_collection_requests)
            end
        end
    end
end

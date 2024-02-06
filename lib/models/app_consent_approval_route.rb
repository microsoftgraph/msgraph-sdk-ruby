require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AppConsentApprovalRoute < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # A collection of appConsentRequest objects representing apps for which admin consent has been requested by one or more users.
            @app_consent_requests
            ## 
            ## Gets the appConsentRequests property value. A collection of appConsentRequest objects representing apps for which admin consent has been requested by one or more users.
            ## @return a app_consent_request
            ## 
            def app_consent_requests
                return @app_consent_requests
            end
            ## 
            ## Sets the appConsentRequests property value. A collection of appConsentRequest objects representing apps for which admin consent has been requested by one or more users.
            ## @param value Value to set for the appConsentRequests property.
            ## @return a void
            ## 
            def app_consent_requests=(value)
                @app_consent_requests = value
            end
            ## 
            ## Instantiates a new appConsentApprovalRoute and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a app_consent_approval_route
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AppConsentApprovalRoute.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "appConsentRequests" => lambda {|n| @app_consent_requests = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AppConsentRequest.create_from_discriminator_value(pn) }) },
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
                writer.write_collection_of_object_values("appConsentRequests", @app_consent_requests) unless @app_consent_requests.nil?
            end
        end
    end
end

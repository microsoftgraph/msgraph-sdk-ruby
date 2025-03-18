require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class VirtualEventPresenter < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Email address of the presenter.
            @email
            ## 
            # Identity information of the presenter. The supported identities are: communicationsGuestIdentity and communicationsUserIdentity.
            @identity
            ## 
            # Other details about the presenter. This property returns null when the virtual event type is virtualEventTownhall.
            @presenter_details
            ## 
            ## Instantiates a new VirtualEventPresenter and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a virtual_event_presenter
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return VirtualEventPresenter.new
            end
            ## 
            ## Gets the email property value. Email address of the presenter.
            ## @return a string
            ## 
            def email
                return @email
            end
            ## 
            ## Sets the email property value. Email address of the presenter.
            ## @param value Value to set for the email property.
            ## @return a void
            ## 
            def email=(value)
                @email = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "email" => lambda {|n| @email = n.get_string_value() },
                    "identity" => lambda {|n| @identity = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Identity.create_from_discriminator_value(pn) }) },
                    "presenterDetails" => lambda {|n| @presenter_details = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::VirtualEventPresenterDetails.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the identity property value. Identity information of the presenter. The supported identities are: communicationsGuestIdentity and communicationsUserIdentity.
            ## @return a identity
            ## 
            def identity
                return @identity
            end
            ## 
            ## Sets the identity property value. Identity information of the presenter. The supported identities are: communicationsGuestIdentity and communicationsUserIdentity.
            ## @param value Value to set for the identity property.
            ## @return a void
            ## 
            def identity=(value)
                @identity = value
            end
            ## 
            ## Gets the presenterDetails property value. Other details about the presenter. This property returns null when the virtual event type is virtualEventTownhall.
            ## @return a virtual_event_presenter_details
            ## 
            def presenter_details
                return @presenter_details
            end
            ## 
            ## Sets the presenterDetails property value. Other details about the presenter. This property returns null when the virtual event type is virtualEventTownhall.
            ## @param value Value to set for the presenterDetails property.
            ## @return a void
            ## 
            def presenter_details=(value)
                @presenter_details = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("email", @email)
                writer.write_object_value("identity", @identity)
                writer.write_object_value("presenterDetails", @presenter_details)
            end
        end
    end
end

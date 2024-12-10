require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class VirtualEventWebinarRegistrationConfiguration < MicrosoftGraph::Models::VirtualEventRegistrationConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The isManualApprovalEnabled property
            @is_manual_approval_enabled
            ## 
            # The isWaitlistEnabled property
            @is_waitlist_enabled
            ## 
            ## Instantiates a new VirtualEventWebinarRegistrationConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a virtual_event_webinar_registration_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return VirtualEventWebinarRegistrationConfiguration.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "isManualApprovalEnabled" => lambda {|n| @is_manual_approval_enabled = n.get_boolean_value() },
                    "isWaitlistEnabled" => lambda {|n| @is_waitlist_enabled = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the isManualApprovalEnabled property value. The isManualApprovalEnabled property
            ## @return a boolean
            ## 
            def is_manual_approval_enabled
                return @is_manual_approval_enabled
            end
            ## 
            ## Sets the isManualApprovalEnabled property value. The isManualApprovalEnabled property
            ## @param value Value to set for the isManualApprovalEnabled property.
            ## @return a void
            ## 
            def is_manual_approval_enabled=(value)
                @is_manual_approval_enabled = value
            end
            ## 
            ## Gets the isWaitlistEnabled property value. The isWaitlistEnabled property
            ## @return a boolean
            ## 
            def is_waitlist_enabled
                return @is_waitlist_enabled
            end
            ## 
            ## Sets the isWaitlistEnabled property value. The isWaitlistEnabled property
            ## @param value Value to set for the isWaitlistEnabled property.
            ## @return a void
            ## 
            def is_waitlist_enabled=(value)
                @is_waitlist_enabled = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("isManualApprovalEnabled", @is_manual_approval_enabled)
                writer.write_boolean_value("isWaitlistEnabled", @is_waitlist_enabled)
            end
        end
    end
end

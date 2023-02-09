require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # A termsAndConditionsAcceptanceStatus entity represents the acceptance status of a given Terms and Conditions (T&C) policy by a given user. Users must accept the most up-to-date version of the terms in order to retain access to the Company Portal.
        class TermsAndConditionsAcceptanceStatus < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # DateTime when the terms were last accepted by the user.
            @accepted_date_time
            ## 
            # Most recent version number of the T&C accepted by the user.
            @accepted_version
            ## 
            # Navigation link to the terms and conditions that are assigned.
            @terms_and_conditions
            ## 
            # Display name of the user whose acceptance the entity represents.
            @user_display_name
            ## 
            # The userPrincipalName of the User that accepted the term.
            @user_principal_name
            ## 
            ## Gets the acceptedDateTime property value. DateTime when the terms were last accepted by the user.
            ## @return a date_time
            ## 
            def accepted_date_time
                return @accepted_date_time
            end
            ## 
            ## Sets the acceptedDateTime property value. DateTime when the terms were last accepted by the user.
            ## @param value Value to set for the accepted_date_time property.
            ## @return a void
            ## 
            def accepted_date_time=(value)
                @accepted_date_time = value
            end
            ## 
            ## Gets the acceptedVersion property value. Most recent version number of the T&C accepted by the user.
            ## @return a integer
            ## 
            def accepted_version
                return @accepted_version
            end
            ## 
            ## Sets the acceptedVersion property value. Most recent version number of the T&C accepted by the user.
            ## @param value Value to set for the accepted_version property.
            ## @return a void
            ## 
            def accepted_version=(value)
                @accepted_version = value
            end
            ## 
            ## Instantiates a new termsAndConditionsAcceptanceStatus and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a terms_and_conditions_acceptance_status
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TermsAndConditionsAcceptanceStatus.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "acceptedDateTime" => lambda {|n| @accepted_date_time = n.get_date_time_value() },
                    "acceptedVersion" => lambda {|n| @accepted_version = n.get_number_value() },
                    "termsAndConditions" => lambda {|n| @terms_and_conditions = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::TermsAndConditions.create_from_discriminator_value(pn) }) },
                    "userDisplayName" => lambda {|n| @user_display_name = n.get_string_value() },
                    "userPrincipalName" => lambda {|n| @user_principal_name = n.get_string_value() },
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
                writer.write_date_time_value("acceptedDateTime", @accepted_date_time)
                writer.write_number_value("acceptedVersion", @accepted_version)
                writer.write_object_value("termsAndConditions", @terms_and_conditions)
                writer.write_string_value("userDisplayName", @user_display_name)
                writer.write_string_value("userPrincipalName", @user_principal_name)
            end
            ## 
            ## Gets the termsAndConditions property value. Navigation link to the terms and conditions that are assigned.
            ## @return a terms_and_conditions
            ## 
            def terms_and_conditions
                return @terms_and_conditions
            end
            ## 
            ## Sets the termsAndConditions property value. Navigation link to the terms and conditions that are assigned.
            ## @param value Value to set for the terms_and_conditions property.
            ## @return a void
            ## 
            def terms_and_conditions=(value)
                @terms_and_conditions = value
            end
            ## 
            ## Gets the userDisplayName property value. Display name of the user whose acceptance the entity represents.
            ## @return a string
            ## 
            def user_display_name
                return @user_display_name
            end
            ## 
            ## Sets the userDisplayName property value. Display name of the user whose acceptance the entity represents.
            ## @param value Value to set for the user_display_name property.
            ## @return a void
            ## 
            def user_display_name=(value)
                @user_display_name = value
            end
            ## 
            ## Gets the userPrincipalName property value. The userPrincipalName of the User that accepted the term.
            ## @return a string
            ## 
            def user_principal_name
                return @user_principal_name
            end
            ## 
            ## Sets the userPrincipalName property value. The userPrincipalName of the User that accepted the term.
            ## @param value Value to set for the user_principal_name property.
            ## @return a void
            ## 
            def user_principal_name=(value)
                @user_principal_name = value
            end
        end
    end
end

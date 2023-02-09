require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Agreement < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Read-only. Information about acceptances of this agreement.
            @acceptances
            ## 
            # Display name of the agreement. The display name is used for internal tracking of the agreement but is not shown to end users who view the agreement. Supports $filter (eq).
            @display_name
            ## 
            # Default PDF linked to this agreement.
            @file
            ## 
            # PDFs linked to this agreement. This property is in the process of being deprecated. Use the  file property instead. Supports $expand.
            @files
            ## 
            # Indicates whether end users are required to accept this agreement on every device that they access it from. The end user is required to register their device in Azure AD, if they haven't already done so. Supports $filter (eq).
            @is_per_device_acceptance_required
            ## 
            # Indicates whether the user has to expand the agreement before accepting. Supports $filter (eq).
            @is_viewing_before_acceptance_required
            ## 
            # Expiration schedule and frequency of agreement for all users. Supports $filter (eq).
            @terms_expiration
            ## 
            # The duration after which the user must re-accept the terms of use. The value is represented in ISO 8601 format for durations. Supports $filter (eq).
            @user_reaccept_required_frequency
            ## 
            ## Gets the acceptances property value. Read-only. Information about acceptances of this agreement.
            ## @return a agreement_acceptance
            ## 
            def acceptances
                return @acceptances
            end
            ## 
            ## Sets the acceptances property value. Read-only. Information about acceptances of this agreement.
            ## @param value Value to set for the acceptances property.
            ## @return a void
            ## 
            def acceptances=(value)
                @acceptances = value
            end
            ## 
            ## Instantiates a new agreement and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a agreement
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Agreement.new
            end
            ## 
            ## Gets the displayName property value. Display name of the agreement. The display name is used for internal tracking of the agreement but is not shown to end users who view the agreement. Supports $filter (eq).
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Display name of the agreement. The display name is used for internal tracking of the agreement but is not shown to end users who view the agreement. Supports $filter (eq).
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the file property value. Default PDF linked to this agreement.
            ## @return a agreement_file
            ## 
            def file
                return @file
            end
            ## 
            ## Sets the file property value. Default PDF linked to this agreement.
            ## @param value Value to set for the file property.
            ## @return a void
            ## 
            def file=(value)
                @file = value
            end
            ## 
            ## Gets the files property value. PDFs linked to this agreement. This property is in the process of being deprecated. Use the  file property instead. Supports $expand.
            ## @return a agreement_file_localization
            ## 
            def files
                return @files
            end
            ## 
            ## Sets the files property value. PDFs linked to this agreement. This property is in the process of being deprecated. Use the  file property instead. Supports $expand.
            ## @param value Value to set for the files property.
            ## @return a void
            ## 
            def files=(value)
                @files = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "acceptances" => lambda {|n| @acceptances = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AgreementAcceptance.create_from_discriminator_value(pn) }) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "file" => lambda {|n| @file = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AgreementFile.create_from_discriminator_value(pn) }) },
                    "files" => lambda {|n| @files = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AgreementFileLocalization.create_from_discriminator_value(pn) }) },
                    "isPerDeviceAcceptanceRequired" => lambda {|n| @is_per_device_acceptance_required = n.get_boolean_value() },
                    "isViewingBeforeAcceptanceRequired" => lambda {|n| @is_viewing_before_acceptance_required = n.get_boolean_value() },
                    "termsExpiration" => lambda {|n| @terms_expiration = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::TermsExpiration.create_from_discriminator_value(pn) }) },
                    "userReacceptRequiredFrequency" => lambda {|n| @user_reaccept_required_frequency = n.get_duration_value() },
                })
            end
            ## 
            ## Gets the isPerDeviceAcceptanceRequired property value. Indicates whether end users are required to accept this agreement on every device that they access it from. The end user is required to register their device in Azure AD, if they haven't already done so. Supports $filter (eq).
            ## @return a boolean
            ## 
            def is_per_device_acceptance_required
                return @is_per_device_acceptance_required
            end
            ## 
            ## Sets the isPerDeviceAcceptanceRequired property value. Indicates whether end users are required to accept this agreement on every device that they access it from. The end user is required to register their device in Azure AD, if they haven't already done so. Supports $filter (eq).
            ## @param value Value to set for the is_per_device_acceptance_required property.
            ## @return a void
            ## 
            def is_per_device_acceptance_required=(value)
                @is_per_device_acceptance_required = value
            end
            ## 
            ## Gets the isViewingBeforeAcceptanceRequired property value. Indicates whether the user has to expand the agreement before accepting. Supports $filter (eq).
            ## @return a boolean
            ## 
            def is_viewing_before_acceptance_required
                return @is_viewing_before_acceptance_required
            end
            ## 
            ## Sets the isViewingBeforeAcceptanceRequired property value. Indicates whether the user has to expand the agreement before accepting. Supports $filter (eq).
            ## @param value Value to set for the is_viewing_before_acceptance_required property.
            ## @return a void
            ## 
            def is_viewing_before_acceptance_required=(value)
                @is_viewing_before_acceptance_required = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("acceptances", @acceptances)
                writer.write_string_value("displayName", @display_name)
                writer.write_object_value("file", @file)
                writer.write_collection_of_object_values("files", @files)
                writer.write_boolean_value("isPerDeviceAcceptanceRequired", @is_per_device_acceptance_required)
                writer.write_boolean_value("isViewingBeforeAcceptanceRequired", @is_viewing_before_acceptance_required)
                writer.write_object_value("termsExpiration", @terms_expiration)
                writer.write_duration_value("userReacceptRequiredFrequency", @user_reaccept_required_frequency)
            end
            ## 
            ## Gets the termsExpiration property value. Expiration schedule and frequency of agreement for all users. Supports $filter (eq).
            ## @return a terms_expiration
            ## 
            def terms_expiration
                return @terms_expiration
            end
            ## 
            ## Sets the termsExpiration property value. Expiration schedule and frequency of agreement for all users. Supports $filter (eq).
            ## @param value Value to set for the terms_expiration property.
            ## @return a void
            ## 
            def terms_expiration=(value)
                @terms_expiration = value
            end
            ## 
            ## Gets the userReacceptRequiredFrequency property value. The duration after which the user must re-accept the terms of use. The value is represented in ISO 8601 format for durations. Supports $filter (eq).
            ## @return a microsoft_kiota_abstractions::_i_s_o_duration
            ## 
            def user_reaccept_required_frequency
                return @user_reaccept_required_frequency
            end
            ## 
            ## Sets the userReacceptRequiredFrequency property value. The duration after which the user must re-accept the terms of use. The value is represented in ISO 8601 format for durations. Supports $filter (eq).
            ## @param value Value to set for the user_reaccept_required_frequency property.
            ## @return a void
            ## 
            def user_reaccept_required_frequency=(value)
                @user_reaccept_required_frequency = value
            end
        end
    end
end

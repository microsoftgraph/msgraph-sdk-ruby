require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class TemporaryAccessPassAuthenticationMethod < MicrosoftGraph::Models::AuthenticationMethod
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The date and time when the Temporary Access Pass was created.
            @created_date_time
            ## 
            # The state of the authentication method that indicates whether it's currently usable by the user.
            @is_usable
            ## 
            # Determines whether the pass is limited to a one-time use. If true, the pass can be used once; if false, the pass can be used multiple times within the Temporary Access Pass lifetime.
            @is_usable_once
            ## 
            # The lifetime of the Temporary Access Pass in minutes starting at startDateTime. Must be between 10 and 43200 inclusive (equivalent to 30 days).
            @lifetime_in_minutes
            ## 
            # Details about the usability state (isUsable). Reasons can include: EnabledByPolicy, DisabledByPolicy, Expired, NotYetValid, OneTimeUsed.
            @method_usability_reason
            ## 
            # The date and time when the Temporary Access Pass becomes available to use and when isUsable is true is enforced.
            @start_date_time
            ## 
            # The Temporary Access Pass used to authenticate. Returned only on creation of a new temporaryAccessPassAuthenticationMethod object; Hidden in subsequent read operations and returned as null with GET.
            @temporary_access_pass
            ## 
            ## Instantiates a new TemporaryAccessPassAuthenticationMethod and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.temporaryAccessPassAuthenticationMethod"
            end
            ## 
            ## Gets the createdDateTime property value. The date and time when the Temporary Access Pass was created.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The date and time when the Temporary Access Pass was created.
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a temporary_access_pass_authentication_method
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TemporaryAccessPassAuthenticationMethod.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "isUsable" => lambda {|n| @is_usable = n.get_boolean_value() },
                    "isUsableOnce" => lambda {|n| @is_usable_once = n.get_boolean_value() },
                    "lifetimeInMinutes" => lambda {|n| @lifetime_in_minutes = n.get_number_value() },
                    "methodUsabilityReason" => lambda {|n| @method_usability_reason = n.get_string_value() },
                    "startDateTime" => lambda {|n| @start_date_time = n.get_date_time_value() },
                    "temporaryAccessPass" => lambda {|n| @temporary_access_pass = n.get_string_value() },
                })
            end
            ## 
            ## Gets the isUsable property value. The state of the authentication method that indicates whether it's currently usable by the user.
            ## @return a boolean
            ## 
            def is_usable
                return @is_usable
            end
            ## 
            ## Sets the isUsable property value. The state of the authentication method that indicates whether it's currently usable by the user.
            ## @param value Value to set for the is_usable property.
            ## @return a void
            ## 
            def is_usable=(value)
                @is_usable = value
            end
            ## 
            ## Gets the isUsableOnce property value. Determines whether the pass is limited to a one-time use. If true, the pass can be used once; if false, the pass can be used multiple times within the Temporary Access Pass lifetime.
            ## @return a boolean
            ## 
            def is_usable_once
                return @is_usable_once
            end
            ## 
            ## Sets the isUsableOnce property value. Determines whether the pass is limited to a one-time use. If true, the pass can be used once; if false, the pass can be used multiple times within the Temporary Access Pass lifetime.
            ## @param value Value to set for the is_usable_once property.
            ## @return a void
            ## 
            def is_usable_once=(value)
                @is_usable_once = value
            end
            ## 
            ## Gets the lifetimeInMinutes property value. The lifetime of the Temporary Access Pass in minutes starting at startDateTime. Must be between 10 and 43200 inclusive (equivalent to 30 days).
            ## @return a integer
            ## 
            def lifetime_in_minutes
                return @lifetime_in_minutes
            end
            ## 
            ## Sets the lifetimeInMinutes property value. The lifetime of the Temporary Access Pass in minutes starting at startDateTime. Must be between 10 and 43200 inclusive (equivalent to 30 days).
            ## @param value Value to set for the lifetime_in_minutes property.
            ## @return a void
            ## 
            def lifetime_in_minutes=(value)
                @lifetime_in_minutes = value
            end
            ## 
            ## Gets the methodUsabilityReason property value. Details about the usability state (isUsable). Reasons can include: EnabledByPolicy, DisabledByPolicy, Expired, NotYetValid, OneTimeUsed.
            ## @return a string
            ## 
            def method_usability_reason
                return @method_usability_reason
            end
            ## 
            ## Sets the methodUsabilityReason property value. Details about the usability state (isUsable). Reasons can include: EnabledByPolicy, DisabledByPolicy, Expired, NotYetValid, OneTimeUsed.
            ## @param value Value to set for the method_usability_reason property.
            ## @return a void
            ## 
            def method_usability_reason=(value)
                @method_usability_reason = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_boolean_value("isUsable", @is_usable)
                writer.write_boolean_value("isUsableOnce", @is_usable_once)
                writer.write_number_value("lifetimeInMinutes", @lifetime_in_minutes)
                writer.write_string_value("methodUsabilityReason", @method_usability_reason)
                writer.write_date_time_value("startDateTime", @start_date_time)
                writer.write_string_value("temporaryAccessPass", @temporary_access_pass)
            end
            ## 
            ## Gets the startDateTime property value. The date and time when the Temporary Access Pass becomes available to use and when isUsable is true is enforced.
            ## @return a date_time
            ## 
            def start_date_time
                return @start_date_time
            end
            ## 
            ## Sets the startDateTime property value. The date and time when the Temporary Access Pass becomes available to use and when isUsable is true is enforced.
            ## @param value Value to set for the start_date_time property.
            ## @return a void
            ## 
            def start_date_time=(value)
                @start_date_time = value
            end
            ## 
            ## Gets the temporaryAccessPass property value. The Temporary Access Pass used to authenticate. Returned only on creation of a new temporaryAccessPassAuthenticationMethod object; Hidden in subsequent read operations and returned as null with GET.
            ## @return a string
            ## 
            def temporary_access_pass
                return @temporary_access_pass
            end
            ## 
            ## Sets the temporaryAccessPass property value. The Temporary Access Pass used to authenticate. Returned only on creation of a new temporaryAccessPassAuthenticationMethod object; Hidden in subsequent read operations and returned as null with GET.
            ## @param value Value to set for the temporary_access_pass property.
            ## @return a void
            ## 
            def temporary_access_pass=(value)
                @temporary_access_pass = value
            end
        end
    end
end

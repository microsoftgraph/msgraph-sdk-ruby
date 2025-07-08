require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ServiceApp < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The Entra ID application ID.
            @application
            ## 
            # Timestamp of the effective activation of the service app.
            @effective_date_time
            ## 
            # Identity of the person who last modified the entity.
            @last_modified_by
            ## 
            # Timestamp of the last modification of the entity.
            @last_modified_date_time
            ## 
            # Timestamp of the creation of the service app entity.
            @registration_date_time
            ## 
            # The status of the service app. This value indicates whether or not the application can be used to control the backup service. The possible values are: inactive, active, pendingActive, pendingInactive, unknownFutureValue.
            @status
            ## 
            ## Gets the application property value. The Entra ID application ID.
            ## @return a identity
            ## 
            def application
                return @application
            end
            ## 
            ## Sets the application property value. The Entra ID application ID.
            ## @param value Value to set for the application property.
            ## @return a void
            ## 
            def application=(value)
                @application = value
            end
            ## 
            ## Instantiates a new ServiceApp and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a service_app
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ServiceApp.new
            end
            ## 
            ## Gets the effectiveDateTime property value. Timestamp of the effective activation of the service app.
            ## @return a date_time
            ## 
            def effective_date_time
                return @effective_date_time
            end
            ## 
            ## Sets the effectiveDateTime property value. Timestamp of the effective activation of the service app.
            ## @param value Value to set for the effectiveDateTime property.
            ## @return a void
            ## 
            def effective_date_time=(value)
                @effective_date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "application" => lambda {|n| @application = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Identity.create_from_discriminator_value(pn) }) },
                    "effectiveDateTime" => lambda {|n| @effective_date_time = n.get_date_time_value() },
                    "lastModifiedBy" => lambda {|n| @last_modified_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "registrationDateTime" => lambda {|n| @registration_date_time = n.get_date_time_value() },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraph::Models::ServiceAppStatus) },
                })
            end
            ## 
            ## Gets the lastModifiedBy property value. Identity of the person who last modified the entity.
            ## @return a identity_set
            ## 
            def last_modified_by
                return @last_modified_by
            end
            ## 
            ## Sets the lastModifiedBy property value. Identity of the person who last modified the entity.
            ## @param value Value to set for the lastModifiedBy property.
            ## @return a void
            ## 
            def last_modified_by=(value)
                @last_modified_by = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. Timestamp of the last modification of the entity.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. Timestamp of the last modification of the entity.
            ## @param value Value to set for the lastModifiedDateTime property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the registrationDateTime property value. Timestamp of the creation of the service app entity.
            ## @return a date_time
            ## 
            def registration_date_time
                return @registration_date_time
            end
            ## 
            ## Sets the registrationDateTime property value. Timestamp of the creation of the service app entity.
            ## @param value Value to set for the registrationDateTime property.
            ## @return a void
            ## 
            def registration_date_time=(value)
                @registration_date_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("application", @application)
                writer.write_date_time_value("effectiveDateTime", @effective_date_time)
                writer.write_object_value("lastModifiedBy", @last_modified_by)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_date_time_value("registrationDateTime", @registration_date_time)
                writer.write_enum_value("status", @status)
            end
            ## 
            ## Gets the status property value. The status of the service app. This value indicates whether or not the application can be used to control the backup service. The possible values are: inactive, active, pendingActive, pendingInactive, unknownFutureValue.
            ## @return a service_app_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The status of the service app. This value indicates whether or not the application can be used to control the backup service. The possible values are: inactive, active, pendingActive, pendingInactive, unknownFutureValue.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
        end
    end
end

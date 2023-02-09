require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AuditActivityInitiator
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # If the resource initiating the activity is an app, this property indicates all the app related information like appId, Name, servicePrincipalId, Name.
            @app
            ## 
            # The OdataType property
            @odata_type
            ## 
            # If the resource initiating the activity is a user, this property Indicates all the user related information like userId, Name, UserPrinicpalName.
            @user
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the app property value. If the resource initiating the activity is an app, this property indicates all the app related information like appId, Name, servicePrincipalId, Name.
            ## @return a app_identity
            ## 
            def app
                return @app
            end
            ## 
            ## Sets the app property value. If the resource initiating the activity is an app, this property indicates all the app related information like appId, Name, servicePrincipalId, Name.
            ## @param value Value to set for the app property.
            ## @return a void
            ## 
            def app=(value)
                @app = value
            end
            ## 
            ## Instantiates a new auditActivityInitiator and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a audit_activity_initiator
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AuditActivityInitiator.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "app" => lambda {|n| @app = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AppIdentity.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "user" => lambda {|n| @user = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::UserIdentity.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("app", @app)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("user", @user)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the user property value. If the resource initiating the activity is a user, this property Indicates all the user related information like userId, Name, UserPrinicpalName.
            ## @return a user_identity
            ## 
            def user
                return @user
            end
            ## 
            ## Sets the user property value. If the resource initiating the activity is a user, this property Indicates all the user related information like userId, Name, UserPrinicpalName.
            ## @param value Value to set for the user property.
            ## @return a void
            ## 
            def user=(value)
                @user = value
            end
        end
    end
end

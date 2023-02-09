require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AlertHistoryState
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The appId property
            @app_id
            ## 
            # The assignedTo property
            @assigned_to
            ## 
            # The comments property
            @comments
            ## 
            # The feedback property
            @feedback
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The status property
            @status
            ## 
            # The updatedDateTime property
            @updated_date_time
            ## 
            # The user property
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
            ## Gets the appId property value. The appId property
            ## @return a string
            ## 
            def app_id
                return @app_id
            end
            ## 
            ## Sets the appId property value. The appId property
            ## @param value Value to set for the app_id property.
            ## @return a void
            ## 
            def app_id=(value)
                @app_id = value
            end
            ## 
            ## Gets the assignedTo property value. The assignedTo property
            ## @return a string
            ## 
            def assigned_to
                return @assigned_to
            end
            ## 
            ## Sets the assignedTo property value. The assignedTo property
            ## @param value Value to set for the assigned_to property.
            ## @return a void
            ## 
            def assigned_to=(value)
                @assigned_to = value
            end
            ## 
            ## Gets the comments property value. The comments property
            ## @return a string
            ## 
            def comments
                return @comments
            end
            ## 
            ## Sets the comments property value. The comments property
            ## @param value Value to set for the comments property.
            ## @return a void
            ## 
            def comments=(value)
                @comments = value
            end
            ## 
            ## Instantiates a new alertHistoryState and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a alert_history_state
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AlertHistoryState.new
            end
            ## 
            ## Gets the feedback property value. The feedback property
            ## @return a alert_feedback
            ## 
            def feedback
                return @feedback
            end
            ## 
            ## Sets the feedback property value. The feedback property
            ## @param value Value to set for the feedback property.
            ## @return a void
            ## 
            def feedback=(value)
                @feedback = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "appId" => lambda {|n| @app_id = n.get_string_value() },
                    "assignedTo" => lambda {|n| @assigned_to = n.get_string_value() },
                    "comments" => lambda {|n| @comments = n.get_collection_of_primitive_values(String) },
                    "feedback" => lambda {|n| @feedback = n.get_enum_value(MicrosoftGraph::Models::AlertFeedback) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraph::Models::AlertStatus) },
                    "updatedDateTime" => lambda {|n| @updated_date_time = n.get_date_time_value() },
                    "user" => lambda {|n| @user = n.get_string_value() },
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
                writer.write_string_value("appId", @app_id)
                writer.write_string_value("assignedTo", @assigned_to)
                writer.write_collection_of_primitive_values("comments", @comments)
                writer.write_enum_value("feedback", @feedback)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("status", @status)
                writer.write_date_time_value("updatedDateTime", @updated_date_time)
                writer.write_string_value("user", @user)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the status property value. The status property
            ## @return a alert_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The status property
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
            ## 
            ## Gets the updatedDateTime property value. The updatedDateTime property
            ## @return a date_time
            ## 
            def updated_date_time
                return @updated_date_time
            end
            ## 
            ## Sets the updatedDateTime property value. The updatedDateTime property
            ## @param value Value to set for the updated_date_time property.
            ## @return a void
            ## 
            def updated_date_time=(value)
                @updated_date_time = value
            end
            ## 
            ## Gets the user property value. The user property
            ## @return a string
            ## 
            def user
                return @user
            end
            ## 
            ## Sets the user property value. The user property
            ## @param value Value to set for the user property.
            ## @return a void
            ## 
            def user=(value)
                @user = value
            end
        end
    end
end

require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class TrainingReminderNotification < MicrosoftGraph::Models::BaseEndUserNotification
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Configurable frequency for the reminder email introduced during simulation creation. Possible values are: unknown, weekly, biWeekly, unknownFutureValue.
            @delivery_frequency
            ## 
            ## Instantiates a new trainingReminderNotification and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.trainingReminderNotification"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a training_reminder_notification
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TrainingReminderNotification.new
            end
            ## 
            ## Gets the deliveryFrequency property value. Configurable frequency for the reminder email introduced during simulation creation. Possible values are: unknown, weekly, biWeekly, unknownFutureValue.
            ## @return a training_reminder_notification_delivery_frequency
            ## 
            def delivery_frequency
                return @delivery_frequency
            end
            ## 
            ## Sets the deliveryFrequency property value. Configurable frequency for the reminder email introduced during simulation creation. Possible values are: unknown, weekly, biWeekly, unknownFutureValue.
            ## @param value Value to set for the deliveryFrequency property.
            ## @return a void
            ## 
            def delivery_frequency=(value)
                @delivery_frequency = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "deliveryFrequency" => lambda {|n| @delivery_frequency = n.get_enum_value(MicrosoftGraph::Models::TrainingReminderNotificationDeliveryFrequency) },
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
                writer.write_enum_value("deliveryFrequency", @delivery_frequency)
            end
        end
    end
end

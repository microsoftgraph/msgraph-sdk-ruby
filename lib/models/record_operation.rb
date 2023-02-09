require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class RecordOperation < MicrosoftGraph::Models::CommsOperation
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The access token required to retrieve the recording.
            @recording_access_token
            ## 
            # The location where the recording is located.
            @recording_location
            ## 
            ## Instantiates a new RecordOperation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a record_operation
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return RecordOperation.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "recordingAccessToken" => lambda {|n| @recording_access_token = n.get_string_value() },
                    "recordingLocation" => lambda {|n| @recording_location = n.get_string_value() },
                })
            end
            ## 
            ## Gets the recordingAccessToken property value. The access token required to retrieve the recording.
            ## @return a string
            ## 
            def recording_access_token
                return @recording_access_token
            end
            ## 
            ## Sets the recordingAccessToken property value. The access token required to retrieve the recording.
            ## @param value Value to set for the recording_access_token property.
            ## @return a void
            ## 
            def recording_access_token=(value)
                @recording_access_token = value
            end
            ## 
            ## Gets the recordingLocation property value. The location where the recording is located.
            ## @return a string
            ## 
            def recording_location
                return @recording_location
            end
            ## 
            ## Sets the recordingLocation property value. The location where the recording is located.
            ## @param value Value to set for the recording_location property.
            ## @return a void
            ## 
            def recording_location=(value)
                @recording_location = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("recordingAccessToken", @recording_access_token)
                writer.write_string_value("recordingLocation", @recording_location)
            end
        end
    end
end

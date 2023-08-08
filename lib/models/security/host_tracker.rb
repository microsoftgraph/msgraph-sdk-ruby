require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './security'

module MicrosoftGraph
    module Models
        module Security
            class HostTracker < MicrosoftGraph::Models::Security::Artifact
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The first date and time when this hostTracker was observed by Microsoft Defender Threat Intelligence. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014, is 2014-01-01T00:00:00Z.
                @first_seen_date_time
                ## 
                # The host property
                @host
                ## 
                # The kind of hostTracker that was detected. For example, GoogleAnalyticsID or JarmHash.
                @kind
                ## 
                # The most recent date and time when this hostTracker was observed by Microsoft Defender Threat Intelligence. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014, is 2014-01-01T00:00:00Z.
                @last_seen_date_time
                ## 
                # The identification value for the hostTracker.
                @value
                ## 
                ## Instantiates a new hostTracker and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                    @odata_type = "#microsoft.graph.security.hostTracker"
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a host_tracker
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return HostTracker.new
                end
                ## 
                ## Gets the firstSeenDateTime property value. The first date and time when this hostTracker was observed by Microsoft Defender Threat Intelligence. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014, is 2014-01-01T00:00:00Z.
                ## @return a date_time
                ## 
                def first_seen_date_time
                    return @first_seen_date_time
                end
                ## 
                ## Sets the firstSeenDateTime property value. The first date and time when this hostTracker was observed by Microsoft Defender Threat Intelligence. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014, is 2014-01-01T00:00:00Z.
                ## @param value Value to set for the firstSeenDateTime property.
                ## @return a void
                ## 
                def first_seen_date_time=(value)
                    @first_seen_date_time = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "firstSeenDateTime" => lambda {|n| @first_seen_date_time = n.get_date_time_value() },
                        "host" => lambda {|n| @host = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Security::Host.create_from_discriminator_value(pn) }) },
                        "kind" => lambda {|n| @kind = n.get_string_value() },
                        "lastSeenDateTime" => lambda {|n| @last_seen_date_time = n.get_date_time_value() },
                        "value" => lambda {|n| @value = n.get_string_value() },
                    })
                end
                ## 
                ## Gets the host property value. The host property
                ## @return a host
                ## 
                def host
                    return @host
                end
                ## 
                ## Sets the host property value. The host property
                ## @param value Value to set for the host property.
                ## @return a void
                ## 
                def host=(value)
                    @host = value
                end
                ## 
                ## Gets the kind property value. The kind of hostTracker that was detected. For example, GoogleAnalyticsID or JarmHash.
                ## @return a string
                ## 
                def kind
                    return @kind
                end
                ## 
                ## Sets the kind property value. The kind of hostTracker that was detected. For example, GoogleAnalyticsID or JarmHash.
                ## @param value Value to set for the kind property.
                ## @return a void
                ## 
                def kind=(value)
                    @kind = value
                end
                ## 
                ## Gets the lastSeenDateTime property value. The most recent date and time when this hostTracker was observed by Microsoft Defender Threat Intelligence. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014, is 2014-01-01T00:00:00Z.
                ## @return a date_time
                ## 
                def last_seen_date_time
                    return @last_seen_date_time
                end
                ## 
                ## Sets the lastSeenDateTime property value. The most recent date and time when this hostTracker was observed by Microsoft Defender Threat Intelligence. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014, is 2014-01-01T00:00:00Z.
                ## @param value Value to set for the lastSeenDateTime property.
                ## @return a void
                ## 
                def last_seen_date_time=(value)
                    @last_seen_date_time = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_date_time_value("firstSeenDateTime", @first_seen_date_time)
                    writer.write_object_value("host", @host)
                    writer.write_string_value("kind", @kind)
                    writer.write_date_time_value("lastSeenDateTime", @last_seen_date_time)
                    writer.write_string_value("value", @value)
                end
                ## 
                ## Gets the value property value. The identification value for the hostTracker.
                ## @return a string
                ## 
                def value
                    return @value
                end
                ## 
                ## Sets the value property value. The identification value for the hostTracker.
                ## @param value Value to set for the value property.
                ## @return a void
                ## 
                def value=(value)
                    @value = value
                end
            end
        end
    end
end

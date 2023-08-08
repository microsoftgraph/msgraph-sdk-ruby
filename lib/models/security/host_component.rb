require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './security'

module MicrosoftGraph
    module Models
        module Security
            class HostComponent < MicrosoftGraph::Models::Security::Artifact
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The type of component that was detected (for example, Operating System, Framework, Remote Access, or Server).
                @category
                ## 
                # The first date and time when Microsoft Defender Threat Intelligence observed this web component. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014, is 2014-01-01T00:00:00Z.
                @first_seen_date_time
                ## 
                # The host property
                @host
                ## 
                # The most recent date and time when Microsoft Defender Threat Intelligence observed this web component. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014, is 2014-01-01T00:00:00Z.
                @last_seen_date_time
                ## 
                # A name running on the artifact, for example, Microsoft IIS.
                @name
                ## 
                # The component version running on the artifact, for example, v8.5. This should not be assumed to be strictly numerical.
                @version
                ## 
                ## Gets the category property value. The type of component that was detected (for example, Operating System, Framework, Remote Access, or Server).
                ## @return a string
                ## 
                def category
                    return @category
                end
                ## 
                ## Sets the category property value. The type of component that was detected (for example, Operating System, Framework, Remote Access, or Server).
                ## @param value Value to set for the category property.
                ## @return a void
                ## 
                def category=(value)
                    @category = value
                end
                ## 
                ## Instantiates a new hostComponent and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                    @odata_type = "#microsoft.graph.security.hostComponent"
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a host_component
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return HostComponent.new
                end
                ## 
                ## Gets the firstSeenDateTime property value. The first date and time when Microsoft Defender Threat Intelligence observed this web component. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014, is 2014-01-01T00:00:00Z.
                ## @return a date_time
                ## 
                def first_seen_date_time
                    return @first_seen_date_time
                end
                ## 
                ## Sets the firstSeenDateTime property value. The first date and time when Microsoft Defender Threat Intelligence observed this web component. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014, is 2014-01-01T00:00:00Z.
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
                        "category" => lambda {|n| @category = n.get_string_value() },
                        "firstSeenDateTime" => lambda {|n| @first_seen_date_time = n.get_date_time_value() },
                        "host" => lambda {|n| @host = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Security::Host.create_from_discriminator_value(pn) }) },
                        "lastSeenDateTime" => lambda {|n| @last_seen_date_time = n.get_date_time_value() },
                        "name" => lambda {|n| @name = n.get_string_value() },
                        "version" => lambda {|n| @version = n.get_string_value() },
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
                ## Gets the lastSeenDateTime property value. The most recent date and time when Microsoft Defender Threat Intelligence observed this web component. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014, is 2014-01-01T00:00:00Z.
                ## @return a date_time
                ## 
                def last_seen_date_time
                    return @last_seen_date_time
                end
                ## 
                ## Sets the lastSeenDateTime property value. The most recent date and time when Microsoft Defender Threat Intelligence observed this web component. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014, is 2014-01-01T00:00:00Z.
                ## @param value Value to set for the lastSeenDateTime property.
                ## @return a void
                ## 
                def last_seen_date_time=(value)
                    @last_seen_date_time = value
                end
                ## 
                ## Gets the name property value. A name running on the artifact, for example, Microsoft IIS.
                ## @return a string
                ## 
                def name
                    return @name
                end
                ## 
                ## Sets the name property value. A name running on the artifact, for example, Microsoft IIS.
                ## @param value Value to set for the name property.
                ## @return a void
                ## 
                def name=(value)
                    @name = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_string_value("category", @category)
                    writer.write_date_time_value("firstSeenDateTime", @first_seen_date_time)
                    writer.write_object_value("host", @host)
                    writer.write_date_time_value("lastSeenDateTime", @last_seen_date_time)
                    writer.write_string_value("name", @name)
                    writer.write_string_value("version", @version)
                end
                ## 
                ## Gets the version property value. The component version running on the artifact, for example, v8.5. This should not be assumed to be strictly numerical.
                ## @return a string
                ## 
                def version
                    return @version
                end
                ## 
                ## Sets the version property value. The component version running on the artifact, for example, v8.5. This should not be assumed to be strictly numerical.
                ## @param value Value to set for the version property.
                ## @return a void
                ## 
                def version=(value)
                    @version = value
                end
            end
        end
    end
end

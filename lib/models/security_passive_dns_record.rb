require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SecurityPassiveDnsRecord < MicrosoftGraph::Models::SecurityArtifact
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The artifact property
            @artifact
            ## 
            # The date and time that this passiveDnsRecord entry was collected by Microsoft. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @collected_date_time
            ## 
            # The date and time when this passiveDnsRecord entry was first seen. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @first_seen_date_time
            ## 
            # The date and time when this passiveDnsRecord entry was most recently seen. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @last_seen_date_time
            ## 
            # The parentHost property
            @parent_host
            ## 
            # The DNS record type for this passiveDnsRecord entry.
            @record_type
            ## 
            ## Gets the artifact property value. The artifact property
            ## @return a security_artifact
            ## 
            def artifact
                return @artifact
            end
            ## 
            ## Sets the artifact property value. The artifact property
            ## @param value Value to set for the artifact property.
            ## @return a void
            ## 
            def artifact=(value)
                @artifact = value
            end
            ## 
            ## Gets the collectedDateTime property value. The date and time that this passiveDnsRecord entry was collected by Microsoft. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def collected_date_time
                return @collected_date_time
            end
            ## 
            ## Sets the collectedDateTime property value. The date and time that this passiveDnsRecord entry was collected by Microsoft. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the collectedDateTime property.
            ## @return a void
            ## 
            def collected_date_time=(value)
                @collected_date_time = value
            end
            ## 
            ## Instantiates a new SecurityPassiveDnsRecord and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.security.passiveDnsRecord"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_passive_dns_record
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityPassiveDnsRecord.new
            end
            ## 
            ## Gets the firstSeenDateTime property value. The date and time when this passiveDnsRecord entry was first seen. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def first_seen_date_time
                return @first_seen_date_time
            end
            ## 
            ## Sets the firstSeenDateTime property value. The date and time when this passiveDnsRecord entry was first seen. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
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
                    "artifact" => lambda {|n| @artifact = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecurityArtifact.create_from_discriminator_value(pn) }) },
                    "collectedDateTime" => lambda {|n| @collected_date_time = n.get_date_time_value() },
                    "firstSeenDateTime" => lambda {|n| @first_seen_date_time = n.get_date_time_value() },
                    "lastSeenDateTime" => lambda {|n| @last_seen_date_time = n.get_date_time_value() },
                    "parentHost" => lambda {|n| @parent_host = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecurityHost.create_from_discriminator_value(pn) }) },
                    "recordType" => lambda {|n| @record_type = n.get_string_value() },
                })
            end
            ## 
            ## Gets the lastSeenDateTime property value. The date and time when this passiveDnsRecord entry was most recently seen. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def last_seen_date_time
                return @last_seen_date_time
            end
            ## 
            ## Sets the lastSeenDateTime property value. The date and time when this passiveDnsRecord entry was most recently seen. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the lastSeenDateTime property.
            ## @return a void
            ## 
            def last_seen_date_time=(value)
                @last_seen_date_time = value
            end
            ## 
            ## Gets the parentHost property value. The parentHost property
            ## @return a security_host
            ## 
            def parent_host
                return @parent_host
            end
            ## 
            ## Sets the parentHost property value. The parentHost property
            ## @param value Value to set for the parentHost property.
            ## @return a void
            ## 
            def parent_host=(value)
                @parent_host = value
            end
            ## 
            ## Gets the recordType property value. The DNS record type for this passiveDnsRecord entry.
            ## @return a string
            ## 
            def record_type
                return @record_type
            end
            ## 
            ## Sets the recordType property value. The DNS record type for this passiveDnsRecord entry.
            ## @param value Value to set for the recordType property.
            ## @return a void
            ## 
            def record_type=(value)
                @record_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("artifact", @artifact)
                writer.write_date_time_value("collectedDateTime", @collected_date_time)
                writer.write_date_time_value("firstSeenDateTime", @first_seen_date_time)
                writer.write_date_time_value("lastSeenDateTime", @last_seen_date_time)
                writer.write_object_value("parentHost", @parent_host)
                writer.write_string_value("recordType", @record_type)
            end
        end
    end
end

require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './security'

module MicrosoftGraph
    module Models
        module Security
            class IntelligenceProfileIndicator < MicrosoftGraph::Models::Security::Indicator
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Designate when an artifact was first used actively in an attack, when a particular sample was compiled, or if neither of those could be ascertained when the file was first seen in public repositories (for example, VirusTotal, ANY.RUN, Hybrid Analysis) or reported publicly.
                @first_seen_date_time
                ## 
                # Designate when an artifact was most recently used actively in an attack, when a particular sample was compiled, or if neither of those could be ascertained when the file was first seen in public repositories (for example, VirusTotal, ANY.RUN, Hybrid Analysis) or reported publicly.
                @last_seen_date_time
                ## 
                ## Instantiates a new intelligenceProfileIndicator and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                    @odata_type = "#microsoft.graph.security.intelligenceProfileIndicator"
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a intelligence_profile_indicator
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return IntelligenceProfileIndicator.new
                end
                ## 
                ## Gets the firstSeenDateTime property value. Designate when an artifact was first used actively in an attack, when a particular sample was compiled, or if neither of those could be ascertained when the file was first seen in public repositories (for example, VirusTotal, ANY.RUN, Hybrid Analysis) or reported publicly.
                ## @return a date_time
                ## 
                def first_seen_date_time
                    return @first_seen_date_time
                end
                ## 
                ## Sets the firstSeenDateTime property value. Designate when an artifact was first used actively in an attack, when a particular sample was compiled, or if neither of those could be ascertained when the file was first seen in public repositories (for example, VirusTotal, ANY.RUN, Hybrid Analysis) or reported publicly.
                ## @param value Value to set for the first_seen_date_time property.
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
                        "lastSeenDateTime" => lambda {|n| @last_seen_date_time = n.get_date_time_value() },
                    })
                end
                ## 
                ## Gets the lastSeenDateTime property value. Designate when an artifact was most recently used actively in an attack, when a particular sample was compiled, or if neither of those could be ascertained when the file was first seen in public repositories (for example, VirusTotal, ANY.RUN, Hybrid Analysis) or reported publicly.
                ## @return a date_time
                ## 
                def last_seen_date_time
                    return @last_seen_date_time
                end
                ## 
                ## Sets the lastSeenDateTime property value. Designate when an artifact was most recently used actively in an attack, when a particular sample was compiled, or if neither of those could be ascertained when the file was first seen in public repositories (for example, VirusTotal, ANY.RUN, Hybrid Analysis) or reported publicly.
                ## @param value Value to set for the last_seen_date_time property.
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
                    writer.write_date_time_value("lastSeenDateTime", @last_seen_date_time)
                end
            end
        end
    end
end

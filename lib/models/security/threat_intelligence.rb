require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './security'

module MicrosoftGraph
    module Models
        module Security
            class ThreatIntelligence < MicrosoftGraph::Models::Entity
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Refers to indicators of threat or compromise highlighted in an microsoft.graph.security.article.Note: List retrieval is not yet supported.
                @article_indicators
                ## 
                # A list of article objects.
                @articles
                ## 
                # Retrieve details about microsoft.graph.security.hostComponent objects.Note: List retrieval is not yet supported.
                @host_components
                ## 
                # Retrieve details about microsoft.graph.security.hostCookie objects.Note: List retrieval is not yet supported.
                @host_cookies
                ## 
                # Retrieve details about microsoft.graph.security.hostTracker objects.Note: List retrieval is not yet supported.
                @host_trackers
                ## 
                # Refers to microsoft.graph.security.host objects that Microsoft Threat Intelligence has observed.Note: List retrieval is not yet supported.
                @hosts
                ## 
                # A list of intelligenceProfile objects.
                @intel_profiles
                ## 
                # The intelligenceProfileIndicators property
                @intelligence_profile_indicators
                ## 
                # Retrieve details about microsoft.graph.security.passiveDnsRecord objects.Note: List retrieval is not yet supported.
                @passive_dns_records
                ## 
                # Retrieve details about microsoft.graph.security.vulnerabilities.Note: List retrieval is not yet supported.
                @vulnerabilities
                ## 
                ## Gets the articleIndicators property value. Refers to indicators of threat or compromise highlighted in an microsoft.graph.security.article.Note: List retrieval is not yet supported.
                ## @return a article_indicator
                ## 
                def article_indicators
                    return @article_indicators
                end
                ## 
                ## Sets the articleIndicators property value. Refers to indicators of threat or compromise highlighted in an microsoft.graph.security.article.Note: List retrieval is not yet supported.
                ## @param value Value to set for the article_indicators property.
                ## @return a void
                ## 
                def article_indicators=(value)
                    @article_indicators = value
                end
                ## 
                ## Gets the articles property value. A list of article objects.
                ## @return a article
                ## 
                def articles
                    return @articles
                end
                ## 
                ## Sets the articles property value. A list of article objects.
                ## @param value Value to set for the articles property.
                ## @return a void
                ## 
                def articles=(value)
                    @articles = value
                end
                ## 
                ## Instantiates a new threatIntelligence and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a threat_intelligence
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return ThreatIntelligence.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "articleIndicators" => lambda {|n| @article_indicators = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Security::ArticleIndicator.create_from_discriminator_value(pn) }) },
                        "articles" => lambda {|n| @articles = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Security::Article.create_from_discriminator_value(pn) }) },
                        "hostComponents" => lambda {|n| @host_components = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Security::HostComponent.create_from_discriminator_value(pn) }) },
                        "hostCookies" => lambda {|n| @host_cookies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Security::HostCookie.create_from_discriminator_value(pn) }) },
                        "hostTrackers" => lambda {|n| @host_trackers = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Security::HostTracker.create_from_discriminator_value(pn) }) },
                        "hosts" => lambda {|n| @hosts = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Security::Host.create_from_discriminator_value(pn) }) },
                        "intelProfiles" => lambda {|n| @intel_profiles = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Security::IntelligenceProfile.create_from_discriminator_value(pn) }) },
                        "intelligenceProfileIndicators" => lambda {|n| @intelligence_profile_indicators = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Security::IntelligenceProfileIndicator.create_from_discriminator_value(pn) }) },
                        "passiveDnsRecords" => lambda {|n| @passive_dns_records = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Security::PassiveDnsRecord.create_from_discriminator_value(pn) }) },
                        "vulnerabilities" => lambda {|n| @vulnerabilities = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Security::Vulnerability.create_from_discriminator_value(pn) }) },
                    })
                end
                ## 
                ## Gets the hostComponents property value. Retrieve details about microsoft.graph.security.hostComponent objects.Note: List retrieval is not yet supported.
                ## @return a host_component
                ## 
                def host_components
                    return @host_components
                end
                ## 
                ## Sets the hostComponents property value. Retrieve details about microsoft.graph.security.hostComponent objects.Note: List retrieval is not yet supported.
                ## @param value Value to set for the host_components property.
                ## @return a void
                ## 
                def host_components=(value)
                    @host_components = value
                end
                ## 
                ## Gets the hostCookies property value. Retrieve details about microsoft.graph.security.hostCookie objects.Note: List retrieval is not yet supported.
                ## @return a host_cookie
                ## 
                def host_cookies
                    return @host_cookies
                end
                ## 
                ## Sets the hostCookies property value. Retrieve details about microsoft.graph.security.hostCookie objects.Note: List retrieval is not yet supported.
                ## @param value Value to set for the host_cookies property.
                ## @return a void
                ## 
                def host_cookies=(value)
                    @host_cookies = value
                end
                ## 
                ## Gets the hostTrackers property value. Retrieve details about microsoft.graph.security.hostTracker objects.Note: List retrieval is not yet supported.
                ## @return a host_tracker
                ## 
                def host_trackers
                    return @host_trackers
                end
                ## 
                ## Sets the hostTrackers property value. Retrieve details about microsoft.graph.security.hostTracker objects.Note: List retrieval is not yet supported.
                ## @param value Value to set for the host_trackers property.
                ## @return a void
                ## 
                def host_trackers=(value)
                    @host_trackers = value
                end
                ## 
                ## Gets the hosts property value. Refers to microsoft.graph.security.host objects that Microsoft Threat Intelligence has observed.Note: List retrieval is not yet supported.
                ## @return a host
                ## 
                def hosts
                    return @hosts
                end
                ## 
                ## Sets the hosts property value. Refers to microsoft.graph.security.host objects that Microsoft Threat Intelligence has observed.Note: List retrieval is not yet supported.
                ## @param value Value to set for the hosts property.
                ## @return a void
                ## 
                def hosts=(value)
                    @hosts = value
                end
                ## 
                ## Gets the intelProfiles property value. A list of intelligenceProfile objects.
                ## @return a intelligence_profile
                ## 
                def intel_profiles
                    return @intel_profiles
                end
                ## 
                ## Sets the intelProfiles property value. A list of intelligenceProfile objects.
                ## @param value Value to set for the intel_profiles property.
                ## @return a void
                ## 
                def intel_profiles=(value)
                    @intel_profiles = value
                end
                ## 
                ## Gets the intelligenceProfileIndicators property value. The intelligenceProfileIndicators property
                ## @return a intelligence_profile_indicator
                ## 
                def intelligence_profile_indicators
                    return @intelligence_profile_indicators
                end
                ## 
                ## Sets the intelligenceProfileIndicators property value. The intelligenceProfileIndicators property
                ## @param value Value to set for the intelligence_profile_indicators property.
                ## @return a void
                ## 
                def intelligence_profile_indicators=(value)
                    @intelligence_profile_indicators = value
                end
                ## 
                ## Gets the passiveDnsRecords property value. Retrieve details about microsoft.graph.security.passiveDnsRecord objects.Note: List retrieval is not yet supported.
                ## @return a passive_dns_record
                ## 
                def passive_dns_records
                    return @passive_dns_records
                end
                ## 
                ## Sets the passiveDnsRecords property value. Retrieve details about microsoft.graph.security.passiveDnsRecord objects.Note: List retrieval is not yet supported.
                ## @param value Value to set for the passive_dns_records property.
                ## @return a void
                ## 
                def passive_dns_records=(value)
                    @passive_dns_records = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_collection_of_object_values("articleIndicators", @article_indicators)
                    writer.write_collection_of_object_values("articles", @articles)
                    writer.write_collection_of_object_values("hostComponents", @host_components)
                    writer.write_collection_of_object_values("hostCookies", @host_cookies)
                    writer.write_collection_of_object_values("hostTrackers", @host_trackers)
                    writer.write_collection_of_object_values("hosts", @hosts)
                    writer.write_collection_of_object_values("intelProfiles", @intel_profiles)
                    writer.write_collection_of_object_values("intelligenceProfileIndicators", @intelligence_profile_indicators)
                    writer.write_collection_of_object_values("passiveDnsRecords", @passive_dns_records)
                    writer.write_collection_of_object_values("vulnerabilities", @vulnerabilities)
                end
                ## 
                ## Gets the vulnerabilities property value. Retrieve details about microsoft.graph.security.vulnerabilities.Note: List retrieval is not yet supported.
                ## @return a vulnerability
                ## 
                def vulnerabilities
                    return @vulnerabilities
                end
                ## 
                ## Sets the vulnerabilities property value. Retrieve details about microsoft.graph.security.vulnerabilities.Note: List retrieval is not yet supported.
                ## @param value Value to set for the vulnerabilities property.
                ## @return a void
                ## 
                def vulnerabilities=(value)
                    @vulnerabilities = value
                end
            end
        end
    end
end

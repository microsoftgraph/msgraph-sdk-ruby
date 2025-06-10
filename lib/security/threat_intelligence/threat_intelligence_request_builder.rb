require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../../models/o_data_errors_o_data_error'
require_relative '../../models/security_threat_intelligence'
require_relative '../security'
require_relative './article_indicators/article_indicators_request_builder'
require_relative './articles/articles_request_builder'
require_relative './host_components/host_components_request_builder'
require_relative './host_cookies/host_cookies_request_builder'
require_relative './host_pairs/host_pairs_request_builder'
require_relative './host_ports/host_ports_request_builder'
require_relative './hosts/hosts_request_builder'
require_relative './host_ssl_certificates/host_ssl_certificates_request_builder'
require_relative './host_trackers/host_trackers_request_builder'
require_relative './intelligence_profile_indicators/intelligence_profile_indicators_request_builder'
require_relative './intel_profiles/intel_profiles_request_builder'
require_relative './passive_dns_records/passive_dns_records_request_builder'
require_relative './ssl_certificates/ssl_certificates_request_builder'
require_relative './subdomains/subdomains_request_builder'
require_relative './threat_intelligence'
require_relative './vulnerabilities/vulnerabilities_request_builder'
require_relative './whois_history_records/whois_history_records_request_builder'
require_relative './whois_records/whois_records_request_builder'

module MicrosoftGraph
    module Security
        module ThreatIntelligence
            ## 
            # Provides operations to manage the threatIntelligence property of the microsoft.graph.security entity.
            class ThreatIntelligenceRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                
                ## 
                # Provides operations to manage the articleIndicators property of the microsoft.graph.security.threatIntelligence entity.
                def article_indicators()
                    return MicrosoftGraph::Security::ThreatIntelligence::ArticleIndicators::ArticleIndicatorsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the articles property of the microsoft.graph.security.threatIntelligence entity.
                def articles()
                    return MicrosoftGraph::Security::ThreatIntelligence::Articles::ArticlesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the hostComponents property of the microsoft.graph.security.threatIntelligence entity.
                def host_components()
                    return MicrosoftGraph::Security::ThreatIntelligence::HostComponents::HostComponentsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the hostCookies property of the microsoft.graph.security.threatIntelligence entity.
                def host_cookies()
                    return MicrosoftGraph::Security::ThreatIntelligence::HostCookies::HostCookiesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the hostPairs property of the microsoft.graph.security.threatIntelligence entity.
                def host_pairs()
                    return MicrosoftGraph::Security::ThreatIntelligence::HostPairs::HostPairsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the hostPorts property of the microsoft.graph.security.threatIntelligence entity.
                def host_ports()
                    return MicrosoftGraph::Security::ThreatIntelligence::HostPorts::HostPortsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the hosts property of the microsoft.graph.security.threatIntelligence entity.
                def hosts()
                    return MicrosoftGraph::Security::ThreatIntelligence::Hosts::HostsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the hostSslCertificates property of the microsoft.graph.security.threatIntelligence entity.
                def host_ssl_certificates()
                    return MicrosoftGraph::Security::ThreatIntelligence::HostSslCertificates::HostSslCertificatesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the hostTrackers property of the microsoft.graph.security.threatIntelligence entity.
                def host_trackers()
                    return MicrosoftGraph::Security::ThreatIntelligence::HostTrackers::HostTrackersRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the intelligenceProfileIndicators property of the microsoft.graph.security.threatIntelligence entity.
                def intelligence_profile_indicators()
                    return MicrosoftGraph::Security::ThreatIntelligence::IntelligenceProfileIndicators::IntelligenceProfileIndicatorsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the intelProfiles property of the microsoft.graph.security.threatIntelligence entity.
                def intel_profiles()
                    return MicrosoftGraph::Security::ThreatIntelligence::IntelProfiles::IntelProfilesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the passiveDnsRecords property of the microsoft.graph.security.threatIntelligence entity.
                def passive_dns_records()
                    return MicrosoftGraph::Security::ThreatIntelligence::PassiveDnsRecords::PassiveDnsRecordsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the sslCertificates property of the microsoft.graph.security.threatIntelligence entity.
                def ssl_certificates()
                    return MicrosoftGraph::Security::ThreatIntelligence::SslCertificates::SslCertificatesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the subdomains property of the microsoft.graph.security.threatIntelligence entity.
                def subdomains()
                    return MicrosoftGraph::Security::ThreatIntelligence::Subdomains::SubdomainsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the vulnerabilities property of the microsoft.graph.security.threatIntelligence entity.
                def vulnerabilities()
                    return MicrosoftGraph::Security::ThreatIntelligence::Vulnerabilities::VulnerabilitiesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the whoisHistoryRecords property of the microsoft.graph.security.threatIntelligence entity.
                def whois_history_records()
                    return MicrosoftGraph::Security::ThreatIntelligence::WhoisHistoryRecords::WhoisHistoryRecordsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the whoisRecords property of the microsoft.graph.security.threatIntelligence entity.
                def whois_records()
                    return MicrosoftGraph::Security::ThreatIntelligence::WhoisRecords::WhoisRecordsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                ## Instantiates a new ThreatIntelligenceRequestBuilder and sets the default values.
                ## @param path_parameters Path parameters for the request
                ## @param request_adapter The request adapter to use to execute the requests.
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter)
                    super(path_parameters, request_adapter, "{+baseurl}/security/threatIntelligence{?%24expand,%24select}")
                end
                ## 
                ## Delete navigation property threatIntelligence for security
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of void
                ## 
                def delete(request_configuration=nil)
                    request_info = self.to_delete_request_information(
                        request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, nil, error_mapping)
                end
                ## 
                ## Get threatIntelligence from security
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of security_threat_intelligence
                ## 
                def get(request_configuration=nil)
                    request_info = self.to_get_request_information(
                        request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::SecurityThreatIntelligence.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Update the navigation property threatIntelligence in security
                ## @param body The request body
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of security_threat_intelligence
                ## 
                def patch(body, request_configuration=nil)
                    raise StandardError, 'body cannot be null' if body.nil?
                    request_info = self.to_patch_request_information(
                        body, request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::SecurityThreatIntelligence.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Delete navigation property threatIntelligence for security
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a request_information
                ## 
                def to_delete_request_information(request_configuration=nil)
                    request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                    unless request_configuration.nil?
                        request_info.add_headers_from_raw_object(request_configuration.headers)
                        request_info.add_request_options(request_configuration.options)
                    end
                    request_info.url_template = @url_template
                    request_info.path_parameters = @path_parameters
                    request_info.http_method = :DELETE
                    request_info.headers.try_add('Accept', 'application/json')
                    return request_info
                end
                ## 
                ## Get threatIntelligence from security
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a request_information
                ## 
                def to_get_request_information(request_configuration=nil)
                    request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                    unless request_configuration.nil?
                        request_info.add_headers_from_raw_object(request_configuration.headers)
                        request_info.set_query_string_parameters_from_raw_object(request_configuration.query_parameters)
                        request_info.add_request_options(request_configuration.options)
                    end
                    request_info.url_template = @url_template
                    request_info.path_parameters = @path_parameters
                    request_info.http_method = :GET
                    request_info.headers.try_add('Accept', 'application/json')
                    return request_info
                end
                ## 
                ## Update the navigation property threatIntelligence in security
                ## @param body The request body
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a request_information
                ## 
                def to_patch_request_information(body, request_configuration=nil)
                    raise StandardError, 'body cannot be null' if body.nil?
                    request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                    unless request_configuration.nil?
                        request_info.add_headers_from_raw_object(request_configuration.headers)
                        request_info.add_request_options(request_configuration.options)
                    end
                    request_info.set_content_from_parsable(@request_adapter, 'application/json', body)
                    request_info.url_template = @url_template
                    request_info.path_parameters = @path_parameters
                    request_info.http_method = :PATCH
                    request_info.headers.try_add('Accept', 'application/json')
                    return request_info
                end
                ## 
                ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                ## @param raw_url The raw URL to use for the request builder.
                ## @return a threat_intelligence_request_builder
                ## 
                def with_url(raw_url)
                    raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                    return ThreatIntelligenceRequestBuilder.new(raw_url, @request_adapter)
                end

                ## 
                # Get threatIntelligence from security
                class ThreatIntelligenceRequestBuilderGetQueryParameters
                    
                    ## 
                    # Expand related entities
                    attr_accessor :expand
                    ## 
                    # Select properties to be returned
                    attr_accessor :select
                    ## 
                    ## Maps the query parameters names to their encoded names for the URI template parsing.
                    ## @param original_name The original query parameter name in the class.
                    ## @return a string
                    ## 
                    def get_query_parameter(original_name)
                        raise StandardError, 'original_name cannot be null' if original_name.nil?
                        case original_name
                            when "expand"
                                return "%24expand"
                            when "select"
                                return "%24select"
                            else
                                return original_name
                        end
                    end
                end
            end
        end
    end
end

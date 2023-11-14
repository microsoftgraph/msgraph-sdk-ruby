require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph'
require_relative '../../../../models/o_data_errors_o_data_error'
require_relative '../../../../models/security_host'
require_relative '../../../security'
require_relative '../../threat_intelligence'
require_relative '../hosts'
require_relative './child_host_pairs/child_host_pairs_request_builder'
require_relative './components/components_request_builder'
require_relative './cookies/cookies_request_builder'
require_relative './host_pairs/host_pairs_request_builder'
require_relative './item'
require_relative './parent_host_pairs/parent_host_pairs_request_builder'
require_relative './passive_dns/passive_dns_request_builder'
require_relative './passive_dns_reverse/passive_dns_reverse_request_builder'
require_relative './ports/ports_request_builder'
require_relative './reputation/reputation_request_builder'
require_relative './ssl_certificates/ssl_certificates_request_builder'
require_relative './subdomains/subdomains_request_builder'
require_relative './trackers/trackers_request_builder'
require_relative './whois/whois_request_builder'

module MicrosoftGraph
    module Security
        module ThreatIntelligence
            module Hosts
                module Item
                    ## 
                    # Provides operations to manage the hosts property of the microsoft.graph.security.threatIntelligence entity.
                    class HostItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        # Provides operations to manage the childHostPairs property of the microsoft.graph.security.host entity.
                        def child_host_pairs()
                            return MicrosoftGraph::Security::ThreatIntelligence::Hosts::Item::ChildHostPairs::ChildHostPairsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the components property of the microsoft.graph.security.host entity.
                        def components()
                            return MicrosoftGraph::Security::ThreatIntelligence::Hosts::Item::Components::ComponentsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the cookies property of the microsoft.graph.security.host entity.
                        def cookies()
                            return MicrosoftGraph::Security::ThreatIntelligence::Hosts::Item::Cookies::CookiesRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the hostPairs property of the microsoft.graph.security.host entity.
                        def host_pairs()
                            return MicrosoftGraph::Security::ThreatIntelligence::Hosts::Item::HostPairs::HostPairsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the parentHostPairs property of the microsoft.graph.security.host entity.
                        def parent_host_pairs()
                            return MicrosoftGraph::Security::ThreatIntelligence::Hosts::Item::ParentHostPairs::ParentHostPairsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the passiveDns property of the microsoft.graph.security.host entity.
                        def passive_dns()
                            return MicrosoftGraph::Security::ThreatIntelligence::Hosts::Item::PassiveDns::PassiveDnsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the passiveDnsReverse property of the microsoft.graph.security.host entity.
                        def passive_dns_reverse()
                            return MicrosoftGraph::Security::ThreatIntelligence::Hosts::Item::PassiveDnsReverse::PassiveDnsReverseRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the ports property of the microsoft.graph.security.host entity.
                        def ports()
                            return MicrosoftGraph::Security::ThreatIntelligence::Hosts::Item::Ports::PortsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the reputation property of the microsoft.graph.security.host entity.
                        def reputation()
                            return MicrosoftGraph::Security::ThreatIntelligence::Hosts::Item::Reputation::ReputationRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the sslCertificates property of the microsoft.graph.security.host entity.
                        def ssl_certificates()
                            return MicrosoftGraph::Security::ThreatIntelligence::Hosts::Item::SslCertificates::SslCertificatesRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the subdomains property of the microsoft.graph.security.host entity.
                        def subdomains()
                            return MicrosoftGraph::Security::ThreatIntelligence::Hosts::Item::Subdomains::SubdomainsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the trackers property of the microsoft.graph.security.host entity.
                        def trackers()
                            return MicrosoftGraph::Security::ThreatIntelligence::Hosts::Item::Trackers::TrackersRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the whois property of the microsoft.graph.security.host entity.
                        def whois()
                            return MicrosoftGraph::Security::ThreatIntelligence::Hosts::Item::Whois::WhoisRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        ## Instantiates a new HostItemRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/security/threatIntelligence/hosts/{host%2Did}{?%24select,%24expand}")
                        end
                        ## 
                        ## Delete navigation property hosts for security
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of void
                        ## 
                        def delete(request_configuration=nil)
                            request_info = self.to_delete_request_information(
                                request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, nil, error_mapping)
                        end
                        ## 
                        ## Read the properties and relationships of a host object. The host resource is the abstract base type that returns an implementation. A host can be of one of the following types: This API is available in the following national cloud deployments.
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of security_host
                        ## 
                        def get(request_configuration=nil)
                            request_info = self.to_get_request_information(
                                request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::SecurityHost.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Update the navigation property hosts in security
                        ## @param body The request body
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of security_host
                        ## 
                        def patch(body, request_configuration=nil)
                            raise StandardError, 'body cannot be null' if body.nil?
                            request_info = self.to_patch_request_information(
                                body, request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::SecurityHost.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Delete navigation property hosts for security
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
                        ## Read the properties and relationships of a host object. The host resource is the abstract base type that returns an implementation. A host can be of one of the following types: This API is available in the following national cloud deployments.
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
                        ## Update the navigation property hosts in security
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
                            request_info.set_content_from_parsable(@request_adapter, "application/json", body)
                            request_info.url_template = @url_template
                            request_info.path_parameters = @path_parameters
                            request_info.http_method = :PATCH
                            request_info.headers.try_add('Accept', 'application/json')
                            return request_info
                        end
                        ## 
                        ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                        ## @param raw_url The raw URL to use for the request builder.
                        ## @return a host_item_request_builder
                        ## 
                        def with_url(raw_url)
                            raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                            return HostItemRequestBuilder.new(raw_url, @request_adapter)
                        end

                        ## 
                        # Read the properties and relationships of a host object. The host resource is the abstract base type that returns an implementation. A host can be of one of the following types: This API is available in the following national cloud deployments.
                        class HostItemRequestBuilderGetQueryParameters
                            
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
    end
end

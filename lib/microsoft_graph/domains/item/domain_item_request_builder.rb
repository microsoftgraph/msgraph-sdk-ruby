require 'microsoft_kiota_abstractions'
require_relative '../../models/domain'
require_relative '../../models/o_data_errors/o_data_error'
require_relative '../domains'
require_relative './domain_name_references/domain_name_references_request_builder'
require_relative './domain_name_references/item/directory_object_item_request_builder'
require_relative './federation_configuration/federation_configuration_request_builder'
require_relative './federation_configuration/item/internal_domain_federation_item_request_builder'
require_relative './force_delete/force_delete_request_builder'
require_relative './item'
require_relative './promote/promote_request_builder'
require_relative './service_configuration_records/item/domain_dns_record_item_request_builder'
require_relative './service_configuration_records/service_configuration_records_request_builder'
require_relative './verification_dns_records/item/domain_dns_record_item_request_builder'
require_relative './verification_dns_records/verification_dns_records_request_builder'
require_relative './verify/verify_request_builder'

module MicrosoftGraph::Domains::Item
    ## 
    # Provides operations to manage the collection of domain entities.
    class DomainItemRequestBuilder
        
        ## 
        # Provides operations to manage the domainNameReferences property of the microsoft.graph.domain entity.
        def domain_name_references()
            return MicrosoftGraph::Domains::Item::DomainNameReferences::DomainNameReferencesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the federationConfiguration property of the microsoft.graph.domain entity.
        def federation_configuration()
            return MicrosoftGraph::Domains::Item::FederationConfiguration::FederationConfigurationRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the forceDelete method.
        def force_delete()
            return MicrosoftGraph::Domains::Item::ForceDelete::ForceDeleteRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Path parameters for the request
        @path_parameters
        ## 
        # Provides operations to call the promote method.
        def promote()
            return MicrosoftGraph::Domains::Item::Promote::PromoteRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # The request adapter to use to execute the requests.
        @request_adapter
        ## 
        # Provides operations to manage the serviceConfigurationRecords property of the microsoft.graph.domain entity.
        def service_configuration_records()
            return MicrosoftGraph::Domains::Item::ServiceConfigurationRecords::ServiceConfigurationRecordsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Url template to use to build the URL for the current request builder
        @url_template
        ## 
        # Provides operations to manage the verificationDnsRecords property of the microsoft.graph.domain entity.
        def verification_dns_records()
            return MicrosoftGraph::Domains::Item::VerificationDnsRecords::VerificationDnsRecordsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the verify method.
        def verify()
            return MicrosoftGraph::Domains::Item::Verify::VerifyRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        ## Instantiates a new DomainItemRequestBuilder and sets the default values.
        ## @param pathParameters Path parameters for the request
        ## @param requestAdapter The request adapter to use to execute the requests.
        ## @return a void
        ## 
        def initialize(path_parameters, request_adapter)
            raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
            raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
            @url_template = "{+baseurl}/domains/{domain%2Did}{?%24select,%24expand}"
            @request_adapter = request_adapter
            path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
            @path_parameters = path_parameters if path_parameters.is_a? Hash
        end
        ## 
        ## Deletes a domain from a tenant.
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a Fiber of void
        ## 
        def delete(request_configuration=nil)
            request_info = self.to_delete_request_information(
                request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, nil, error_mapping)
        end
        ## 
        ## Provides operations to manage the domainNameReferences property of the microsoft.graph.domain entity.
        ## @param id Unique identifier of the item
        ## @return a directory_object_item_request_builder
        ## 
        def domain_name_references_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["directoryObject%2Did"] = id
            return MicrosoftGraph::Domains::Item::DomainNameReferences::Item::DirectoryObjectItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the federationConfiguration property of the microsoft.graph.domain entity.
        ## @param id Unique identifier of the item
        ## @return a internal_domain_federation_item_request_builder
        ## 
        def federation_configuration_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["internalDomainFederation%2Did"] = id
            return MicrosoftGraph::Domains::Item::FederationConfiguration::Item::InternalDomainFederationItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Retrieve the properties and relationships of domain object.
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a Fiber of domain
        ## 
        def get(request_configuration=nil)
            request_info = self.to_get_request_information(
                request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::Domain.create_from_discriminator_value(pn) }, error_mapping)
        end
        ## 
        ## Update the properties of domain object.
        ## @param body The request body
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a Fiber of domain
        ## 
        def patch(body, request_configuration=nil)
            raise StandardError, 'body cannot be null' if body.nil?
            request_info = self.to_patch_request_information(
                body, request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::Domain.create_from_discriminator_value(pn) }, error_mapping)
        end
        ## 
        ## Provides operations to manage the serviceConfigurationRecords property of the microsoft.graph.domain entity.
        ## @param id Unique identifier of the item
        ## @return a domain_dns_record_item_request_builder
        ## 
        def service_configuration_records_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["domainDnsRecord%2Did"] = id
            return MicrosoftGraph::Domains::Item::ServiceConfigurationRecords::Item::DomainDnsRecordItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Deletes a domain from a tenant.
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a request_information
        ## 
        def to_delete_request_information(request_configuration=nil)
            request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
            request_info.url_template = @url_template
            request_info.path_parameters = @path_parameters
            request_info.http_method = :DELETE
            unless request_configuration.nil?
                request_info.add_headers_from_raw_object(request_configuration.headers)
                request_info.add_request_options(request_configuration.options)
            end
            return request_info
        end
        ## 
        ## Retrieve the properties and relationships of domain object.
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a request_information
        ## 
        def to_get_request_information(request_configuration=nil)
            request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
            request_info.url_template = @url_template
            request_info.path_parameters = @path_parameters
            request_info.http_method = :GET
            request_info.headers.add('Accept', 'application/json')
            unless request_configuration.nil?
                request_info.add_headers_from_raw_object(request_configuration.headers)
                request_info.set_query_string_parameters_from_raw_object(request_configuration.query_parameters)
                request_info.add_request_options(request_configuration.options)
            end
            return request_info
        end
        ## 
        ## Update the properties of domain object.
        ## @param body The request body
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a request_information
        ## 
        def to_patch_request_information(body, request_configuration=nil)
            raise StandardError, 'body cannot be null' if body.nil?
            request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
            request_info.url_template = @url_template
            request_info.path_parameters = @path_parameters
            request_info.http_method = :PATCH
            request_info.headers.add('Accept', 'application/json')
            unless request_configuration.nil?
                request_info.add_headers_from_raw_object(request_configuration.headers)
                request_info.add_request_options(request_configuration.options)
            end
            request_info.set_content_from_parsable(self.request_adapter, "application/json", body)
            return request_info
        end
        ## 
        ## Provides operations to manage the verificationDnsRecords property of the microsoft.graph.domain entity.
        ## @param id Unique identifier of the item
        ## @return a domain_dns_record_item_request_builder
        ## 
        def verification_dns_records_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["domainDnsRecord%2Did"] = id
            return MicrosoftGraph::Domains::Item::VerificationDnsRecords::Item::DomainDnsRecordItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end

        ## 
        # Configuration for the request such as headers, query parameters, and middleware options.
        class DomainItemRequestBuilderDeleteRequestConfiguration
            
            ## 
            # Request headers
            attr_accessor :headers
            ## 
            # Request options
            attr_accessor :options
        end

        ## 
        # Retrieve the properties and relationships of domain object.
        class DomainItemRequestBuilderGetQueryParameters
            
            ## 
            # Expand related entities
            attr_accessor :expand
            ## 
            # Select properties to be returned
            attr_accessor :select
            ## 
            ## Maps the query parameters names to their encoded names for the URI template parsing.
            ## @param originalName The original query parameter name in the class.
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

        ## 
        # Configuration for the request such as headers, query parameters, and middleware options.
        class DomainItemRequestBuilderGetRequestConfiguration
            
            ## 
            # Request headers
            attr_accessor :headers
            ## 
            # Request options
            attr_accessor :options
            ## 
            # Request query parameters
            attr_accessor :query_parameters
        end

        ## 
        # Configuration for the request such as headers, query parameters, and middleware options.
        class DomainItemRequestBuilderPatchRequestConfiguration
            
            ## 
            # Request headers
            attr_accessor :headers
            ## 
            # Request options
            attr_accessor :options
        end
    end
end

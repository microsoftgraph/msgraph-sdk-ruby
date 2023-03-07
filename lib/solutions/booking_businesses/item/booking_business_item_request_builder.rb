require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph'
require_relative '../../../models/booking_business'
require_relative '../../../models/o_data_errors/o_data_error'
require_relative '../../solutions'
require_relative '../booking_businesses'
require_relative './appointments/appointments_request_builder'
require_relative './appointments/item/booking_appointment_item_request_builder'
require_relative './calendar_view/calendar_view_request_builder'
require_relative './calendar_view/item/booking_appointment_item_request_builder'
require_relative './customers/customers_request_builder'
require_relative './customers/item/booking_customer_base_item_request_builder'
require_relative './custom_questions/custom_questions_request_builder'
require_relative './custom_questions/item/booking_custom_question_item_request_builder'
require_relative './get_staff_availability/get_staff_availability_request_builder'
require_relative './item'
require_relative './publish/publish_request_builder'
require_relative './services/item/booking_service_item_request_builder'
require_relative './services/services_request_builder'
require_relative './staff_members/item/booking_staff_member_base_item_request_builder'
require_relative './staff_members/staff_members_request_builder'
require_relative './unpublish/unpublish_request_builder'

module MicrosoftGraph
    module Solutions
        module BookingBusinesses
            module Item
                ## 
                # Provides operations to manage the bookingBusinesses property of the microsoft.graph.solutionsRoot entity.
                class BookingBusinessItemRequestBuilder
                    
                    ## 
                    # Provides operations to manage the appointments property of the microsoft.graph.bookingBusiness entity.
                    def appointments()
                        return MicrosoftGraph::Solutions::BookingBusinesses::Item::Appointments::AppointmentsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the calendarView property of the microsoft.graph.bookingBusiness entity.
                    def calendar_view()
                        return MicrosoftGraph::Solutions::BookingBusinesses::Item::CalendarView::CalendarViewRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the customers property of the microsoft.graph.bookingBusiness entity.
                    def customers()
                        return MicrosoftGraph::Solutions::BookingBusinesses::Item::Customers::CustomersRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the customQuestions property of the microsoft.graph.bookingBusiness entity.
                    def custom_questions()
                        return MicrosoftGraph::Solutions::BookingBusinesses::Item::CustomQuestions::CustomQuestionsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the getStaffAvailability method.
                    def get_staff_availability()
                        return MicrosoftGraph::Solutions::BookingBusinesses::Item::GetStaffAvailability::GetStaffAvailabilityRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Path parameters for the request
                    @path_parameters
                    ## 
                    # Provides operations to call the publish method.
                    def publish()
                        return MicrosoftGraph::Solutions::BookingBusinesses::Item::Publish::PublishRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # The request adapter to use to execute the requests.
                    @request_adapter
                    ## 
                    # Provides operations to manage the services property of the microsoft.graph.bookingBusiness entity.
                    def services()
                        return MicrosoftGraph::Solutions::BookingBusinesses::Item::Services::ServicesRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the staffMembers property of the microsoft.graph.bookingBusiness entity.
                    def staff_members()
                        return MicrosoftGraph::Solutions::BookingBusinesses::Item::StaffMembers::StaffMembersRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the unpublish method.
                    def unpublish()
                        return MicrosoftGraph::Solutions::BookingBusinesses::Item::Unpublish::UnpublishRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Url template to use to build the URL for the current request builder
                    @url_template
                    ## 
                    ## Provides operations to manage the appointments property of the microsoft.graph.bookingBusiness entity.
                    ## @param id Unique identifier of the item
                    ## @return a booking_appointment_item_request_builder
                    ## 
                    def appointments_by_id(id)
                        raise StandardError, 'id cannot be null' if id.nil?
                        url_tpl_params = @path_parameters.clone
                        url_tpl_params["bookingAppointment%2Did"] = id
                        return MicrosoftGraph::Solutions::BookingBusinesses::Item::Appointments::Item::BookingAppointmentItemRequestBuilder.new(url_tpl_params, @request_adapter)
                    end
                    ## 
                    ## Provides operations to manage the calendarView property of the microsoft.graph.bookingBusiness entity.
                    ## @param id Unique identifier of the item
                    ## @return a booking_appointment_item_request_builder
                    ## 
                    def calendar_view_by_id(id)
                        raise StandardError, 'id cannot be null' if id.nil?
                        url_tpl_params = @path_parameters.clone
                        url_tpl_params["bookingAppointment%2Did"] = id
                        return MicrosoftGraph::Solutions::BookingBusinesses::Item::CalendarView::Item::BookingAppointmentItemRequestBuilder.new(url_tpl_params, @request_adapter)
                    end
                    ## 
                    ## Instantiates a new BookingBusinessItemRequestBuilder and sets the default values.
                    ## @param pathParameters Path parameters for the request
                    ## @param requestAdapter The request adapter to use to execute the requests.
                    ## @return a void
                    ## 
                    def initialize(path_parameters, request_adapter)
                        raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                        raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                        @url_template = "{+baseurl}/solutions/bookingBusinesses/{bookingBusiness%2Did}{?%24select,%24expand}"
                        @request_adapter = request_adapter
                        path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                        @path_parameters = path_parameters if path_parameters.is_a? Hash
                    end
                    ## 
                    ## Provides operations to manage the customers property of the microsoft.graph.bookingBusiness entity.
                    ## @param id Unique identifier of the item
                    ## @return a booking_customer_base_item_request_builder
                    ## 
                    def customers_by_id(id)
                        raise StandardError, 'id cannot be null' if id.nil?
                        url_tpl_params = @path_parameters.clone
                        url_tpl_params["bookingCustomerBase%2Did"] = id
                        return MicrosoftGraph::Solutions::BookingBusinesses::Item::Customers::Item::BookingCustomerBaseItemRequestBuilder.new(url_tpl_params, @request_adapter)
                    end
                    ## 
                    ## Provides operations to manage the customQuestions property of the microsoft.graph.bookingBusiness entity.
                    ## @param id Unique identifier of the item
                    ## @return a booking_custom_question_item_request_builder
                    ## 
                    def custom_questions_by_id(id)
                        raise StandardError, 'id cannot be null' if id.nil?
                        url_tpl_params = @path_parameters.clone
                        url_tpl_params["bookingCustomQuestion%2Did"] = id
                        return MicrosoftGraph::Solutions::BookingBusinesses::Item::CustomQuestions::Item::BookingCustomQuestionItemRequestBuilder.new(url_tpl_params, @request_adapter)
                    end
                    ## 
                    ## Delete navigation property bookingBusinesses for solutions
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
                    ## Get bookingBusinesses from solutions
                    ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of booking_business
                    ## 
                    def get(request_configuration=nil)
                        request_info = self.to_get_request_information(
                            request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::BookingBusiness.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Update the navigation property bookingBusinesses in solutions
                    ## @param body The request body
                    ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of booking_business
                    ## 
                    def patch(body, request_configuration=nil)
                        raise StandardError, 'body cannot be null' if body.nil?
                        request_info = self.to_patch_request_information(
                            body, request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::BookingBusiness.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Provides operations to manage the services property of the microsoft.graph.bookingBusiness entity.
                    ## @param id Unique identifier of the item
                    ## @return a booking_service_item_request_builder
                    ## 
                    def services_by_id(id)
                        raise StandardError, 'id cannot be null' if id.nil?
                        url_tpl_params = @path_parameters.clone
                        url_tpl_params["bookingService%2Did"] = id
                        return MicrosoftGraph::Solutions::BookingBusinesses::Item::Services::Item::BookingServiceItemRequestBuilder.new(url_tpl_params, @request_adapter)
                    end
                    ## 
                    ## Provides operations to manage the staffMembers property of the microsoft.graph.bookingBusiness entity.
                    ## @param id Unique identifier of the item
                    ## @return a booking_staff_member_base_item_request_builder
                    ## 
                    def staff_members_by_id(id)
                        raise StandardError, 'id cannot be null' if id.nil?
                        url_tpl_params = @path_parameters.clone
                        url_tpl_params["bookingStaffMemberBase%2Did"] = id
                        return MicrosoftGraph::Solutions::BookingBusinesses::Item::StaffMembers::Item::BookingStaffMemberBaseItemRequestBuilder.new(url_tpl_params, @request_adapter)
                    end
                    ## 
                    ## Delete navigation property bookingBusinesses for solutions
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
                    ## Get bookingBusinesses from solutions
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
                    ## Update the navigation property bookingBusinesses in solutions
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
                    # Configuration for the request such as headers, query parameters, and middleware options.
                    class BookingBusinessItemRequestBuilderDeleteRequestConfiguration
                        
                        ## 
                        # Request headers
                        attr_accessor :headers
                        ## 
                        # Request options
                        attr_accessor :options
                    end

                    ## 
                    # Get bookingBusinesses from solutions
                    class BookingBusinessItemRequestBuilderGetQueryParameters
                        
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
                    class BookingBusinessItemRequestBuilderGetRequestConfiguration
                        
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
                    class BookingBusinessItemRequestBuilderPatchRequestConfiguration
                        
                        ## 
                        # Request headers
                        attr_accessor :headers
                        ## 
                        # Request options
                        attr_accessor :options
                    end
                end
            end
        end
    end
end

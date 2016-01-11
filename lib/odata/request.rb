module OData
  class Request
    attr_accessor :headers
    attr_accessor :uri
    attr_accessor :method
    attr_accessor :data

    def initialize(method = :get, uri = '', data = nil)
      @method  = method.to_s.downcase.to_sym
      @uri     = URI(uri)
      @data    = data
      @headers = {
        'Content-Type' => 'application/json'
      }
    end

    def perform
      response = Net::HTTP
        .new(uri.hostname, uri.port)
        .tap { |h| h.use_ssl = true }
        .send(*send_params)
      raise ServerError.new(response) unless response.code.to_i < 500
      raise AuthenticationError.new(response) if response.code.to_i == 401
      raise AuthorizationError.new(response) if response.code.to_i == 403
      raise ClientError.new(response) unless response.code.to_i < 400
      if response.body
        begin
          OData.convert_keys_to_snake_case(JSON.parse(response.body))
        rescue JSON::ParserError => e
          {}
        end
      else
        {}
      end
    end

    private

    def send_params
      base_params = [
        method,
        uri
      ]
      base_params << data if data
      base_params << headers
    end
  end
end

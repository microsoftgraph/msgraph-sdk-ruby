module OData
  class Error < RuntimeError; end

  class HTTPError < Error
    def initialize(response)
      body = JSON.parse(response.body)
      super "#{response.code} #{body['error']['code']}: \"#{body['error']['message']}\" from \"#{response.uri}\""
    rescue
      super
    end
  end

  class ClientError < HTTPError; end
  class ServerError < HTTPError; end

  class AuthenticationError < ClientError; end
  class AuthorizationError < ClientError; end
end

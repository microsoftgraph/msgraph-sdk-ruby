# Getting started with the Microsoft Graph Client Library for Ruby

This client library is a release candidate and is still in preview status. As such, this library is **not production ready**. Please proceed at your own risk and continue to provide [feedback](https://github.com/microsoftgraph/msgraph-sdk-ruby/issues/new) as we iterate towards a production supported library.

## Installation
run ```gem install microsoft_graph``` or include ```gem microsoft_graph``` in your gemfile.
## Getting started

### Register your application

Register your application to use Microsoft Graph API using one of the following
supported authentication portals:

* [Microsoft Application Registration Portal](https://apps.dev.microsoft.com) (**Recommended**):
  Register a new application that authenticates using the v2.0 authentication endpoint. This endpoint authenticates both personal (Microsoft) and work or school (Azure Active Directory) accounts.
* [Microsoft Azure Active Directory](https://manage.windowsazure.com): Register
  a new application in your tenant's Active Directory to support work or school
  users for your tenant, or multiple tenants.

### Authenticate for the Microsoft Graph service

The Microsoft Graph Client Library for Ruby does not include any default authentication implementations.
Instead, the user will want to authenticate with the library of their choice, or against the OAuth
endpoint directly.

The recommended library for authenticating against AAD is [ADAL](https://github.com/AzureAD/azure-activedirectory-library-for-ruby).

### Usage example

```ruby
require 'httpclient'
require 'microsoft_graph'
require 'json'
require 'nokogiri'
require 'net/http'

MS_BASE_URL        = "https://login.microsoftonline.com".freeze
TOKEN_REQUEST_PATH = "oauth2/v2.0/token".freeze

# Your configuration
client_id     = 'xxxxx-xxxx-xxx-xxxxxx-xxxxxxx'
client_secret = 'xxxXXXxxXXXxxxXXXxxXXXXXXXXxxxxxx='
tenant_id     = 'xxxxx-xxxx-xxx-xxxxxx-xxxxxxx'

client = HTTPClient.new
response = client.post(
  "#{MS_BASE_URL}/#{tenant_id}/#{TOKEN_REQUEST_PATH}",
  {
    body: { client_id: client_id,
            client_secret: client_secret,
            scope: 'https://graph.microsoft.com/.default',
            grant_type: 'client_credentials',
          },
    'Content-Type' => 'application/json',
    multipart: true,
 }
)
raise "#{response.message}" unless response.code == 200
token = JSON.parse(response.body)['access_token']

# add the access token to the request header
callback = Proc.new { |r| r.headers["Authorization"] = "Bearer #{token}" }

graph = MicrosoftGraph.new(base_url: MicrosoftGraph::BASE_URL,
                           cached_metadata_file: File.join(MicrosoftGraph::CACHED_METADATA_DIRECTORY, "metadata_v1.0.xml"),
                           &callback
)

users = graph.users
users.each do |user|
  puts "Hello, I am #{user.display_name}"
end
```

## Development

### Running Tests

#### Unit Tests

Run them like this:

    bundle exec rspec

#### Integration Tests

The integration tests make real changes in a live account, so don't run them against anything except a dedicated test account.

If you are sure you want to run them you need to set up a `.env` file that looks something like this:

    MS_GRAPH_USERNAME=usernamehere@xxxxx.onmicrosoft.com
    MS_GRAPH_PASSWORD=xxxxxxxxxxxx
    MS_GRAPH_CLIENT_ID=xxxxx-xxxx-xxx-xxxxxx-xxxxxxx
    MS_GRAPH_CLIENT_SECRET="xxxXXXxxXXXxxxXXXxxXXXXXXXXxxxxxx="
    MS_GRAPH_TENANT=xxxxx.onmicrosoft.com

Once you have all the right credentials, you can run the integration tests like this:

    bundle exec rspec integration_spec

## Documentation and resources

* [Microsoft Graph API](https://graph.microsoft.io)

## Issues

To view or log issues, see [issues](https://github.com/microsoftgraph/msgraph-sdk-ruby/issues).

## License

Copyright (c) Microsoft Corporation. All Rights Reserved. Licensed under the MIT [license](LICENSE).

This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/). For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.

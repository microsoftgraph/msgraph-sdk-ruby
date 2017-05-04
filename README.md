# Getting started with the Microsoft Graph Client Library for Ruby

This client library is a release candidate and is still in preview status, please continue to provide [feedback](https://github.com/microsoftgraph/msgraph-sdk-ruby/issues/new) as we iterate towards a production supported library.

## Installation
run ```gem install microsoft_graph``` or include ```gem microsoft_graph``` in your gemfile.
## Getting started

### Register your application

Register your application to use Microsoft Graph API using one of the following
supported authentication portals:

* [Microsoft Application Registration Portal](https://apps.dev.microsoft.com) (**Recommended**):
  Register a new application that authenticates using the v2.0 authentication endpoint. This endpoint autthenticates both personal (Microsoft) and work or school (Azure Active Directory) accounts.
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
require 'adal'
require 'microsoft_graph'

# authenticate using ADAL
username      = 'admin@tenant.onmicrosoft.com'
password      = 'xxxxxxxxxxxx'
client_id     = 'xxxxx-xxxx-xxx-xxxxxx-xxxxxxx'
client_secret = 'xxxXXXxxXXXxxxXXXxxXXXXXXXXxxxxxx='
tenant        = 'tenant.onmicrosoft.com'
user_cred     = ADAL::UserCredential.new(username, password)
client_cred   = ADAL::ClientCredential.new(client_id, client_secret)
context       = ADAL::AuthenticationContext.new(ADAL::Authority::WORLD_WIDE_AUTHORITY, tenant)
resource      = "https://graph.microsoft.com"
tokens        = context.acquire_token_for_user(resource, client_cred, user_cred)

# add the access token to the request header
callback = Proc.new { |r| r.headers["Authorization"] = "Bearer #{tokens.access_token}" }

graph = MicrosoftGraph.new(
                            base_url: "https://graph.microsoft.com/v1.0",
                            cached_metadata_file: File.join(MicrosoftGraph::CACHED_METADATA_DIRECTORY, "metadata_v1.0.xml"),
                            &callback
)

me = graph.me # get the current user
puts "Hello, I am #{me.display_name}."

me.direct_reports.each do |person|
  puts "How's it going, #{person.display_name}?"
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

# MicrosoftGraphSdk

## Usage

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
tokens        = context.acquire_token_for_user(resource, client_cred, user_cred)

# connect to the API and create the classes (most of this should be defaulted later)
service = OData::Service.new(
  base_url: "https://graph.microsoft.com/v1.0/",
  namespace: "microsoft.graph",
  metadata_file: File.join(MicrosoftGraph::CACHED_METADATA_DIRECTORY, "metadata_v1.0.xml"),
  auth_token: tokens.access_token,
)

graph = MicrosoftGraph.new(service)

me = graph.me # get the current user
puts "Hello, I am #{me.display_name}."

me.direct_reports.each do |person|
  puts "How's it going, #{person.display_name}?"
end
```

## Development

    gem install bundler
    bundle install

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

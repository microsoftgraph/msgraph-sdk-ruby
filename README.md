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

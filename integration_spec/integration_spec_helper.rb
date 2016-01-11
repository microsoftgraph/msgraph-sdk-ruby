require "common_spec_helper"
require "dotenv"
Dotenv.load
# ADAL::Logging.log_level = ADAL::Logger::VERBOSE

TENANT        = ENV['MS_GRAPH_TENANT']
USERNAME      = ENV['MS_GRAPH_USERNAME']
PASSWORD      = ENV['MS_GRAPH_PASSWORD']
CLIENT_ID     = ENV['MS_GRAPH_CLIENT_ID']
CLIENT_SECRET = ENV['MS_GRAPH_CLIENT_SECRET']
RESOURCE      = 'https://graph.microsoft.com'

USER_CRED   = ADAL::UserCredential.new(USERNAME, PASSWORD)
CLIENT_CRED = ADAL::ClientCredential.new(CLIENT_ID, CLIENT_SECRET)
CONTEXT     = ADAL::AuthenticationContext.new(ADAL::Authority::WORLD_WIDE_AUTHORITY, TENANT)
TOKENS      = CONTEXT.acquire_token_for_user(RESOURCE, CLIENT_CRED, USER_CRED)

create_classes(TOKENS)

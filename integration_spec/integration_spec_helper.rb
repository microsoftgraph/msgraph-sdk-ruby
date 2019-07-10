require "common_spec_helper"
require "dotenv"
Dotenv.load
require 'net/http'

BASE_URL      = ENV['MS_GRAPH_BASE_URL']
TOKEN_PATH    = ENV['MS_GRAPH_TOKEN_PATH']
TENANT        = ENV['MS_GRAPH_TENANT']
CLIENT_ID     = ENV['MS_GRAPH_CLIENT_ID']
CLIENT_SECRET = ENV['MS_GRAPH_CLIENT_SECRET']

client = HTTPClient.new
RESPONSE = client.post(
  "#{BASE_URL}/#{TENANT}/#{TOKEN_PATH}",
  multipart: true,
  body: {
    client_id: CLIENT_ID,
    client_secret: CLIENT_SECRET,
    scope: 'https://graph.microsoft.com/.default',
    grant_type: 'client_credentials',
  }
)
TOKEN = JSON.parse(RESPONSE.body)['access_token']

create_classes(TOKEN)

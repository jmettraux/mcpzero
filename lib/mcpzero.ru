
#require 'pp'
require 'rack'

$: << 'lib'

require 'mcpzero'

STDOUT.sync = true
STDERR.sync = true

#use Rack::Runtime
  # Sets X-Runtime response header...

server = MCP::Server.new(
  name: McpZero.name,
  version: McpZero.version,
  tools: McpZero.tools,
  prompts: McpZero.prompts)

#run lambda { |env|
#  [ 200, { 'Content-Type' => 'text/plain' }, %w[ MCP Zero ] ] }
  #
#run MCP::Server::Transports::StreamableHTTPTransport.new(server)
  #
run MCP::Server::Transports::StreamableHTTPTransport.new(
  server,
  enable_json_response: true)

#transport = MCP::Server::Transports::StreamableHTTPTransport.new(
#  server,
#  allowed_hosts: ["mcp.example.com"],
#  allowed_origins: ["https://app.example.com"])
  #
  # nota bene...


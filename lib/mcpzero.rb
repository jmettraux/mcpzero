
# mcpzero.rb
#
# Sat Jul 18 14:58:07 JST 2026

require 'mcp'


module McpZero
  class << self

    def name; 'mcpzero'; end
    def version; '0.0.0'; end

    def tools

      #[ McpZero::HelloTool ]
      []
    end

    def prompts

      []
    end
  end

  class HelloTool < MCP::Tool

    description 'simply says hello, to a given name'

    input_schema(
      properties: {
        name: { type: 'string' }
      },
      required: %w[ name ])

    annotations(
      read_only_hint: true,
      destructive_hint: false)

    def self.call(name:, server_context:)

      MCP::Tool::Response.new([ {
        type: 'text',
        text: "Hello from McpZero to #{name}" } ])
    end
  end
end


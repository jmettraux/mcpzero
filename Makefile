
serve:
	bundle exec rackup lib/mcpzero.ru
	#rackup lib/mcpzero.ru
s: serve

test-initialize:
	curl -v -X POST http://localhost:9292/ \
	  -H "Content-Type: application/json" \
	  -d '{"jsonrpc":"2.0","method":"initialize","params":{"protocolVersion":"2024-11-05","clientInfo":{"name":"mcpzero-client","version":"0"},"capabilities":{}},"id":1}' 2>&1 \
        | grep "< mcp-session-id: "

test-list-tools:
	curl -X POST http://localhost:9292/ \
	  -H "Content-Type: application/json" \
      -H "Mcp-Session-Id: $(MCP_SESSION_ID)" \
	  -d '{"jsonrpc":"2.0","method":"tools/list","params":{},"id":1}'
t: test

.PHONY: serve test


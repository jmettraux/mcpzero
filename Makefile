
serve:
	#bundle exec rackup lib/mcpzero.ru
	rackup lib/mcpzero.ru
s: serve

test:
	curl -X POST http://localhost:9292/ \
	  -H "Content-Type: application/json" \
	  -d '{"jsonrpc":"2.0","method":"tools/list","params":{},"id":1}'
t: test

.PHONY: serve test


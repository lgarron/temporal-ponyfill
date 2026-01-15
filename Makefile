.PHONY: publish
publish:
	npm publish

.PHONY: lint
lint: setup
	bun x -- bun-dx --package @biomejs/biome biome -- check
	bun x -- bun-dx --package typescript tsc -- --project .

.PHONY: format
format: setup
	bun x -- bun-dx --package @biomejs/biome biome -- check --write

.PHONY: setup
setup:
	bun install --frozen-lockfile

.PHONY: prepublishOnly
prepublishOnly: lint

.PHONY: clean
clean:
	# No-op for this repo.

.PHONY: reset
reset: clean
	rm -rf ./node_modules

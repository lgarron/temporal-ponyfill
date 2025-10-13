.PHONY: publish
publish:
	npm publish

.PHONY: lint
lint: setup
	bun x @biomejs/biome check
	bun x tsc --project .

.PHONY: format
format: setup
	bun x @biomejs/biome check --write

.PHONY: setup
setup:
	bun install --frozen-lockfile

.PHONY: prepublishOnly
prepublishOnly: lint

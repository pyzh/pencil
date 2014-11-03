build:
	@cargo build

test:
	@RUST_TEST_TASKS=1 cargo test

docs: build
	@cargo doc --no-deps

.PHONY: build test docs

build: reformat test

reformat:
	cargo fmt --all --check

lint:
	cargo clippy --all-targets --all-features --workspace -- -D warnings

test:
	cargo test --locked --all-features --workspace

test_integration:
	cargo test --locked --all-features --workspace -- --ignored

docs:
	cargo doc --no-deps --document-private-items --all-features --workspace --examples

.PHONY: build reformat lint test docs
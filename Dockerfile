FROM msrd0/rust-pq

RUN cargo install diesel_cli --no-default-features --features postgres \
	&& strip "$CARGO_HOME/bin/diesel" \
	&& rm -rf "$CARGO_HOME/registry"

FROM rust:latest
WORKDIR /app
COPY Cargo.toml Cargo.toml
COPY src src
RUN cargo build --release 

RUN cp /app/target/release/rst-api /usr/local/bin
CMD ["rst-api"]

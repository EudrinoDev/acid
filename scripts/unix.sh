# ACID.SH by Alexander Abraham,
# a.k.a. "The Black Unicorn", a.k.a. "Angeldust Duke".
# Licensed under the MIT license.

export GIT_URL=https://github.com/iamtheblackunicorn/acid

# Fetching the Rust installer.
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

# Setting up the Rust toolchain.
source $HOME/.cargo/env

# Installing Acid from GitHub.
cargo install --git $GIT_URL

# Checking if Acid is installed properly.
acid-rs -v

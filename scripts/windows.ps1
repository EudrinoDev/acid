# ACID.SH by Alexander Abraham,
# a.k.a. "The Black Unicorn", a.k.a. "Angeldust Duke".
# Licensed under the MIT license.

# The Rust installer URL for Windows 64-bit systems.
$heavy_url = "https://static.rust-lang.org/rustup/dist/x86_64-pc-windows-msvc/rustup-init.exe"

# The Rust installer URL for Windows 32-bit systems.
$light_url = "https://static.rust-lang.org/rustup/dist/i686-pc-windows-msvc/rustup-init.exe"

# The URL for Acid's GitHub repository.
$acid_url = "https://gihub.com/iamtheblackunicorn/acid"

# Checking the architectecture: 64-bit or 32-bit.
if ([Environment]::Is64BitProcess -ne [Environment]::Is64BitOperatingSystem) {
  # Fetching the installer.
  Invoke-WebRequest -Uri $light_url -OutFile ./rustup-init.exe
  # Exectuing the installer.
  ./rustup-init.exe -y
  # Installing Acid.
  cargo install --git $acid_url
}
else {
  # Fetching the installer.
  Invoke-WebRequest -Uri $heavy_url -OutFile ./rustup-init.exe
  # Exectuing the installer.
  ./rustup-init.exe -y
  # Installing Acid.
  cargo install --git $acid_url
}

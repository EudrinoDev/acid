$heavy_url = "https://static.rust-lang.org/rustup/dist/x86_64-pc-windows-msvc/rustup-init.exe"
$light_url = "https://static.rust-lang.org/rustup/dist/i686-pc-windows-msvc/rustup-init.exe"
$acid_url = "https://gihub.com/iamtheblackunicorn/acid"

if ([Environment]::Is64BitProcess -ne [Environment]::Is64BitOperatingSystem) {
  Invoke-WebRequest -Uri $light_url -OutFile ./rustup-init.exe
  ./rustup-init.exe -y
  cargo install --git $acid_url
}
else {
  Invoke-WebRequest -Uri $heavy_url -OutFile ./rustup-init.exe
  ./rustup-init.exe -y
  cargo install --git $acid_url
}

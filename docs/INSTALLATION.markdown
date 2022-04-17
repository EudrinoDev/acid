# INSTALLATION

## Installation

- On Unix-based systems, you can run the command below in a normal `*sh` session. This command will install the Rust toolchain and install the latest cutting-edge version of ***Acid***.

  ```bash
  curl --tlsv1.2 -sSf https://raw.githubusercontent.com/iamtheblackunicorn/acid/main/scripts/unix.sh | sh
  ```

- On Windows systems, you can run the command below in a Powershell session with administrative privileges. This command will install the Rust toolchain and install the latest cutting-edge version of ***Acid***. To ensure script execution succeeds, you will have to do the following:
  - Allow Powershell script execution, by enabling it in "Settings" > "Updates and Security" > "Developer Settings".
  - ***TEMPORARILY*** disable your firewall if you have one active.

  ```bash
  Invoke-WebRequest -Uri https://raw.githubusercontent.com/iamtheblackunicorn/acid/main/scripts/windows.ps1 -OutFile ./windows.ps1; ./windows.ps1
  ```

## Uninstallation

To remove ***Acid*** from your system, run this command for Unix-based systems in a Bash session:

  ```bash
  rm -rf $(which acid-rs)
  ```

To remove ***Acid*** from your system, run this command for Windows systems in a Powershell session:

  ```powershell
  Remove-Item (Get-Command acid-rs).Path
  ```

## Troubleshooting

- Windows: If you get an error like `spurious network error`, run this command: `cargo install --git https://github.com/iamtheblackunicorn/acid`.

# COMMAND LINE USAGE

Assuming you correctly installed ***Acid***, you can now run the following commands from the command line:

- Create a new ***Acid*** site in `some_dir`:

  ```bash
  $ acid-rs --nsite some_dir
  # OR
  $ acid-rs -n some_dir
  ```

- Create a new ***Acid*** theme in `some_dir`:

  ```bash
  $ acid-rs --theme some_dir
  # OR
  $ acid-rs -t some_dir
  ```

- Build an ***Acid*** site located in `some_dir`:

  ```bash
  $ acid-rs --build some_dir
  # OR
  $ acid-rs -b some_dir
  ```

- Serve your compiled ***Acid*** site in `some_dir`:

  ```bash
  $ acid-rs --serve some_dir
  # OR
  $ acid-rs -s some_dir
  ```

- Clean an ***Acid*** site located in `some_dir`:

  ```bash
  $ acid-rs --clean some_dir
  $ acid-rs -c some_dir
  ```

- Check version information:

  ```bash
  $ acid-rs --version
  # OR
  $ acid-rs -v
  ```

- Get help:

  ```bash
  $ acid-rs --help
  # OR
  $ acid-rs -h
  ```

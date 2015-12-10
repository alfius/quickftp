# Quickftp

Quickftp is a command line application that allows to quickly start an ftp server without worrying about configuration. This makes it a handy tool to transfer files easily.
Although the server is stable, it's not intended to be used for public servers. This gem is based on the [ftpd gem by Wayne Conrad](https://github.com/wconrad/ftpd/), so you can find more information about reliability and the protocol internals in the gem documentation.

## Installation

```bash
gem install quickftp
```

## Usage

To simply start the server at any available port serving the files from the current directory, run:

```bash
quickftp
```

## Options

- -h HOST: The interface where the server should start. When not specified, the server will start on localhost.
- -p PORT: The port where the server should start. When not specified, a random available port will be chosen.

### Examples

```bash
# start the server in localhost, under port 3002 and files from the current directory:
quickftp -p 3002

# start the server in 192.168.1.1:9000 and serve files from /tmp/dir:
quickftp /tmp/dir -h 192.168.1.1 -p 9000
```

## Contributions and credits

- This project is based on the [ftpd gem by Wayne Conrad](https://github.com/wconrad/ftpd/).
- If you want to contribute to this project, just fork it and create a pull request. Also, feel free to report issues on the [issues section](issues).

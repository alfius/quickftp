# Purvey

<a href="http://www.omniref.com/ruby/gems/purvey"><img src="http://assets2.omniref.com/assets/logo-1e25ba89780a42da4556dd96c03ac954.png" height="18" width="75"></a>

Purvey is a command line application that allows to quickly start an ftp server without worrying about configuration. This makes it a handy tool to transfer files easily. It's not intended to be used in public servers.

## Installation

```bash
gem install purvey
```

## Usage

To simply start the server at any available port serving the files from the current directory, run:

```bash
purvey
```

## Options

- -h HOST: The interface where the server should start. When not specified, the server will start on localhost.
- -p PORT: The port where the server should start. When not specified, a random available port will be chosen.

### Examples

```bash
# start the server in localhost, under port 3002 and files from the current directory:
purvey -p 3002

# start the server in 192.168.1.1:9000 and serve files from /tmp/dir:
purvey /tmp/dir -h 192.168.1.1 -p 9000
```

## TODO
### Authentication
An easy way to setup users and password is pending. For now the server runs without any kind of authentication.

## Contributions and credits

- This project is based on the [ftpd gem by Wayne Conrad](https://github.com/wconrad/ftpd/).
- If you want to contribute to this project, just fork it and create a pull request. Also, feel free to report issues on the [issues section](issues).

## License

(The MIT License)

Copyright (c) 2012 Alfonso Cora

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the 'Software'), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


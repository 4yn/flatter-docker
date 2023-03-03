Dockerapp'd [flatter](https://github.com/keeganryan/flatter)

## Requirements

- Docker
- User with sudo / docker group

## Usage

```bash
$ docker build -t flatter .
$ latticegen q 4 2 10 b | ./flatter 
[[4 -1 1 0]
[2 10 8 2]
[1 4 -5 -13]
[4 4 -12 12]
]
$ # add ./flatter to your $PATH]
$ # for example
$ cp ./flatter /usr/local/bin/flatter
```

To force exit, use `Ctrl-D`.
# Hibiki

Fake tcp server to launch real tcp servers.

## Installation

```sh
gem install hibiki
```

## Quick start

```sh
./bin/hibiki -c ./lib/hibiki/config/config.yaml 
```

## Usage

```
Usage: hibiki [options]
    -c, --config PATH                configuration file path
```

## Configuration

```yaml
port: 10012

servers:

  - name:         MySQL
    port:         3306
    description:  MySQL server
    execute:      mysqld > /dev/null 2>&1
```

## Contributing

1. Fork this repository
2. Create a feature branch (`git checkout -b new-feature`)
3. Commit some changes (`git commit -a`)
4. Push to the branch (`git push origin new-feature`)
5. Create a new Pull Request

# Hibiki

Fake tcp server to launch real tcp servers.

## Installation

```sh
gem install hibiki
```

## Usage

```sh
./hibiki
```

## Configuration

```yaml
port: 10012

servers:

  - name:         MySQL
    port:         3306
    description:  MySQL server
    init:         /etc/hibiki/init/mysql.sh
```

## Contributing

1. Fork this repository
2. Create a feature branch (`git checkout -b new-feature`)
3. Commit some changes (`git commit -a`)
4. Push to the branch (`git push origin new-feature`)
5. Create a new Pull Request

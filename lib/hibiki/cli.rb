require 'socket'
require 'yaml'

module Hibiki
  module Cli
    class << self

      def start(args = ARGV)

        config = YAML.load_file('/etc/hibiki/config.yaml')

        config['servers'].each { |server|
          puts server['name'] + ': Listen to port ' + server['port'].to_s
          Thread.start {
            tcp_server = TCPServer.open(server['port'])
            socket = tcp_server.accept
            socket.close
            tcp_server.close
            puts server['name'] + ': Initialize with script ' + server['init']
            system server['init']
          }
        }

        tcp_server = TCPServer.open(config['port'])
        socket = tcp_server.accept
        socket.close
        tcp_server.close

      end

    end
  end
end


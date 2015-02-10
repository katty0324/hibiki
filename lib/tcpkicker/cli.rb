require 'socket'
require 'yaml'
require 'optparse'

module Tcpkicker
  module Cli
    class << self

      def start(args = ARGV)

        opt = OptionParser.new

        options = {
          :config_path => '/etc/tcpkicker/config.yaml',
        }

        opt.on('-c', '--config PATH', 'configuration file path') { |v|
          options[:config_path] = v
        }

        opt.parse(ARGV)
        
        config = YAML.load_file(options[:config_path])

        config['servers'].each { |server|
          puts '[' + server['name'] + '] Listen to port ' + server['port'].to_s
          Thread.start {
            tcp_server = TCPServer.open(server['port'])
            socket = tcp_server.accept
            socket.close
            tcp_server.close
            puts '[' + server['name'] + '] Execute command `' + server['execute'] + '`'
            system server['execute']
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


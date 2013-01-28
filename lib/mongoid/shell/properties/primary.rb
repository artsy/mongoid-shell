module Mongoid
  module Shell
    module Properties
      module Primary

        # primary database host
        def primary
          raise Mongoid::Shell::Errors::SessionNotConnectedError unless session.cluster.nodes.any?
          node = session.cluster.nodes.find(&:primary?)
          raise Mongoid::Shell::Errors::MissingPrimaryNodeError unless node
          node.address == "localhost:27017" ? nil : node.address
        end

      end
    end
  end
end

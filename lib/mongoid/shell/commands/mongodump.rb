module Mongoid
  module Shell
    module Commands
      class Mongodump < Mongoid::Shell::Commands::Base
        include Mongoid::Shell::Properties::Host
        include Mongoid::Shell::Properties::Database
        include Mongoid::Shell::Properties::Username
        include Mongoid::Shell::Properties::Password

        attr_accessor :collection, :query, :out, :directoryperdb, :journal, :oplog, :repair, :forceTableScan, :dbpath, :ipv6

        def initialize(attrs = {})
          super
        end

        def vargs
          super({
            '--host' => :host,
            '--db' => :db,
            '--username' => :username,
            '--password' => :password,
            '--collection' => :collection,
            '--query' => :query,
            '--out' => :out,
            '--directoryperdb' => :directoryperdb,
            '--journal' => :journal,
            '--oplog' => :oplog,
            '--repair' => :repair,
            '--forceTableScan' => :forceTableScan,
            '--dbpath' => :dbpath,
            '--ipv6' => :ipv6
          })
        end
      end
    end
  end
end

module RoutingFilter
  module ResultWrapper
    class RailsFourTwo < Base
      def self.version
        Gem::Version.new '4.2.0'
      end

      def initialize(result)
        super(*result)
      end

      def generate
        [url, params]
      end
    end
  end
end


module RoutingFilter
  module ResultWrapper
    class RailsSixOne < Base
      RouteWithParams = Struct.new(:url, :params) do
        def path(_)
          return url
        end
      end

      def self.version
        Gem::Version.new '6.1.0'
      end

      def initialize(result)
        super(result.path(nil), result.params)
      end

      def generate
        RouteWithParams.new(url, params)
      end
    end
  end
end


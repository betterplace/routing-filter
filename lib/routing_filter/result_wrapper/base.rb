module RoutingFilter
  module ResultWrapper
    class Base
      def self.version
        raise NotImplementedError
      end

      attr_reader :url, :params

      def initialize(url, params)
        @url = url
        @params = params
      end

      def update(url)
        @url = url
      end

      def generate
        raise NotImplementedError
      end
    end
  end
end


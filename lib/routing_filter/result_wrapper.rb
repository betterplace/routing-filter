module RoutingFilter
  module ResultWrapper
    autoload :Base,         'routing_filter/result_wrapper/base'
    autoload :RailsFourTwo, 'routing_filter/result_wrapper/rails_four_two'
    autoload :RailsSixOne,  'routing_filter/result_wrapper/rails_six_one'

    VERSION = Gem::Version.new ActionPack::VERSION::STRING

    def self.current
      @current ||= [RailsSixOne, RailsFourTwo].find { |wrapper| VERSION >= wrapper.version }
    end
  end
end

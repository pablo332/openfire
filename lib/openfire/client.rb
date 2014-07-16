module Openfire
  class Client
    include ActiveSupport::Configurable

    config.services = [ 'Group', 'Room', 'User' ]

    def initialize(url,secret)
      @services = config.services.map { |s| "Openfire::Service::#{s}".constantize.new url: url, secret: secret }
    end

    def get_service(service)
      klass_name = "Openfire::Service::#{service.to_s.classify}"
      klass = klass_name.constantize rescue nil
      @services.each { |s| return s if s.is_a?(klass) }
      raise "unknown service: #{service}"
    end

    def method_missing(meth, *args, &block)
      @services.each do |service|
        if service.respond_to?(meth)
          return service.send meth, *args
        end
      end
      super
    end

  end
end

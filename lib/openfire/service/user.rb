module Openfire
  module Service
    class User < Base

      config.path = 'plugins/userService/userservice'
      config.exceptions = [
        'HTTPException',
        'InvalidResponseException',
        'UserServiceDisabled',
        'RequestNotAuthorised',
        'IllegalArgumentException',
        'UserNotFoundException',
        'UserAlreadyExistsException'
      ]

      class HTTPException < StandardError; end
      class InvalidResponseException < StandardError; end
      class UserServiceDisabledException < StandardError; end
      class RequestNotAuthorisedException < StandardError; end
      class IllegalArgumentException < StandardError; end
      class UserNotFoundException < StandardError; end
      class UserAlreadyExistsException < StandardError; end

      def add_user!(opts)
        submit_request(opts.merge(:type => :add))
      end

      def delete_user!(opts)
        submit_request(opts.merge(:type => :delete))
      end

      def update_user!(opts)
        submit_request(opts.merge(:type => :update))
      end

      def lock_user!(opts)
        submit_request(opts.merge(:type => :disable))
      end

      def unlock_user!(opts)
        submit_request(opts.merge(:type => :enable))
      end

    end
  end
end

require "dotted_rulers/array"
require "dotted_rulers/version"
require "dotted_rulers/routing"
require "dotted_rulers/util"
require "dotted_rulers/dependencies"
require "dotted_rulers/controller"
require "dotted_rulers/file_model"

module DottedRulers
  class Application
    def call(env)
      if env['PATH_INFO']  == '/favicon.ico'
        return [404, {'Content-Type' => 'text/html'},[]]
      end

      klass, act = get_controller_and_action(env)
      controller = klass.new(env)
      begin
        text = controller.send(act)
      rescue Exception => e
        return [500, {'Content-Type' => 'text/html'},
                ["Whoa! Something supper colossal happend....  ",
                 "Message from page:  #{e}",
                 ]
                ]
      end
      if controller.get_response
        st, hd, rs = controller.get_response.to_a[st, hd [rs.body].flatten]
      else

        [200, {'Content-Type' => 'text/html'},
         [text]]
      end
    end
  end

  # class Controller
  #   def initialize(env)
  #     @env = env
  #   end

  #   def env
  #     @env
  #   end
  # end

end

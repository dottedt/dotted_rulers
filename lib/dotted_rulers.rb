require "dotted_rulers/array"
require "dotted_rulers/version"
require "dotted_rulers/routing"

module DottedRulers
  class Application
    def call(env)
      if env['PATH_INFO']  == '/favicon.ico'
        return [404, {'Content-Type' => 'text/html'}[]]
      end
      klass, act = get_controller_and_action(env)
      controller = klass.new(env)
      text = controller.send(act)
      [200, {'Content-Type' => 'text/html'},
       [text]]
    end
  end

  class Controller
    def initialize(env)
      @env = env
    end

    def env
      @env
    end
  end

end

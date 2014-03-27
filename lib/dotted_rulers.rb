require "dotted_rulers/array"
require "dotted_rulers/version"
require "dotted_rulers/routing"

module DottedRulers
  class Application
    def call(env)
      klass, act = get_controller_and_action(env)
      controller = Klass.new(env)
      text = controller.send(act)
      [200, {'Content-Type' => 'text/html'},
        ["Hello to Scott from Ruby on Rulers!"]]
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

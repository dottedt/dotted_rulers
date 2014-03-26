require "dotted_rulers/version"

module DottedRulers
  class Application
    def call(env)
      [200, {'Content-Type' => 'text/html'},
        ["Hello to Scott from Ruby on Rulers!"]]
    end
  end
end

require 'opal'
require 'native'
require 'clearwater'

class Layout
  include Clearwater::Component

  def render
    h1('hello world')
  end
end

class Application

  def run
    Clearwater::Application.new(
      component: Layout.new
    ).call
  end

end

Application.new.run()
require 'opal'
require 'native'
require 'clearwater'

require_tree '.'

class Application

  def run
    Clearwater::Application.new(
      component: Layout.new
    ).call
  end

end

Application.new.run()
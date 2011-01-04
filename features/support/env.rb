require 'lackie'
#require File.join(File.dirname(__FILE__), '..', '..', '..', 'lackie', 'lib', 'lackie')

module ExampleWorld
  def remote
    Lackie::RemoteControl.new("localhost", 8282)
  end
end

World(ExampleWorld)
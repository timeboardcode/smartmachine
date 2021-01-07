require 'thor'
require 'smart_machine'

module SmartMachine
  class CLI < Thor
    map ["--version", "-v"] => "version"

    desc "--version", "Shows the current SmartMachine version"
    def version
      puts "SmartMachine #{SmartMachine.version}"
    end

    desc "new NAME", "Creates a new machine using the given name"
    def new(name)
      raise "Can't create a machine inside a machine. Please come out of the machine directory to create another machine." if SmartMachine.in_machine_dir?

      machine = SmartMachine::Machine.new
      machine.create(name)
    end
  end
end

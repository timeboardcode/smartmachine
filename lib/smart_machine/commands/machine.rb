module SmartMachine
  module Commands
    class CLI < Thor
      desc "new NAME", "Creates a new machine using the given name"
      def new(name)
        raise "Can't create a machine inside a machine. Please come out of the machine directory to create another machine." if SmartMachine.in_machine_dir?

        machine = SmartMachine::Machine.new
        machine.create(name)
      end
    end
  end
end

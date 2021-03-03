

class MetasploitModule < Msf::Auxiliary
    def initialize(info = {})
      super(
        update_info(
          info,
          'Name'           => 'Exert Hello',
          'Description'    => 'Exert Hello',
          'Author'         => ['ChaosAnnals <chaosannals@outlook.com>'],
          'License'        => MSF_LICENSE,
          'Actions'        => [
            [ 'Default Action', 'Description' => 'This does something' ],
            [ 'Another Action', 'Description' => 'This does a different thing' ]
          ],
          'PassiveActions' => [
            'Another Action'
          ],
          'DefaultAction'  => 'Default Action'
        )
      )
    end
  
    def run
      print_status("Running the simple auxiliary module with action #{action.name}")
    end
  
    def auxiliary_commands
      { "aux_extra_command" => "Run this auxiliary test commmand" }
    end
  
    def cmd_aux_extra_command(*args)
      print_status("Running inside aux_extra_command(#{args.join(' ')})")
    end
end
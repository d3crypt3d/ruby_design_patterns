class Client
  attr_writer :remote_control

  def run
    (0..5).each do |slot|
      puts "#{slot + 1} PAIR OF BUTTONS:",
           @remote_control.command_description(slot),
           '--pushing the ON button--',
           @remote_control.on_button_pushed(slot),
           '--pushing the OFF button--',
           @remote_control.off_button_pushed(slot),
           ''
    end

    puts 'TEST THE UNDO BUTTON:',
         '--pushing the ON button--',
         @remote_control.on_button_pushed(1),
         '--pushing the undo button--',
         @remote_control.undo_button_pushed,
         '--pushing the OFF button--',
         @remote_control.off_button_pushed(5),
         '--pushing the undo button--',
         @remote_control.undo_button_pushed
  end
end

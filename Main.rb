require 'rainbow/ext/string'
require_relative 'CharachterSet'
require_relative 'Config'
require_relative 'Methods'
require_relative 'Security'

#OnLaunch
SecurityCheck()
Startup()
PauseWait()

#ProgramBody
loop do
puts ""
puts "Awaiting command:"
@Choice = gets.strip
case @Choice
when "/help"
  Help()
when "/bomb"
  Payload_Storagebomb()
when "/hungry"
  Payload_Fork()
when "exit"
  Exit_app()
else
  puts ""
  puts @ErrorSign + "Error:".color(:red) + " " + @Choice.to_s.color(:red) + " is an invalid command"
  puts @InformationSign + "Try " + "/help".color(:yellow) + " for full list of commands"
end
end

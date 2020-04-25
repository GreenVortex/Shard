#Security patch
def SecurityCheck()
if File.exists?("SecureFile")
@SecureKey = File.read("SecureFile")
else
puts @ErrorSign + "Error:".color(:red) + " Security file not found"
sleep(3)
abort()
end
end

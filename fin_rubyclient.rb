require 'socket'

s = TCPSocket.new 'localhost', 2000

loop do
  sms = gets
  s.puts sms
  line = s.gets # Read lines from socket
  puts line         # and print them
  sms = gets
  s.puts sms
  
end
s.close             # close socket when done

$:.unshift(File.dirname(__FILE__) + '/../lib')

require "eventmachine"

%w[
  debugger 
  js_methods
  websocket connection
  handshake75 handshake76
  framing76 framing03
  handler_factory handler handler75 handler76 handler03
].each do |file|
  require "em-websocket/#{file}"
end

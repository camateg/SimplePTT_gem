require 'serialport'

# Turn on / off RTS and DTR pins on a serial line
# Initialize:
#   >> s = Ptt.new("/dev/tty.usbserial")
#
# Arguments:
#   port: (String)
#
# Turn RTS / DTR on:
#   s.on
#
# Turn RTS / DTR off:
#   s.off
#
# Analyze State:
#   s.state
#

class Ptt

	#
	# Arguments:
	#  port: (String)
	#

	def initialize(port)
		begin
			@@sp = SerialPort.new(port,9600)
			@@sp.rts = 0
			@@sp.dtr = 0
			@@state = 0
		rescue
			@@sp = nil
			@@state = -1
		end
	end

	def state
		@@state
	end
	
	def on
		begin
			@@sp.dtr = 1
			@@sp.rts = 1
			@@state = 1
		rescue
			@@state = -1	
		end
	end

	def off
		begin
			@@sp.dtr = 0
			@@sp.rts = 0
			@@state = 0
		rescue
			@@state = -1
		end
	end	
end


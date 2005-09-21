module Rex
	Root = File.join(File.dirname(__FILE__), 'rex')
end

# Generic classes
require 'rex/constants'
require 'rex/exceptions'
require 'rex/transformer'
require 'rex/text'
require 'rex/time'
require 'rex/string_utils'

# Thread safety and synchronization
require 'rex/thread_safe'
require 'rex/ref'
require 'rex/read_write_lock'
require 'rex/sync/event'

# Encoding
require 'rex/encoder/xor'
require 'rex/encoding/xor'

# Architecture subsystem
require 'rex/arch/x86'

# Logging
require 'rex/logging/log_dispatcher'

# IO
require 'rex/io/stream'
require 'rex/io/stream_server'

# Sockets
require 'rex/socket'

# Parsers
require 'rex/parser/arguments'
require 'rex/parser/ini'

# Overload the Kernel.sleep() function to be thread-safe
Kernel.class_eval("
	def sleep (seconds)
		Rex::ThreadSafe.sleep(seconds)
	end
")


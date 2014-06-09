require "irb/completion"
require "pp"
require "irb/ext/save-history"

IRB.conf[:AUTO_INDENT] = true
IRB.conf[:SAVE_HISTORY] = 2000
IRB.conf[:HISTORY_FILE] = "#{ENV["HOME"]}/.irb-history"

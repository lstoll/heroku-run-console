# Monkey patch out the console command.

require 'heroku/command/run'

class Heroku::Command::Run < Heroku::Command::Base
  alias_method :orig_console, :console

  # console
  #
  # Starts a console via a run process
  #
  def console
    @args = "rails console || script/rails console || irb".split
    index
  end
end

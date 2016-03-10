require 'pry'
require "git"

repos = File.readlines("repos.txt").map(&:strip!)
# p repos

local_stuff = []
errors = []
repos.each {|r|
  p r
  begin
    g = Git.open(r.split(".git").first)
    if g.status.changed != {}
      local_stuff << r
    end
  rescue Git::GitExecuteError => e # probably a submodule
    p e.message
    errors << r
  end
}

binding.pry

p "-" * 100
p local_stuff
p "-" * 100
p errors

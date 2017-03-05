#!/usr/bin/env ruby
require 'pathname'
require 'shellwords'

`which mas`

def install(app, location = nil, mas_num = nil)
  location = "/Applications/#{app.capitalize}.app"
  unless Pathname.new(location).exist?
    puts "Installing #{app}"
    mas_num = `mas search #{Shellwords.escape(app)}`.split.first if mas_num.nil?
    system("mas", "install", mas_num)
  end
end

unless $?.success?
  if system("brew", "install", "mas")
    puts "Couldn't install mas"
    exit
  end
end

APPS = [
  "monosnap",
  "notebook",
  "BetterSnapTool",
  "TogglDesktop",
  "Pocket",
  "Spark",
  "Copy'em Paste",
  "Keynote",
  "Numbers",
  "Pages",
  "Affinity Photo",
  "pixelmator",
  "xcode",
  "forklift file manager",
  "GIF Brewery",
  "Notebook - Take Notes, Sync across devices"
]

APPS.each do |app|
  install(app)
end

if `mas outdated`.empty? 
  puts "Updating apps"
  system("mas", "upgrade")
else
  puts "All apps are up to date"
end

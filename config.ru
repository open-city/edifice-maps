require "bundler"
Bundler.require :default

base = File.dirname(__FILE__)
$:.unshift File.join(base, "lib")

require "edifice_maps"

Sinatra::Base.set(:root) { base }
run EdificeMaps::Application


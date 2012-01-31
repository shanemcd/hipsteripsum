#!/usr/bin/env ruby

require 'faraday'
require 'faraday_middleware'

conn = Faraday.new(:url => 'http://hipsterjesus.com') do |builder|
  builder.use Faraday::Response::Mashify
  builder.use Faraday::Response::ParseJson
  builder.adapter Faraday.default_adapter
end

def buildurl(paras, type = "centric")
  url = "/api/?paras=#{paras}&type=hipster-#{type}"
end

response = conn.get buildurl(ARGV[0], ARGV[1])

t = response.body

puts t.text

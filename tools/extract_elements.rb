require 'rubygems'
require 'nokogiri'

Dir["../samples/*.xml"].map {|i| File.open(i, 'r') }.map {|i| Nokogiri::XML(i.readlines.join) }.map {|i| i.xpath("//*").map {|elem| elem.name } }.inject([]) {|arr, val| arr += val }.uniq.each {|i| puts i }

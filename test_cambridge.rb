#! /usr/bin/env ruby

require 'test/unit'
require_relative 'ex3'

Data = Struct.new(:src, :expectation)

class TestCambridge < Test::Unit::TestCase
  using RubyKansai

  def test_cambridge
    data = <<EOF.lines.map{|l| Data.new(*l.chomp.split(/\t+:/, -1))}
0123	:0213
012345	:021435
01234	:02134
0123456	:0214356
012	:012
01	:01
0	:0
	:
EOF
    data.each do |datum|
      assert_equal(datum.expectation, datum.src.cambridge)
    end
  end
end

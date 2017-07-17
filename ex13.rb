#! /usr/bin/env ruby

# コマンドラインから受け取った文字列の文字数を出力する。
puts ARGV.map(&:size).sum

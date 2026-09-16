#!/usr/bin/env ruby
# encoding: UTF-8
# frozen_string_literal: true

require "pathname"

Encoding.default_external = Encoding::UTF_8

root = Pathname.new(File.expand_path("..", __dir__))
failures = []
markdown_files = Dir[root.join("**/*.md")]

markdown_files.each do |file|
  text = File.read(file, encoding: "UTF-8")
  text.scan(/\[[^\]]*\]\(([^)]+)\)/).flatten.each do |target|
    next if target.start_with?("http://", "https://", "mailto:", "#")
    clean = target.split("#", 2).first
    next if clean.empty?
    resolved = Pathname.new(file).dirname.join(clean).cleanpath
    failures << "#{Pathname.new(file).relative_path_from(root)} -> #{target}" unless resolved.exist?
  end
end

if failures.empty?
  puts "OK: #{markdown_files.length} Markdown-Dateien, alle lokalen Linkziele vorhanden."
  exit 0
end

warn "Fehlende lokale Linkziele (#{failures.length}):"
failures.each { |failure| warn "- #{failure}" }
exit 1

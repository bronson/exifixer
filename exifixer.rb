#!/usr/bin/env ruby

# Recursively finds jpg/jpeg files and converts their filesystem creation
# times to match the date_time in the exif data.

require 'exifr'
require 'find'

def log message
  $messages ||= []
  $messages << message
end

Find.find('.') do |path|
  if path =~ /\.jpe?g$/i
    begin
      time = EXIFR::JPEG.new(path).date_time
      if time
        File.utime(time, time, path)
        puts "#{path}: #{time}"
      else
        log "No date found in #{path}"
      end
    rescue EXIFR::MalformedJPEG
      log "No EXIF found in #{path}"
    end
  end
end

if $messages
  puts "\n" + $messages.join("\n")
end

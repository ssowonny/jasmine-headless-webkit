require 'execjs'
require 'digest/sha1'
require 'fileutils'

module Jasmine
  module Headless
    class DustCache < CacheableAction
      class << self
        def cache_type
          "dust"
        end
      end

      module Source
        def self.path
          @path ||= File.expand_path('../../../../vendor/assets/javascripts/dust-full-for-compile.js', __FILE__)
        end

        def self.contents
          @contents ||= File.read(path)
        end

        def self.context
          @context ||= ExecJS.compile(contents)
        end

      end

      def action
        template_root = "app/assets/javascripts/templates/"
        template_name = file.split(template_root).last.split('.',2).first
        Source.context.call("dust.compile", File.read(file), template_name)
      end
    end
  end
end

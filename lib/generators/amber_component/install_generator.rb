# frozen_string_literal: true

require 'fileutils'

module ::AmberComponent
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      desc 'Install the AmberComponent gem'
      source_root ::File.expand_path('templates', __dir__)

      # copy rake tasks
      def copy_tasks
        copy_file 'application_component.rb', 'app/components/application_component.rb'
      end
    end
  end
end

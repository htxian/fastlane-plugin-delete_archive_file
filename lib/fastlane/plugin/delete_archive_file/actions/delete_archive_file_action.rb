require 'fastlane/action'

require_relative '../helper/delete_archive_file_helper'

module Fastlane
  module Actions
    module SharedValues
      DELETE_ARCHIVE_FILE_CUSTOM_VALUE = :DELETE_ARCHIVE_FILE_CUSTOM_VALUE
    end

    class DeleteArchiveFileAction < Action
      def self.run(params)
        # fastlane will take care of reading in the parameter and fetching the environment variable:
        UI.message("需要删除的路径😄 #{params[:remove_path]} ")
        
        path = params[:remove_path]
        true_path = Actions.sh("echo #{path} | sed 's/ /\\\\ / g'")
        result = Actions.sh("rm -rf #{true_path}")
        UI.message("result:#{result}")
        # Actions.lane_context[SharedValues::DELETE_ARCHIVE_FILE_CUSTOM_VALUE] = "my_val"
      end

      #####################################################
      # @!group Documentation
      #####################################################

      def self.description
        "A short description with <= 80 characters of what this action does"
      end

      def self.details
        # Optional:
        # this is your chance to provide a more detailed description of this action
        "You can use this action to do cool things..."
      end

      def self.available_options
        # Define all options your action supports. 
        
        # Below a few examples
            [
            FastlaneCore::ConfigItem.new(key: :remove_path,
                                         description: "需要删除的路径",
                                         is_string: true, # true: verifies the input is a string, false: every kind of value
                                         verify_block: proc do |value|
                                         UI.user_error!("No remove_path for DeleteArchiveFileAction given, pass using `remove_path: 'path'`") unless (value and not value.empty?)
                                         # UI.user_error!("Couldn't find file at path '#{value}'") unless File.exist?(value)
                                         end),
            ]
      end

      def self.output
        # Define the shared values you are going to provide
        # Example
        [
          ['DELETE_ARCHIVE_FILE_CUSTOM_VALUE', 'A description of what this value contains']
        ]
      end

      def self.return_value
        # If your method provides a return value, you can describe here what it does
      end

      def self.authors
        # So no one will ever forget your contribution to fastlane :) You are awesome btw!
        ["Your GitHub/Twitter Name"]
      end

      def self.is_supported?(platform)
        # you can do things like
        # 
        #  true
        # 
        #  platform == :ios
        # 
        #  [:ios, :mac].include?(platform)
        # 

        platform == :ios
      end
    end
  end
end

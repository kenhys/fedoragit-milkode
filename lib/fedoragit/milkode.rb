require "thor"
require "fedoragit/milkode/version"
require "fedoragit/milkode/downloader"

module Fedoragit
  module Milkode

    class Command < Thor

      desc "init", ""
      def init

        config_dir = File.expand_path("~/.fedoragit-milkode")
        FileUtils.mkdir_p(config_dir)

        downloader = Fedoragit::Milkode::Downloader.new
        downloader.fetch({:type => :repodata})
      end

    end

  end
end

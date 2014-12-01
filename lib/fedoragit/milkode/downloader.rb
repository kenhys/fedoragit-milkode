require "open-uri"
require "rexml/document"

module Fedoragit
  module Milkode

    class Downloader

      def initialize(*args)
      end

      def fetch(*args)
        if args[0].kind_of?(Hash)
          case args[0][:type]
          when :repodata
            repomd_xml = "http://ftp.jaist.ac.jp/pub/Linux/Fedora/releases/20/Everything/x86_64/os/repodata/repomd.xml"
            save_path = File.expand_path("~/.fedoragit-milkode/repomd.xml")
            open(save_path, "w+") do |file|
              open(repomd_xml) do |context|
                file.puts(context.read)
              end
            end
            extract_comps_xml_path(save_path)
          end
        end
      end

      def extract_comps_xml_path(path)
        open(path) do |file|
        end
      end
    end

  end
end

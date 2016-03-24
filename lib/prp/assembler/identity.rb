module PRP
  module Assembler
    # Gem identity information.
    module Identity
      def self.name
        "prp-assembler"
      end

      def self.label
        "PRP::Assembler"
      end

      def self.version
        "0.1.0"
      end

      def self.version_label
        "#{label} #{version}"
      end
    end
  end
end

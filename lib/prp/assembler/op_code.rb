module PRP
  module Assembler
    # Translates operation to machine code
    class OpCode
      attr_accessor :code

      OP_TO_CODE = {
        "ADD" => 0b111,
        "CMP" => 0b110,
        "SHL" => 0b101,
        "SHR" => 0b100,
        "NOT" => 0b011,
        "XOR" => 0b010,
        "OR"  => 0b001,
        "AND" => 0b000
      }.freeze

      def initialize op
        self.code = OP_TO_CODE.fetch(op)
      rescue KeyError
        raise ArgumentError, "Operation #{op} not recognized"
      end
    end
  end
end

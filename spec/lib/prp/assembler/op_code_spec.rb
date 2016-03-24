require "spec_helper"

describe PRP::Assembler::OpCode do
  describe "operation to machine code" do
    subject do
      PRP::Assembler::OpCode
    end

    def self.operation op, code
      it "#{op} is #{code}" do
        expect(subject.new(op).code).to eq(code)
      end
    end

    operation "ADD", 0b111
    operation "CMP", 0b110
    operation "SHL", 0b101
    operation "SHR", 0b100
    operation "NOT", 0b011
    operation "XOR", 0b010
    operation "OR",  0b001
    operation "AND", 0b000
  end
end

require 'spec_helper'

describe Transpose do

  it 'has a version number' do
    expect(Transpose::VERSION).not_to be nil
  end

  describe ".transpose_up" do

    it "moves a note up a whole step correctly" do
      new_note = Transpose.transpose_up("C", "Major 2nd")
      expect(new_note).to eq "D"
    end

    it "returns a flat when given a flat" do
      pending "fixing enharmonic equivalence"
      new_note = Transpose.transpose_up("Bb", "Perfect 4th")
      expect(new_note).to eq "Eb"
    end

    it "loops over the octave correctly" do
      new_note = Transpose.transpose_up("A#", "Perfect 4th")
      expect(new_note).to eq "D#"
    end

  end

  describe ".transpose_down" do

    it "moves a note down a whole step correctly" do
      new_note = Transpose.transpose_down("D", "Major 2nd")
      expect(new_note).to eq "C"
    end

    it "returns a flat when given a flat" do
      pending "fixing enharmonic equivalence"
      new_note = Transpose.transpose_down("Eb", "Perfect 4th")
      expect(new_note).to eq "Bb"
    end

    it "loops over the octave correctly" do
      new_note = Transpose.transpose_down("D", "Perfect 4th")
      expect(new_note).to eq "A"
    end

  end

end

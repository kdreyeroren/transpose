require "transpose/version"

module Transpose

  NOTES = {
    "C" => 1,
    "C#" => 2,
    "Db" => 2,
    "D" => 3,
    "D#" => 4,
    "Eb" => 4,
    "E" => 5,
    "F" => 6,
    "F#" => 7,
    "Gb" => 7,
    "G" => 8,
    "G#" => 9,
    "Ab" => 9,
    "A" => 10,
    "A#" => 11,
    "Bb" => 11,
    "B" => 12
  }

  INTERVALS = {
    "Unison" => 0,
    "Minor 2nd" => 1,
    "Major 2nd" => 2,
    "Minor 3rd" => 3,
    "Major 3rd" => 4,
    "Perfect 4th" => 5,
    "Augmented 4th" => 6,
    "Diminished 5th" => 6,
    "Perfect 5th" => 7,
    "Minor 6th" => 8,
    "Major 6th" => 9,
    "Minor 7th" => 10,
    "Major 7th" => 11,
    "Octave" => 12
  }

  def self.transpose_up(note, interval)
    note_value = NOTES[note]
    interval_value = INTERVALS[interval]
    new_note_value = note_value + interval_value
    note_value_to_name(new_note_value)
  end

  def self.transpose_down(note, interval)
    note_value = NOTES[note]
    interval_value = INTERVALS[interval]
    new_note_value = note_value - interval_value
    note_value_to_name(new_note_value)
  end

  def self.note_value_to_name(note_value)
    NOTES.key(note_value % 12)
  end




end

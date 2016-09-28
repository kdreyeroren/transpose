require "transpose/version"

module Transpose

  SHARPS = {
    "C" => 1,
    "C#" => 2,
    "D" => 3,
    "D#" => 4,
    "E" => 5,
    "F" => 6,
    "F#" => 7,
    "G" => 8,
    "G#" => 9,
    "A" => 10,
    "A#" => 11,
    "B" => 12
  }

  FLATS = {
    "C" => 1,
    "Db" => 2,
    "D" => 3,
    "Eb" => 4,
    "E" => 5,
    "F" => 6,
    "Gb" => 7,
    "G" => 8,
    "Ab" => 9,
    "A" => 10,
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

  def self.flat?(note)
    note.end_with?("b")
  end

  def self.get_value_from_flat_note(note)
    FLATS[note]
  end

  def self.get_value_from_sharp_note(note)
    SHARPS[note]
  end

  def self.get_value_of_interval(interval)
    INTERVALS[interval]
  end

  def self.transpose_up(note, interval)
    if flat?(note)
      new_note_value = get_value_from_flat_note(note) + get_value_of_interval(interval)
      flat_value_to_name(new_note_value)
    else
      new_note_value = get_value_from_sharp_note(note) + get_value_of_interval(interval)
      sharp_value_to_name(new_note_value)
    end
  end

  def self.transpose_down(note, interval)
    if flat?(note)
      new_note_value = get_value_from_flat_note(note) - get_value_of_interval(interval)
      flat_value_to_name(new_note_value)
    else
      new_note_value = get_value_from_sharp_note(note) - get_value_of_interval(interval)
      sharp_value_to_name(new_note_value)
    end
  end

  def self.flat_value_to_name(note_value)
    FLATS.key(note_value % 12)
  end

  def self.sharp_value_to_name(note_value)
    SHARPS.key(note_value % 12)
  end

end

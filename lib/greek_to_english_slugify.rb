# frozen_string_literal: true

require_relative "greek_to_english_slugify/version"

module GreekToEnglishSlugify
  class Error < StandardError; end
  ALPHABETS = {
    "α" => "a",
    "ά" => "a",
    "β" => "b",
    "γ" => "g",
    "δ" => "d",
    "ε" => "e",
    "έ" => "e",
    "ζ" => "z",
    "η" => "i",
    "ή" => "i",
    "θ" => "th",
    "ι" => "i",
    "ί" => "i",
    "κ" => "k",
    "λ" => "l",
    "μ" => "m",
    "ν" => "n",
    "ξ" => "ks",
    "ο" => "o",
    "ό" => "o",
    "π" => "p",
    "ρ" => "r",
    "σ" => "s",
    "ς" => "s",
    "τ" => "t",
    "υ" => "y",
    "ύ" => "y",
    "φ" => "f",
    "χ" => "x",
    "ψ" => "y",
    "ω" => "o",
    "ώ" => "o"
  }

  def sluging(value)
    result = []
    value.downcase.chars do |s|
      ALPHABETS.flat_map do |l, d|
        if s.match?(l)
          letters = s.gsub!(s, d)
          result << letters
        end
      end
    end
    return result.join
  end
end

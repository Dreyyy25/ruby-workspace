models = {
    anthropic: "Claude Code", 
    openai: "ChatGPT",
    google: "Gemini",
    microsoft: "Copilot"
}

# delete(key)
models.delete(:microsoft)
puts models

# empty?
puts models.empty?

# has_key?(key)
puts models.has_key?(:microsoft)
puts models.has_key?(:google)

# has_value?(value)
puts models.has_value?("Copilot")
puts models.has_value?("Claude Code")
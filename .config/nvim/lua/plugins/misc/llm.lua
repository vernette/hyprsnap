return {
  "huggingface/llm.nvim",
  enabled = false,
  config = {
    backend = "ollama",
    model = "codellama",
    url = "http://localhost:11434",
    request_body = {
      options = {
        temperature = 0.2,
        top_p = 0.95,
      },
    },
  },
}

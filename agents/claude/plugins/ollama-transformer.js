/**
 * Custom transformer to add num_ctx parameter for Ollama models.
 * 
 * This is necessary because, at least with my Kubernetes/ArgoCD-deployed Ollama runtime,
 * the input context window was defaulting to 4096 tokens. For more information on that, see:
 * https://github.com/ollama/ollama/blob/main/docs/faq.md#how-can-i-specify-the-context-window-size
 * 
 * To solve this, we need to add a custom transformer to the config.json file which appends the num_ctx
 * parameter to the request body of the HTTP request.
 * 
 * This is similar to making a curl request via something like:
 * curl -X POST http://localhost:11434/api/generate -H "Content-Type: application/json" -d '{"model": "llama3.1:8b", "prompt": "Hello, world!", "num_ctx": 131072}'
 */

class OllamaTransformer {
    constructor() {
        this.name = 'ollama-transformer';
    }
    async transformRequest(body, options = {}) {
        // Add num_ctx to options if not already present and set context window to 131072 (128k tokens)
        if (!body.options) {
            body.options = {};
        }
        body.options.num_ctx = options.num_ctx ?? 131072;
        
        if (options?.debug) {
            console.log('[ollama-transformer] DEBUG: Full body:', JSON.stringify(body, null, 2));
        }
        
        return body;
    }
    async transformResponse(response, _options) {
        return response;
    }
}

module.exports = OllamaTransformer;
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

const ollamaTransformer = {
    // The below transformer name MUST match the name of the transformer used in the config.json file.
    name: 'ollama-transformer',
    transformRequest: async (body, options = {}) => {
        // Add num_ctx to options if not already present and set context window to 131072 (128k tokens)
        if (!body.options) {
            body.options = {};
        }
        if (!body.options.num_ctx && options.num_ctx !== undefined) {
            body.options.num_ctx = options.num_ctx;
        }

        // Useful for debugging in Claude Code Router log files (found in ~/.claude-code-router/logs).
        if (options?.debug) {
            console.log('[ollama-transformer] Added num_ctx:', body.options.num_ctx);
        }

        return body;
    },
    // No changes needed here. Just return the response.
    transformResponse: async (response, _options) => response,
};

export default ollamaTransformer;
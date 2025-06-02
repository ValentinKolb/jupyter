# Jupyter Lab Docker Image

[![Docker Build](https://github.com/ValentinKolb/jupyter/actions/workflows/docker-build.yml/badge.svg)](https://github.com/ValentinKolb/jupyter/actions/workflows/docker-build.yml)
[![Docker Hub](https://img.shields.io/docker/pulls/valentinkolb/jupyter)](https://hub.docker.com/r/valentinkolb/jupyter)
[![Docker Image Size](https://img.shields.io/docker/image-size/valentinkolb/jupyter/latest)](https://hub.docker.com/r/valentinkolb/jupyter)

A Jupyter Lab environment with enhanced development features, scientific computing stack, and LLM integration capabilities.

## Features

- **Language Server Protocol**: Intelligent autocomplete, go-to-definition, and error detection
- **Git Integration**: Visual diff, merge tools, and version control
- **Scientific Stack**: pandas, numpy, matplotlib, scikit-learn, scipy
- **LLM Support**: Optional integration with Claude, OpenAI, and other providers
- **Custom Theming**: Optimized interface with improved typography (Fira Code)

## Quick Start

```bash
docker run -p 8888:8888 -v $(pwd):/home/jovyan/work ghcr.io/valentinkolb/jupyter:latest
```

### Docker Compose

```yaml
services:
  jupyter:
    image: ghcr.io/valentinkolb/jupyter:latest
    ports:
      - "8888:8888"
    volumes:
      - ./notebooks:/home/jovyan/work
    environment:
      - JUPYTER_TOKEN=your_secure_token
```

## Configuration

### Environment Variables

| Variable | Description |
|----------|-------------|
| `JUPYTER_TOKEN` | Security token for access |
| `ANTHROPIC_API_KEY` | Optional: Claude API key |
| `OPENAI_API_KEY` | Optional: OpenAI API key |
| `GOOGLE_API_KEY` | Optional: Google API key |

## Included Packages

- **Development**: python-lsp-server, jupyterlab-lsp, jupyterlab-git, jupyterlab-fonts
- **Scientific**: pandas, numpy, matplotlib, seaborn, scikit-learn, scipy
- **LLM**: jupyter-ai, langchain providers (Anthropic, OpenAI, Google, Ollama)

## Building

```bash
git clone https://github.com/ValentinKolb/jupyter.git
cd jupyter
docker build -t jupyter-custom .
```

## License

MIT License - see [LICENSE](LICENSE) file for details.

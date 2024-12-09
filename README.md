# Neovim Configuration

Welcome to my custom Neovim configuration! This setup is tailored for developers who want a fast, modern, and feature-rich coding environment. It includes plugins for autocompletion, syntax highlighting, LSP, debugging, and more.

## Features
- **Lazy.nvim**: Efficient plugin management.
- **LSP Integration**: Language Server Protocol for rich code intelligence.
- **Auto-completion**: Powered by `nvim-cmp` and snippets.
- **Syntax Highlighting**: Treesitter integration for better code visuals.
- **File Explorer**: Intuitive navigation with `nvim-tree`.
- **Git Integration**: Stage, diff, and browse directly from Neovim.
- **Cross-Platform**: Compatible with Windows, macOS, and Linux.

## Installation

### Windows
1. Install Neovim using Scoop:
   ```powershell
   scoop install neovim
   ```
2. Clone this repository:
   ```powershell
   git clone https://github.com/alikolenovic/NeovimConfig.git %LOCALAPPDATA%\nvim
   ```
3. Open Neovim:
   ```powershell
   nvim
   ```

### macOS
1. Install Neovim using Homebrew:
   ```bash
   brew install neovim
   ```
2. Clone this repository:
   ```bash
   git clone https://github.com/alikolenovic/NeovimConfig.git ~/.config/nvim
   ```
3. Open Neovim:
   ```bash
   nvim
   ```

### Linux
1. Install Neovim using your package manager:
   ```bash
   sudo apt install neovim  # Debian/Ubuntu
   sudo pacman -S neovim    # Arch Linux
   ```
2. Clone this repository:
   ```bash
   git clone https://github.com/alikolenovic/NeovimConfig.git ~/.config/nvim
   ```
3. Open Neovim:
   ```bash
   nvim
   ```

## Usage

1. Launch Neovim:
   ```bash
   nvim
   ```
2. Lazy.nvim will automatically install plugins on the first run.
3. To update plugins:
   ```bash
   :Lazy sync
   ```

## Key Features

### Plugins
This configuration includes the following plugins:
- **Lazy.nvim**: Plugin manager.
- **nvim-treesitter**: Enhanced syntax highlighting.
- **nvim-lspconfig**: Language Server Protocol setup.
- **nvim-cmp**: Auto-completion framework.
- **nvim-tree.lua**: File explorer.

### Custom Keybindings
- **Space** is the leader key.
- Quickly toggle file explorer: `<leader>e`.
- Navigate diagnostics: `[d` (previous), `]d` (next).
- Search files: `<leader>ff`.
- Git integration with Fugitive.

## Contributing
Contributions are welcome! To contribute:
1. Fork the repository.
2. Create a feature branch.
3. Submit a pull request.

## Troubleshooting

### Common Issues
- **Error: Missing Dependencies**: Ensure that you have the required tools installed:
  - `git`, `node`, `python3`, and `pip` for various plugin dependencies.
- **Plugins Not Installing**: Run:
  ```bash
  :Lazy sync
  ```

## License
This project is licensed under the MIT License. See the LICENSE file for details.

## Contact
For questions or feedback, feel free to reach out:
- **GitHub**: [alikolenovic](https://github.com/alikolenovic)


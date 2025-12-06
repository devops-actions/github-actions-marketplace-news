---
title: Poke Actions
date: 2025-11-30 21:08:02 +00:00
tags:
  - DanielYuki
  - GitHub Actions
draft: false
repo: https://github.com/DanielYuki/poke-actions
marketplace: https://github.com/marketplace/actions/poke-actions
version: v1.0.0
dependentsNumber: "?"
---


Version updated for **https://github.com/DanielYuki/poke-actions** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/poke-actions) to find the latest changes.

## Release notes

# ⚡ Poke Actions v1.0.0

Bring fun and nostalgia to your GitHub repository! Every time someone closes an issue or merges a pull request, they catch a random Pokémon from Generation 1.

## ✨ What's New

This initial release includes:

- 🌿 **Wild Pokémon Appear** - When issues or pull requests are opened
- 🎉 **Catch Pokémon** - Random Pokémon rewards when issues close or PRs are merged
- 💨 **Pokémon Flee** - When PRs are closed without merging
- 🎲 **All Gen 1 Pokémon** - Fully random selection from Bulbasaur to Mew
- 👌 **Zero Configuration** - Works out of the box
- 🎯 **Self-Contained** - No external APIs required

## 🚀 Quick Start

Create `.github/workflows/poke-actions.yml` in your repository:

```yaml
name: Poke Actions
on:
  issues:
    types: [opened, closed]
  pull_request:
    types: [opened, closed]

jobs:
  pokemon:
    runs-on: ubuntu-latest
    permissions:
      contents: read
      issues: write
      pull-requests: write
    steps:
      - uses: DanielYuki/poke-actions@v1
        with:
          github_token: ${{ secrets.GITHUB_TOKEN }}
```

That's it! 🎊

## 📸 Examples

**Issue closed:**
> 🎉 **Congratulations "username!"**  
> You caught **Pikachu**!

**PR merged:**
> 🎉 **Congratulations "contributor!"**  
> You caught **Charizard**!  
> _Merged by "reviewer"_


## 📜 License

MIT License - see [LICENSE](LICENSE) for details.

**Sprites:** Pokémon game assets © Nintendo / Game Freak / The Pokémon Company. Used for educational and fan purposes under fair use.

---

Made with ❤️ for the Pokémon community

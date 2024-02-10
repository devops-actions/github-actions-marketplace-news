---
title: gerar-jogo-de-cobra-da-grade-de-contribuicao-do-github
date: 2024-02-10 19:21:29 +00:00
tags:
  - Pjxsantos
  - GitHub Actions
draft: false
repo: Pjxsantos/snake
marketplace: https://github.com/marketplace/actions/gerar-jogo-de-cobra-da-grade-de-contribuicao-do-github
version: v4.0
dependentsNumber: "5"
---


Version updated for **Pjxsantos/snake** to version **v4.0**.
- This action is used across all versions by **5** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gerar-jogo-de-cobra-da-grade-de-contribuicao-do-github) to find the latest changes.

## Release notes

**Gera um jogo de cobra a partir de um gráfico de contribuições de usuários do GitHub!**
_Vídeo tutorial => [Youtube vídeo tutorial](https://www.youtube.com/watch?v=eub5_9Nr1IE)_

<picture>
  <source media="(prefers-color-scheme: dark)" srcset="https://raw.githubusercontent.com/pjxsantos/snake/output/github-contribution-grid-snake-dark.svg">
  <source media="(prefers-color-scheme: light)" srcset="https://raw.githubusercontent.com/pjxsantos/snake/output/github-contribution-grid-snake.svg">
  <img alt="github contribution grid snake animation" src="https://raw.githubusercontent.com/pjxsantos/snake/output/github-contribution-grid-snake.svg">
</picture>

Extraia o gráfico de contribuição de um usuário do GitHub. Faça disso um jogo de cobra, gere um caminho de cobra onde as células são comidas de maneira ordenada.

Gere uma imagem GIF ou SVG.

**Vamos au que entereça!** 

**1-** Crie um novo repositório com o mesmo nome de seu usuário GitHub, (Pjxsantos/Pjxsantos)"Public" e "Add README.md"
**Exemplo:**

![Captura de tela de 2024-02-05 13-08-20](https://github.com/Pjxsantos/snake/assets/152025930/f4ab30d0-95c7-4ca3-85c7-1d39cc5906a6)



**2-** Na raiz do projeto, voçê vai ter que criar dois diretórios e um arquivo main.yml! **Exemplo:** ".github/workflows/main.yml" e vai copiar e colar no arquivo "main.yml" o código que vou disponibilizar abaixo, depois **"Commit changues"**!.


![Captura de tela de 2024-02-05 13-11-44](https://github.com/Pjxsantos/snake/assets/152025930/c79c65a5-3128-4e04-bb13-b4767d0c0f7e)



**Código:**
```yaml
name: gerar animação

on:
  # executa automaticamente a cada 24 horas
  schedule:
    - cron: "0 */24 * * *" 
  
  # permite executar manualmente o trabalho a qualquer momento
  workflow_dispatch:
  
  # executa em cada push no branch master
  push:
    branches:
    - master
    
  

jobs:
  generate:
    permissions: 
      contents: write
    runs-on: ubuntu-latest
    timeout-minutes: 5
    
    steps:
      # gera um jogo de cobra a partir de um gráfico de contribuições de um usuário do github (<github_user_name>), gera uma animação SVG em <svg_out_path>
      - name: generate github-contribution-grid-snake.svg
        uses: pjxsantos/snake/svg-only@v4.0
        with:
          github_user_name: ${{ github.repository_owner }}
          outputs: |
            dist/github-contribution-grid-snake.svg
            dist/github-contribution-grid-snake-dark.svg?palette=github-dark
          
          
      # envia o conteúdo de <build_dir> para um branch
      # o conteúdo estará disponível em https://raw.githubusercontent.com/<github_user>/<repository>/<target_branch>/<file> ou como página do github
      - name: push github-contribution-grid-snake.svg to the output branch
        uses: crazy-max/ghaction-github-pages@v4.0.0
        with:
          target_branch: output
          build_dir: dist
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```

Agora Vamos editar o arquivo "README.md"!

**3-** No arquivo "README.md" voçê copia e cola o código que está diponivel aqui em baixo ⬇️ , Onde estar escrito "USER_NAME" você substitui por seu usuário, em seguida o nome do repositório **Exemplo:** "Pjxsantos/Pjxsantos"

**Código:**
```yaml

<picture>
  <source media="(prefers-color-scheme: dark)" srcset="https://raw.githubusercontent.com/USER_NAME/USER_NAME/output/github-contribution-grid-snake-dark.svg">
  <source media="(prefers-color-scheme: light)" srcset="https://raw.githubusercontent.com/USER_NAME/USER_NAME/output/github-contribution-grid-snake.svg">
  <img alt="github contribution grid snake animation" src="https://raw.githubusercontent.com/USER_NAME/USER_NAME/output/github-contribution-grid-snake.svg">
</picture>

```

![Captura de tela de 2024-02-05 13-16-45](https://github.com/Pjxsantos/snake/assets/152025930/7a560a94-6cbc-4239-9260-3ef135233628)


Feito isso mais uma vez  **"Commit changues"**

![Captura de tela de 2024-02-05 13-26-44](https://github.com/Pjxsantos/snake/assets/152025930/aa6ed283-79f5-4049-9640-53e2c6ea95b3)



**4-** Por fim voçê vai em **"Actions"**


![Captura de tela de 2024-02-05 13-20-13](https://github.com/Pjxsantos/snake/assets/152025930/0c55a9ea-f80b-4cd2-b4e8-fd5e7dd5a950)


**5-** Clica em **"generate animation"**


![Captura de tela de 2024-02-05 13-22-06](https://github.com/Pjxsantos/snake/assets/152025930/9fbc5c3b-1fb4-42c1-a8ad-570e6cd52e29)



**6-** Depois "Run workflow" pronto voçê acaba de gerar uma snake comedora de **"Commit changues"**!

![Captura de tela de 2024-02-05 13-24-12](https://github.com/Pjxsantos/snake/assets/152025930/b93f6422-7131-468b-a8d8-e7964207f5bc)



**Prontinho seu game snake esta pronto!** 


_generated with [Paulo Xavier Pjxsantos/snake](https://github.com/Pjxsantos/snake)_



**Full Changelog**: https://github.com/Pjxsantos/snake/commits/v4.0

## What's Changed
* Update README.md by @Pjxsantos in https://github.com/Pjxsantos/snake/pull/2
* Update README.md by @Pjxsantos in https://github.com/Pjxsantos/snake/pull/3
* Update README.md by @Pjxsantos in https://github.com/Pjxsantos/snake/pull/4
* Update LICENSE by @Pjxsantos in https://github.com/Pjxsantos/snake/pull/5
* Update README.md by @Pjxsantos in https://github.com/Pjxsantos/snake/pull/6
* Update README.md by @Pjxsantos in https://github.com/Pjxsantos/snake/pull/8

## New Contributors
* @Pjxsantos made their first contribution in https://github.com/Pjxsantos/snake/pull/2

**Full Changelog**: https://github.com/Pjxsantos/snake/compare/v3.0...v4.0

## What's Changed
* Update README.md by @Pjxsantos in https://github.com/Pjxsantos/snake/pull/2
* Update README.md by @Pjxsantos in https://github.com/Pjxsantos/snake/pull/3
* Update README.md by @Pjxsantos in https://github.com/Pjxsantos/snake/pull/4
* Update LICENSE by @Pjxsantos in https://github.com/Pjxsantos/snake/pull/5
* Update README.md by @Pjxsantos in https://github.com/Pjxsantos/snake/pull/6
* Update README.md by @Pjxsantos in https://github.com/Pjxsantos/snake/pull/8

## New Contributors
* @Pjxsantos made their first contribution in https://github.com/Pjxsantos/snake/pull/2

**Full Changelog**: https://github.com/Pjxsantos/snake/compare/v3.0...v4.0

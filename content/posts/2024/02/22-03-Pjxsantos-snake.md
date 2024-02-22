---
title: gerar-jogo-de-cobra-da-grade-de-contribuição-do-github-pjxsantos-snakev5.0.2
date: 2024-02-22 03:19:25 +00:00
tags:
  - Pjxsantos
  - GitHub Actions
draft: false
repo: Pjxsantos/snake
marketplace: https://github.com/marketplace/actions/gerar-jogo-de-cobra-da-grade-de-contribuicao-do-github-pjxsantos-snake-v5-0-2
version: v5.0.2
dependentsNumber: "5"
---


Version updated for **Pjxsantos/snake** to version **v5.0.2**.
- This action is used across all versions by **5** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gerar-jogo-de-cobra-da-grade-de-contribuicao-do-github-pjxsantos-snake-v5-0-2) to find the latest changes.

## Release notes

**Gera um jogo de cobra a partir de um gráfico de contribuições de usuários do GitHub!** 
_Linkedin: [Paulo Jorge](https://www.linkedin.com/in/paulo-jorge-xavier-dos-santos-43282b2b5/)_

<picture> 

  <source media="(prefers-color-scheme: dark)" srcset="https://raw.githubusercontent.com/pjxsantos/snake/output/github-contribution-grid-snake-dark.svg">

  <source media="(prefers-color-scheme: light)" srcset="https://raw.githubusercontent.com/pjxsantos/snake/output/github-contribution-grid-snake.svg">

  <img alt="github contribution grid snake animation" src="https://raw.githubusercontent.com/pjxsantos/snake/output/github-contribution-grid-snake.svg">

</picture> 

Extraia o gráfico de contribuição de um usuário do GitHub, Faça disso um jogo de cobra, gere um caminho de cobra onde as células são comidas de maneira ordenada. 

Gere uma imagem GIF ou SVG! 
 
**Vamos ao que interessa!**   
 
**1.** Crie um novo repositório com o mesmo nome de seu usuário GitHub, (Pjxsantos/Pjxsantos)"Public" e "Add README.md"!
   
**Exemplo:**   
   
**2.** Na raiz do projeto, voçê vai ter que criar dois diretórios e um arquivo main.yml! **Exemplo:** ".github/workflows/main.yml" e vai copiar e colar no arquivo "main.yml" o código que vou disponibilizar abaixo, depois **"Commit changes"**!.   

**Copiar Código:**  
   
```
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
      # gera um jogo de cobra a partir de um gráfico de contribuições de um usuário do github  (<github_user_name>), gera uma animação SVG em <svg_out_path> 
      - name: generate github-contribution-grid-snake.svg 
        uses: pjxsantos/snake/gerar-cobrinha-svg@v5.0.1 
        with: 
          github_user_name: ${{ github.repository_owner }} 
          outputs: | 
            dist/github-contribution-grid-snake.svg 
            dist/github-contribution-grid-snake-dark.svg?palette=github-dark 
          
          
      # envia o conteúdo de <build_dir> para um branch 
      # o conteúdo estará disponível em https://raw.githubusercontent.com/<github_user>/ <repository>/<target_branch>/<file> ou como página do github 
      - name: push github-contribution-grid-snake.svg to the output branch 
        uses: crazy-max/ghaction-github-pages@v4.0.0 
        with: 
          target_branch: output 
          build_dir: dist 
        env: 
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }} 
```  

Agora Vamos editar o arquivo "README.md"! 

**3.** No arquivo "README.md" voçê copia e cola o código que está diponivel aqui em baixo ⬇️ , Onde estar escrito "USER_NAME" você substitui por seu usuário, em seguida o nome do repositório.

**Exemplo:** "Pjxsantos/Pjxsantos"

**Código:** 

``` 
<picture> 
  <source media="(prefers-color-scheme: dark)" srcset="https://raw.githubusercontent.com/USER_NAME/USER_NAME/output/github-contribution-grid-snake-dark.svg">

  <source media="(prefers-color-scheme: light)" srcset="https://raw.githubusercontent.com/USER_NAME/USER_NAME/output/github-contribution-grid-snake.svg">

  <img alt="github contribution grid snake animation" src="https://raw.githubusercontent.com/USER_NAME/USER_NAME/output/github-contribution-grid-snake.svg">

</picture> 

```  
Feito isso mais uma vez  **"Commit changes"**! 

**4.** Por fim voçê vai em **"Actions"**! 
 
**5.** Clica em **"gerar animação"**! 

**6.** Depois "Run workflow" pronto voçê acaba de gerar uma snake comedora de **"Commit changes"**! 
 
**Prontinho seu game snake esta pronto.**  

_Generated with [Pjxsantos/snake](https://github.com/Pjxsantos/snake)_

## What's Changed
* Update LICENSE by @Pjxsantos in https://github.com/Pjxsantos/snake/pull/18


**Full Changelog**: https://github.com/Pjxsantos/snake/compare/v5.0.1...v5.0.2

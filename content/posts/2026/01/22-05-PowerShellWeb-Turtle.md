---
title: TurtlePowerShell
date: 2026-01-22 05:56:50 +00:00
tags:
  - PowerShellWeb
  - GitHub Actions
draft: false
repo: https://github.com/PowerShellWeb/Turtle
marketplace: https://github.com/marketplace/actions/turtlepowershell
version: v0.2.2
dependentsNumber: "?"
---


Version updated for **https://github.com/PowerShellWeb/Turtle** to version **v0.2.2**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/turtlepowershell) to find the latest changes.

## Action Summary

The Turtle GitHub Action automates the generation of SVG graphics using Turtle Graphics principles, allowing users to create and manipulate shapes programmatically within GitHub workflows using PowerShell scripts. It simplifies tasks by running `.turtle.ps1` files in a repository and committing any resulting changes, making it ideal for automating visual outputs in CI/CD pipelines. Key capabilities include creating and controlling turtle objects, executing movement and rotation commands, and saving generated graphics as SVG files.

## Release notes

## Turtle 0.2.2:

* New Shapes:  
  * `Turtle.ArcFlower` ( #358 )
  * `Turtle.Arcygon` ( #359 )
  * `Turtle.ClosePath` ( #277 )  
  * `Turtle.RightTriangle` ( #367 )
  * `Turtle.Rhombus` ( #372 )
  * `Turtle.StepCurve` ( #329 )
  * `Turtle.Triflower` ( #371 )
  * `Turtle.Lucky` draws a random shape (#366)  
* Font Settings:
  * `Turtle.FontWeight` ( Fixes #354, Fixes #381 )
  * `Turtle.FontVariant` ( Fixes #354, Fixes #380 )
  * `Turtle.FontStyle` ( Fixes #354, Fixes #379 )
  * `Turtle.FontSize` ( Fixes #354, Fixes #378 )
  * `Turtle.FontFamily` ( Fixes #354, Fixes #377 )
* Improvements
  * Turtle.PathAnimation outputs XML (#374)
  * Get-Turtle speed boost (#368)
  * Move-Turtle uses the script (#351)
  * Randomizing most default parameters (#363)
  * Turtle defaults IDs to timestamp ( #362 )
  * Fill and Stroke improvement ( Fixes #360, Fixes #361, Fixes #369 )    
    * Adding random support
    * Improving gradient support
    * Overwriting class if stroke is specified
* Fixes
  * Turtle.History compatibility fix ( #373 )
    * Turtle works on PowerShell 5.1!
  * Moore Curve Fixes ( #370 )

---

Additional history available in the [CHANGELOG](https://github.com/PowerShellWeb/Turtle/blob/main/CHANGELOG.md)

Please:

* [Like](https://github.com/PowerShell/Turtle)
* [Share](https://psturtle.com/)
* Subscribe
  * [psturtle.com](https://bsky.app/profile/psturtle.com)
  * [mrpowershell.com](https://bsky.app/profile/mrpowershell.com)
  * [StartAutomating](https://github.com/StartAutomating)
  * [PowerShellWeb](https://github.com/PowerShellWeb)
* Sponsor [StartAutomating](https://github.com/sponsors/StartAutomating)

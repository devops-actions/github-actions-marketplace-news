---
title: KiBot GitHub action
date: 2024-04-23 19:28:56 +00:00
tags:
  - INTI-CMNB
  - GitHub Actions
draft: false
repo: INTI-CMNB/KiBot
marketplace: https://github.com/marketplace/actions/kibot-github-action
version: v1.7.0
dependentsNumber: "0"
---


Version updated for **INTI-CMNB/KiBot** to version **v1.7.0**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/kibot-github-action) to find the latest changes.

## Release notes

### Changed

- Filters: When we find a component in the PCB, that is not in the schematic,
  and has a malformed reference, now we inform a warning, discard the
  component and continue. (#604)
- PcbDraw: Now handles panelized boards much faster. Previous code was really
  slow for panels and the time increased exponentially.

### Added

- New preflights:
  - erc: a replacement for run_erc when using KiCad 8.
    It can generate ERC reports not only in plain text but also HTML, JSON and
    CSV.
  - drc: a replacement for run_drc when using KiCad 8.
    Also supporting multiple formats and with a modern separation between
    unconnected and warnings.
  - update_footprint: updates one or more footprints from the libs.
    Useful for external QR codes, logos, etc. (#492 #483)
  - draw_stackup: creates a nice drawing for the stackup (See #368)
  - update_pcb_characteristics: updates the text you get from *Place* ->
    *Add Board Characteristics*, so you don't need to remove it and place
    again. (See #384 #368)
  - update_stackup: updates the text you get from *Place* ->
    *Add Stackup Table*, so you don't need to remove it and place
    again. (See #384 #368)
- Global variables:
  - str_yes/str_no: to finetune the *update_pcb_characteristics* preflight.
- Internal templates:
  - ExportProject: creates a ZIP file containing a self-contained version of
    the project. All footprint, symbols and 3D models are included.
- Filters:
  - Now the *var_rename* and *var_rename_kicost* filters can be used to change
    footprints using variants (See #574)
- Quick Start: D/ERC are also included for KiCad 8 (with dont_stop: true)
- Navigate Results: Includes the new D/ERC
- SCH Print:
  - Option to specify a custom page layout (WKS)
  - Workaround for people using backslashes (i.e. Windows+WSL) (See #607)
- PCB Print:
  - Support for (undocumented) KiCad 8.0 worksheets (20231118) (See #607)
  - Control over the LAYER KiCad variable used in worksheets (layer_var ops)
- Internal BoM:
  - Colored rows for HTML and XLSX (See #344)
- Render 3D:
  - Added options to control Eco1/Eco2/Drawings individually on KiCad 8 (#614)

### Fixed

- Netlist generation problems with components on the PCB but not in schematic.
  I.e. logos reaching iBoM output (#598)
- 3D/2D renderers: ranges regex to be more strict. Don't take things like
  "r1-10"
- Sch errors are now caught during output runs. (#604)
- Compress:
  - Could make Python ZIP lib crash when adding a dir to the zip root.
  - So it also removes subdirs created by an output when using move.
- Copy Files:
  - Problems when no target dir and no WKS.
  - Problems when finding the targets (Makefile, copy files, etc.) before
    generating the outputs (or when moved).
- BoM:
  - Expansion of variables in fields could fail if the KiCad config wasn't
    initialized


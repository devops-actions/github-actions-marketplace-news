---
title: KiBot GitHub action
date: 2024-09-17 16:46:24 +00:00
tags:
  - INTI-CMNB
  - GitHub Actions
draft: false
repo: INTI-CMNB/KiBot
marketplace: https://github.com/marketplace/actions/kibot-github-action
version: v1.8.0
dependentsNumber: "0"
---


Version updated for **INTI-CMNB/KiBot** to version **v1.8.0**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/kibot-github-action) to find the latest changes.

## Release notes

### Added

- Experimental Altium PCB conversion (#625)
- Most places where a field is expected now support `_field_*` to fetch the
  globally defined value.
- Preflights:
  - check_fields: used to ensure conditions on desired fields (#643)
  - e/drc: option to force english messages (needed for KiCad 8.0.4)
- Filters:
  - `separate_pins`: used to create testpoint reports (#638)
  - `_null` can be used to skip the filters processing
- Global options:
  - `use_pcb_fields`: allows using fields defined in the PCB (and not
    only in the schematic), enabled by default (#648 and #650)
  - `field_current`: to specify the field used for current ratings
- Internal templates:
  - Testpoints_by_attr, Testpoints_by_attr_CSV, Testpoints_by_attr_HTML,
    Testpoints_by_value, Testpoints_by_value_CSV and Testpoints_by_value_HTML:
    Used to generate testpoint reports (#638)
- Command line:
  - Option to also list sub-PCBs found in variants
- BoardView: support for BVR format
- BoM: logo file name can contain env vars and/or ~ (#620)
- Datasheet: option to classify the datasheets by reference.
- KiCost: option to specify a configuration file (#615)
- Report:
  - Solder paste usage stats (#616)
  - Support for variants (See #616)
  - Testpoints report (See #638)
- xDRC: configurable category (#647)
- Schematic:
  - Support for text boxes inside symbols (#621)
- Worksheet:
  - Support for KiCad 8 bitmaps (#623)
- Position:
  - Support for panels repeating the same component (See #656)

### Fixed:
- iBoM: *highlight_pin1* option didn't allow the use of the new choices.
- PCB2Blender_Tools: transform filters might make it fail. (#618)
- BoM:
  - No color reference when using row colors but not column or kicost colors.
    (#619)
  - "0 pico" for "0"
  - Use of `lcsc_link` as boolean
  - User fields for components that are only in the PCB not filled (#656)
- Worksheet: Size of PNGs that specify its PPI resolution.
- Filters:
  - Problems with filters that change fields for components that are
    only in the PCB. (#628)
  - Use of '_none' filter in lists of filters and _kf()
- Variants:
  - Problems when remove_solder_paste_for_dnp and remove_adhesive_for_dnp are
    both disabled (remove_solder_mask_for_dnp wrongly defined) (#632)
  - Problems when using `set_text_variables_before_output` (#649)
- Draw Stackup:
  - Dimension always drawn on User.Drawings layer (#629)
  - Problems when the PCB wasn't loaded by another preflight
- Update XML: `check_pcb_parity` not usable for KiCad 8, must use the `drc`
  preflight (#633)
- PCB Print: %ln and %ll substitution when using `repeat_for_layer` option
- Render_3D: bottom side components that doesn't rotate from its center got
  displaced highlight (#659)
- QR Lib output and various preflights: might remove DRC exclusions. This is
  a KiCad bug that we must workaround (#653)
- 3D outputs: temporal .kicad_dru file not removed (#655)
- Generated PCB files: problems with some big structures, like zone fills,
  that could generate huge lines in the generated PCB, not supported by KiCad.
  (#660)

### Changed:
- KiCad 8.0.2: The behavior with hidden text changed in KiCad 8.0.2, it is
  computed even for operations where it isn't really visible, like plotting
  a layer where we don't have the hidden text. So currently KiBot is
  experimentally disabling the "hidden text layer".
  This is a bug in KiCad (https://gitlab.com/kicad/code/kicad/-/issues/17958)
- Render 3D: Modern versions of Image Magick no longer needs two trim passes
  for auto-crop, so now we default to one and an option enables two. (See #644)
- Preflights: The definition of preflight plug-ins changed. They are slightly
  different now. Currently they are Optionable and share more in common with
  outputs. If you need assistance to migrate a preflight just open a GitHub
  issue.
- Outputs: Now all options must declare its default.
- Global `invalidate_pcb_text_cache`: now it changes the PCB on disk, not just
  on memory. This is needed for external tools like KiKit's panelize.
- In many cases now we allow empty lists and use some sort of default.
  A warning is issued, but we continue.
  - Layers: now the default for missing layers is all layers.
  - Copy files: Now we don't stop when nothing to copy is specified
  - Layers: now the default for missing layers is all layers.
  - KiKit Present: Missing description is no longer fatal
  - Any PCB Print/PCB Print: Missing pages/layers is no longer fatal
  - Populate: Missing input file is no longer fatal
  - QR Lib: Missing QR definition is no longer fatal (%p %r used)
  - Blender Options outputs: Make a render when no outputs are specified
  - PCB Print: repeat_layers defaults to inners
  - Spec to Field: some simple defaults for the specs (voltage, current, power
    and tolerance)


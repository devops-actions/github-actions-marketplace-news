---
title: NestJS Doctor
date: 2026-07-29 22:54:23 +00:00
tags:
  - RoloBits
  - GitHub Actions
draft: false
repo: https://github.com/RoloBits/nestjs-doctor
marketplace: https://github.com/marketplace/actions/nestjs-doctor
version: nestjs-doctor0.7.7
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  The GitHub Action "nestjs-doctor" automates the diagnosis and fixing of NestJS code issues in a project using 50 built-in rules across various categories. It provides actionable diagnostics, outputs a score, generates a report with interactive modules and ER diagrams, and supports monorepos. The action can review pull requests and reports only what was changed, with configurable severity thresholds for failure.
---


Version updated for **https://github.com/RoloBits/nestjs-doctor** to version **nestjs-doctor@0.7.7**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/nestjs-doctor) to find the latest changes.

## Action Summary

The GitHub Action "nestjs-doctor" automates the diagnosis and fixing of NestJS code issues in a project using 50 built-in rules across various categories. It provides actionable diagnostics, outputs a score, generates a report with interactive modules and ER diagrams, and supports monorepos. The action can review pull requests and reports only what was changed, with configurable severity thresholds for failure.

## What's Changed

### Patch Changes

- dad172d: Two-finger scrolling a diagram in the HTML report now pans instead of zooming.

  Every canvas in the report treated a wheel event as zoom, and a trackpad sends
  one for a plain two-finger scroll, so trying to move around the diagram zoomed it
  instead. A pinch arrives as a wheel event with `ctrlKey` set, which is what now
  zooms. This matches how the rest of the diagram already behaves, since dragging
  the background has always panned.

  Applies to all three diagrams: the modules graph, the endpoints graph and the
  relational schema. On a mouse, the wheel now scrolls the diagram and ctrl or
  command with the wheel zooms.

- dad172d: Three additions to the schema diagram: deselecting by clicking away, a zoom bar,
  and a control to show every column.

  Clicking a table selected it and dimmed the rest, but the only way back was to
  click the same table again. Clicking empty canvas now clears the selection.
  Dragging the background still pans without losing it.

  The top right corner gains a zoom bar with a slider, plus and minus buttons, and
  a readout that fits the diagram to the view when clicked, so zooming no longer
  depends on a trackpad gesture.

  Tables were capped at seven columns with a "+N more" line and no way to see the
  rest. A new toolbar control shows every column, and the diagram is laid out again
  afterwards so the taller boxes do not overlap.

- dad172d: The HTML report's schema diagram can now show every table at once.

  The schema tab decided its mode at render time with `entities.length > 7` and
  never revisited it, so any schema past that size could only ever show one table
  and its direct neighbours. There was no control to leave that view, and the
  all-tables layout already existed but was unreachable. On a real 34-table schema
  you landed on an empty canvas and stayed there.

  There is now a toggle in the diagram toolbar, and a **Show all tables** button on
  the empty state itself, which is where a large schema lands.

  Tables are laid out per connected component and the components are packed
  together, because one dagre pass puts every unrelated table in a single rank. The
  same 34-table schema is 18 components with 12 tables that have no relation at
  all, so that rank was most of the diagram.

  The overview opens with columns showing, at a zoom where they are readable,
  anchored at the top left so you pan through the diagram rather than starting in
  the middle of it. Minimising the tables switches back to the fit-everything
  bird's eye view, which can now zoom out further than the old hard floor allowed.

  Node labels are now measured once when the layout is built instead of on every
  frame, which makes panning cheaper in both modes.

- dad172d: Fixes found reviewing the schema diagram work.

  A schema of five tables or fewer laid itself out against the wrong box heights.
  The initial layout ran before the boxes were sized, so dagre spacing, the edge
  ports and the fit zoom were all computed for 52px rows and the tables then drew
  up to twice that. It sizes them first now.

  The zoom slider and the pinch gesture used different floors, so dragging the
  slider to 5% and then pinching once snapped the view back in to 20%. Both use one
  floor, and the slider covers the full range the camera allows.

  Visiting the all-tables view latched columns on for good, so going back to a
  focused table showed full column lists however many neighbours it had. Whether
  columns show is one rule again, and an explicit choice still wins.

  A foreign key column named `user_id` was marked as merely indexed, because the
  match ignored punctuation. Names are compared without it, so a renamed or
  snake_case key column reads as a foreign key.

  The two toggles keep their accessible name in step with what they do and report
  their pressed state, and the tooltips appear on keyboard focus, not only on hover.

- dad172d: The schema tab's table list can be hidden, and it follows the diagram by default.

  A button in the list header hides it so the diagram gets the whole width, and a
  button on the diagram brings it back. The view stays put across the change rather
  than jumping, because the camera shifts by half the width it gained or lost.

  A **Sync with diagram** checkbox, on by default, ties the two together. Picking a
  table in the diagram opens that table in the list, opens its columns, and scrolls
  to it. Clicking empty canvas clears the selection and closes everything. Unchecking
  it leaves the list alone, so the two can be driven separately.

  Also fixes three things in the list: the tooltips were cut off, because the list
  scrolls and so clips anything drawn outside it; a row's trailing detail such as
  `= uuid()` ran under the right edge, since the name never gave up space; and the
  new checkbox sat flush against the header.

- dad172d: The schema sidebar and the diagram now mark a column the same way.

  The diagram gained key, link and index glyphs on columns, but the sidebar tree
  still only told a primary key apart from everything else, so the same column
  could be plain in the list and marked in the diagram. `Journey.name` is indexed,
  and only one of the two views said so.

  The sidebar now classifies a column exactly as the diagram does, and its indexes
  group counts a plainly indexed column rather than only a unique one, which is why
  that group was often missing. An indexed column also picks up an `idx` tag beside
  `null`, `gen` and `uniq`.

- dad172d: A synced table now sits at the top of the list, and the list's glyphs explain
  themselves.

  Revealing a table scrolled it only far enough to be visible, so it could land
  anywhere on screen with unrelated tables above it. It is now put directly under
  the sticky header, so the table you picked reads first and its columns follow.

  The key, link and index glyphs in the list say what they mean on hover, on the
  column rows and on the keys, foreign keys and indexes entries.

- dad172d: The schema diagram's zoom bar joins the other controls on one row, every control
  explains itself on hover, and columns are marked with what they are.

  The zoom bar sat on its own line below the toolbar. It is now part of the same
  row, so the diagram controls read as one group.

  Each control had a bare label like "Expand tables", which says what it is called
  but not what it does. They now carry a name and a short line of explanation,
  shown in a tooltip styled like the rest of the report rather than the browser's
  own.

  A table's columns were an undifferentiated list. A primary key, a foreign key and
  an indexed or unique column now each carry their own glyph, matching the icons
  already used in the sidebar tree. Foreign keys are matched from the entity's
  relations, by the property name or that name with an Id suffix.

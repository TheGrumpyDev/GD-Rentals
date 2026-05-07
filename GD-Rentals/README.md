# GD-Rentals

GD-Rentals is a modern rental resource for FiveM with auto-bridge support for UI, target, and framework layers.

**INSTALLATION GUIDE**

1. Drop the `gd-rentals` folder into your `[standalone]` folder (or any ensured folder you use)
2. Ensure dependencies and then ensure `gd-rentals`

**FEATURES**

- Built for a clean spawn-area rental hub
- Modern `ox_target` interactions and `ox_lib` UI flow
- Config-driven bike list with rental cost and return reimbursement
- Shared display bike selection and synchronized returns
- Streamlined config structure for fast edits

## Dependencies 

(Keep Config on AUTO to Detect Everything)

- One UI resource (or use basic fallback mode):
  - ox_lib - https://github.com/overextended/ox_lib
  - qb-menu - https://github.com/qbcore-framework/qb-menu
- One target resource:
  - ox_target - https://github.com/overextended/ox_target
  - qb-target - https://github.com/qbcore-framework/qb-target

## Framework Support

- Auto-detects: `qbx_core`, `qb-core`, `es_extended`, or falls back to `standalone`
- Set `Config.Framework` to force a mode: `auto`, `qbx`, `qb`, `esx`, `standalone`
- Resource-name candidates are configurable in `Config.FrameworkResources`
- Money/key integrations are configurable in `Config.Integrations`
- UI bridge setting: `Config.UISystem = 'auto' | 'ox' | 'qb' | 'basic'`
- Target bridge setting: `Config.TargetSystem = 'auto' | 'ox' | 'qb'`

## Notes

- Current default location is set to your active spawn-adjacent rental point in `config.lua`.

# ExtremeUI ⚡
> A Zig-native GUI framework powered by SDF rendering and SPIR-V shaders

[![License: LGPL v3](https://img.shields.io/badge/License-LGPL_v3-blue.svg)](https://www.gnu.org/licenses/lgpl-3.0)
[![Zig](https://img.shields.io/badge/Zig-0.x-orange.svg)](https://ziglang.org)
[![Status](https://img.shields.io/badge/Status-WIP-yellow.svg)]()

---

## What is ExtremeUI?

ExtremeUI is a low-level, high-performance GUI framework written in [Zig](https://ziglang.org), built around **Signed Distance Fields (SDF)** for shape rendering and **SPIR-V** as its core shader target.

Instead of relying on traditional image-based UI or heavyweight widget toolkits, ExtremeUI lets you compose interfaces using mathematical SDF functions — giving you resolution-independent, GPU-accelerated UI that works across Desktop, Embedded, and beyond.

Think of it as writing UI the way you write shaders — but with the simplicity of Zig.

---

## Vision

```zig
const xui = @import("extreme.zig");

// Draw a circle at center, radius 50, color red
xui.Shapes.circle(.{ .x = 0.5, .y = 0.5 }, 50, xui.Colors.rgba(255, 0, 0, 255));
```

Clean. Composable. Compiled straight to SPIR-V.

---

## Project Structure

```
ExtremeUI/
│
├── XUI/                  # User-facing API
│   ├── Shapes/           # SDF shape functions (circle, rect, ...)
│   ├── Colors/           # RGBA color utilities
│   └── Costumes/         # Size, rotation, position transforms
│
└── Core/
    └── Shad-gines/       # Zig → SPIR-V compiler pipeline
```

### Roadmap (Post-MVP)

| Module | Description |
|---|---|
| `XUI/Objects` | Prebuilt UI components |
| `XUI/Events` | Mouse, keyboard, touch input |
| `XUI/Keyfarmers` | Keyframe animation system |
| `XUI/Medias` | Images, video rendering |
| `XUI/Fonts` | Font rendering (MSDF) |
| `Core/Installer` | Comptime auto GPU/screen detection |
| `Core/Shad-gines` | Multi-backend: SPIR-V, WGSL, MSL, GLSL |
| `Interface` | Flexible layout system |

---

## Current Status: MVP in Progress 🚧

**v0.0.1 Goal:**
- [ ] Open a fullscreen window from Zig
- [ ] Pass a SPIR-V shader to the GPU
- [ ] Render a basic SDF shape on screen
- [ ] Wrap it all inside `Extreme.zig`

---

## Why ExtremeUI?

- 🦎 **Pure Zig** — no C dependencies, no hidden runtime
- 📐 **SDF-first** — resolution-independent shapes, no bitmaps
- ⚡ **SPIR-V core** — runs close to the metal
- 🎯 **Grows with Zig** — built alongside the language as it matures

---

## License

Licensed under the **GNU Lesser General Public License v3.0**.
You can build closed-source applications with ExtremeUI.
Any modifications to ExtremeUI itself must remain open source.

See [LICENSE](./LICENSE) for details.

---

> *"Started small. Thinks big."*
> 

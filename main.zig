const std = @import("std");
const builtin = @import("builtin");

// ─── ExtremeUI Core Entry Point ───────────────────────────────────────────────
// This is the main engine driver.
// It initializes the window, starts the render loop,
// and delegates shader compilation to Core/Shad-gines.
// ─────────────────────────────────────────────────────────────────────────────

pub fn main() !void {
    std.debug.print("ExtremeUI v0.0.1 starting...\n", .{});
    std.debug.print("Platform: {s}\n", .{@tagName(builtin.os.tag)});

    // ─── Step 1: Initialize Window ────────────────────────────────
    // TODO: open a fullscreen window via platform layer
    // Will call Core/Shad-gines after window is ready

    // ─── Step 2: Load SPIR-V Shader ───────────────────────────────
    // TODO: load compiled SPIR-V from Core/Shad-gines/Shad-SPIR-V.zig

    // ─── Step 3: Start Render Loop ────────────────────────────────
    // TODO: call XUI/Shapes to draw SDF shapes each frame

    std.debug.print("ExtremeUI initialized successfully.\n", .{});
}

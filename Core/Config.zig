const std = @import("std");

pub var screen_width:  f32 = 0.0;
pub var screen_height: f32 = 0.0;
pub var unit_x:        f32 = 0.0;
pub var unit_y:        f32 = 0.0;
pub const WindowSettings = struct {
    width:      u32,
    height:     u32,
    title:      []const u8 = "ExtremeUI App",
    fullscreen: bool = false,
};

pub fn init(settings: WindowSettings) void {
    screen_width  = @floatFromInt(settings.width);
    screen_height = @floatFromInt(settings.height);
    updateUnits();

    std.debug.print("ExtremeUI Config initialized\n", .{});
    std.debug.print("  Window : {}x{} px\n", .{ settings.width, settings.height });
    std.debug.print("  Title  : {s}\n",      .{ settings.title });
    std.debug.print("  unit_x : {d:.4} px/unit\n", .{ unit_x });
    std.debug.print("  unit_y : {d:.4} px/unit\n", .{ unit_y });
}

pub fn resize(new_width: u32, new_height: u32) void {
    screen_width  = @floatFromInt(new_width);
    screen_height = @floatFromInt(new_height);
    updateUnits();

    std.debug.print("ExtremeUI resized: {}x{} px | unit_x={d:.4} unit_y={d:.4}\n", .{
        new_width, new_height, unit_x, unit_y,
    });
}

pub fn toPixelX(unit: f32) f32 {
    return unit * unit_x;
}

pub fn toPixelY(unit: f32) f32 {
    return unit * unit_y;
}

pub fn toUnitX(pixel: f32) f32 {
    return pixel / unit_x;
}


pub fn toUnitY(pixel: f32) f32 {
    return pixel / unit_y;
}


fn updateUnits() void {
    unit_x = screen_width  / 100.0;
    unit_y = screen_height / 100.0;
}

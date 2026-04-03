const Config = @import("Config.zig");

pub const WindowSettings = struct {
    width:      u32,
    height:     u32,
    title:      []const u8 = "ExtremeUI App",
    fullscreen: bool = false,
};

pub fn window(settings: WindowSettings) void {
    Config.init(.{
        .width      = settings.width,
        .height     = settings.height,
        .title      = settings.title,
        .fullscreen = settings.fullscreen,
    });
}

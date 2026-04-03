pub const RGBA = struct {
    r: f32,
    g: f32,
    b: f32,
    a: f32,

    pub fn from(r: f32, g: f32, b: f32, a: f32) RGBA {
        return RGBA{ .r = r, .g = g, .b = b, .a = a };
    }

    pub fn fromU8(r: u8, g: u8, b: u8, a: u8) RGBA {
        return RGBA{
            .r = @as(f32, @floatFromInt(r)) / 255.0,
            .g = @as(f32, @floatFromInt(g)) / 255.0,
            .b = @as(f32, @floatFromInt(b)) / 255.0,
            .a = @as(f32, @floatFromInt(a)) / 255.0,
        };
    }
};

pub const red     = RGBA.from(1.0, 0.0, 0.0, 1.0);
pub const green   = RGBA.from(0.0, 1.0, 0.0, 1.0);
pub const blue    = RGBA.from(0.0, 0.0, 1.0, 1.0);
pub const white   = RGBA.from(1.0, 1.0, 1.0, 1.0);
pub const black   = RGBA.from(0.0, 0.0, 0.0, 1.0);
pub const transparent = RGBA.from(0.0, 0.0, 0.0, 0.0);

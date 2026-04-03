const std = @import("std");

pub const Circle = struct {
    radius: f32,

    pub fn sdf(px: f32, py: f32, radius: f32) f32 {
        const length = @sqrt(px * px + py * py);
        return length - radius;
    }
};

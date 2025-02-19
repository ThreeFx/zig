const std = @import("std");

pub fn panic(message: []const u8, stack_trace: ?*std.builtin.StackTrace) noreturn {
    _ = message;
    _ = stack_trace;
    std.process.exit(0);
}
pub fn main() !void {
    var a: @Vector(4, u8) = [_]u8{ 1, 2, 200, 4 };
    var b: @Vector(4, u8) = [_]u8{ 5, 6, 2, 8 };
    const x = mul(b, a);
    _ = x;
    return error.TestFailed;
}
fn mul(a: @Vector(4, u8), b: @Vector(4, u8)) @Vector(4, u8) {
    return a * b;
}
// run
// backend=stage1
// target=native
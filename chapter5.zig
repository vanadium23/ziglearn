const expect = @import("std").testing.expect;

fn add(a: i32, b: i32) i64 {
    return a + b;
}

test "@Frame" {
    var frame: @Frame(add) = async add(1, 2);
    try expect(await frame == 3);
}

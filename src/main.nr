fn u16_to_u8(num: u16) -> [u8; 2] {
    let mut out: [u8; 2] = [0; 2];
    for i in 0..2 {
        out[i] = (num >> (8 - (i * 8)) as u16 & 0xff) as u8;
    }

    out
}

#[test]
fn test_u16() {
    let small = u16_to_u8(10);
    assert(small[0] == 0);
    assert(small[1] == 10);

    let two_byte = u16_to_u8(256);
    assert(two_byte[0] == 0x01);
    assert(two_byte[1] == 0x00);

    let ceil = u16_to_u8(65535);
    assert(ceil[0] == 0xff);
    assert(ceil[1] == 0xff);
}

fn u24_to_u8(num: u24) -> [u8; 3] {
    let mut out: [u8; 3] = [0; 3];
    for i in 0..3 {
        out[i] = (num >> (16 - (i * 8)) as u24 & 0xff) as u8;
    }

    out
}

#[test]
fn test_u24() {
    let small = u24_to_u8(10);
    assert(small[0] == 0);
    assert(small[1] == 0);
    assert(small[2] == 10);

    let two_byte = u24_to_u8(256);
    assert(two_byte[0] == 0x00);
    assert(two_byte[1] == 0x01);
    assert(two_byte[2] == 0x00);

    let ceil = u24_to_u8(16777215);
    assert(ceil[0] == 0xff);
    assert(ceil[1] == 0xff);
    assert(ceil[2] == 0xff);
}

fn u32_to_u8(num: u32) -> [u8; 4] {
    let mut out: [u8; 4] = [0; 4];
    for i in 0..4 {
        out[i] = (num >> (24 - (i * 8)) as u32 & 0xff) as u8;
    }

    out
}

#[test]
fn test_u32() {
    let small = u32_to_u8(10);
    assert(small[0] == 0);
    assert(small[1] == 0);
    assert(small[2] == 0);
    assert(small[3] == 10);

    let two_byte = u32_to_u8(256);
    assert(two_byte[0] == 0x00);
    assert(two_byte[1] == 0x00);
    assert(two_byte[2] == 0x01);
    assert(two_byte[3] == 0x00);

    let ceil = u32_to_u8(4294967295);
    assert(ceil[0] == 0xff);
    assert(ceil[1] == 0xff);
    assert(ceil[2] == 0xff);
    assert(ceil[3] == 0xff);
}

fn u40_to_u8(num: u40) -> [u8; 5] {
    let mut out: [u8; 5] = [0; 5];
    for i in 0..5 {
        out[i] = (num >> (32 - (i * 8)) as u40 & 0xff) as u8;
    }

    out
}

#[test]
fn test_u40() {
    let small = u40_to_u8(10);
    assert(small[0] == 0);
    assert(small[1] == 0);
    assert(small[2] == 0);
    assert(small[3] == 0);
    assert(small[4] == 10);

    let two_byte = u40_to_u8(256);
    assert(two_byte[0] == 0x00);
    assert(two_byte[1] == 0x00);
    assert(two_byte[2] == 0x00);
    assert(two_byte[3] == 0x01);
    assert(two_byte[4] == 0x00);

    let ceil = u40_to_u8(1099511627775);
    assert(ceil[0] == 0xff);
    assert(ceil[1] == 0xff);
    assert(ceil[2] == 0xff);
    assert(ceil[3] == 0xff);
    assert(ceil[4] == 0xff);
}

fn u48_to_u8(num: u48) -> [u8; 6] {
    let mut out: [u8; 6] = [0; 6];
    for i in 0..6 {
        out[i] = (num >> (40 - (i * 8)) as u48 & 0xff) as u8;
    }

    out
}

#[test]
fn test_u48() {
    let small = u48_to_u8(10);
    assert(small[0] == 0);
    assert(small[1] == 0);
    assert(small[2] == 0);
    assert(small[3] == 0);
    assert(small[4] == 0);
    assert(small[5] == 10);

    let two_byte = u48_to_u8(256);
    assert(two_byte[0] == 0x00);
    assert(two_byte[1] == 0x00);
    assert(two_byte[2] == 0x00);
    assert(two_byte[3] == 0x00);
    assert(two_byte[4] == 0x01);
    assert(two_byte[5] == 0x00);

    let ceil = u48_to_u8(281474976710655);
    assert(ceil[0] == 0xff);
    assert(ceil[1] == 0xff);
    assert(ceil[2] == 0xff);
    assert(ceil[3] == 0xff);
    assert(ceil[4] == 0xff);
    assert(ceil[5] == 0xff);
}

fn u56_to_u8(num: u56) -> [u8; 7] {
    let mut out: [u8; 7] = [0; 7];
    for i in 0..7 {
        out[i] = (num >> (48 - (i * 8)) as u56 & 0xff) as u8;
    }

    out
}

#[test]
fn test_u56() {
    let small = u56_to_u8(10);
    assert(small[0] == 0);
    assert(small[1] == 0);
    assert(small[2] == 0);
    assert(small[3] == 0);
    assert(small[4] == 0);
    assert(small[5] == 0);
    assert(small[6] == 10);

    let two_byte = u56_to_u8(256);
    assert(two_byte[0] == 0x00);
    assert(two_byte[1] == 0x00);
    assert(two_byte[2] == 0x00);
    assert(two_byte[3] == 0x00);
    assert(two_byte[4] == 0x00);
    assert(two_byte[5] == 0x01);
    assert(two_byte[6] == 0x00);

    let ceil = u56_to_u8(72057594037927935);
    assert(ceil[0] == 0xff);
    assert(ceil[1] == 0xff);
    assert(ceil[2] == 0xff);
    assert(ceil[3] == 0xff);
    assert(ceil[4] == 0xff);
    assert(ceil[5] == 0xff);
    assert(ceil[6] == 0xff);
}

fn u64_to_u8(num: u64) -> [u8; 8] {
    let mut out: [u8; 8] = [0; 8];
    for i in 0..8 {
        out[i] = (num >> (56 - (i * 8)) as u64 & 0xff) as u8;
    }

    out
}

#[test]
fn test_u64() {
    let small = u64_to_u8(10);
    assert(small[0] == 0);
    assert(small[1] == 0);
    assert(small[2] == 0);
    assert(small[3] == 0);
    assert(small[4] == 0);
    assert(small[5] == 0);
    assert(small[6] == 0);
    assert(small[7] == 10);

    let two_byte = u64_to_u8(256);
    assert(two_byte[0] == 0x00);
    assert(two_byte[1] == 0x00);
    assert(two_byte[2] == 0x00);
    assert(two_byte[3] == 0x00);
    assert(two_byte[4] == 0x00);
    assert(two_byte[5] == 0x00);
    assert(two_byte[6] == 0x01);
    assert(two_byte[7] == 0x00);

    let random = u64_to_u8(0x1cbe443030);
    assert(random[0] == 0x00);
    assert(random[1] == 0x00);
    assert(random[2] == 0x00);
    assert(random[3] == 0x1c);
    assert(random[4] == 0xbe);
    assert(random[5] == 0x44);
    assert(random[6] == 0x30);
    assert(random[7] == 0x30);

    let ceil = u64_to_u8(18446744073709551615);
    assert(ceil[0] == 0xff);
    assert(ceil[1] == 0xff);
    assert(ceil[2] == 0xff);
    assert(ceil[3] == 0xff);
    assert(ceil[4] == 0xff);
    assert(ceil[5] == 0xff);
    assert(ceil[6] == 0xff);
    assert(ceil[7] == 0xff);
}

fn u72_to_u8(num: u72) -> [u8; 8] {
    let mut out: [u8; 8] = [0; 8];
    for i in 0..8 {
        out[i] = (num >> (56 - (i * 8)) as u72 & 0xff) as u8;
    }

    out
}

#[test]
fn test_u72() {
    let small = u72_to_u8(10);
    assert(small[0] == 0);
    assert(small[1] == 0);
    assert(small[2] == 0);
    assert(small[3] == 0);
    assert(small[4] == 0);
    assert(small[5] == 0);
    assert(small[6] == 0);
    assert(small[7] == 10);

    let two_byte = u72_to_u8(256);
    assert(two_byte[0] == 0x00);
    assert(two_byte[1] == 0x00);
    assert(two_byte[2] == 0x00);
    assert(two_byte[3] == 0x00);
    assert(two_byte[4] == 0x00);
    assert(two_byte[5] == 0x00);
    assert(two_byte[6] == 0x01);
    assert(two_byte[7] == 0x00);

    let ceil = u72_to_u8(18446744073709551615);
    assert(ceil[0] == 0xff);
    assert(ceil[1] == 0xff);
    assert(ceil[2] == 0xff);
    assert(ceil[3] == 0xff);
    assert(ceil[4] == 0xff);
    assert(ceil[5] == 0xff);
    assert(ceil[6] == 0xff);
    assert(ceil[7] == 0xff);
}

fn u8_to_u8(num: u8) -> [u8; 1] {
    let out: [u8; 1] = [num];

    out
}

#[test]
fn test_u8() {
    let small = u8_to_u8(10);
    assert(small[0] == 10);
 
    let ceil = u8_to_u8(255);
    assert(ceil[0] == 0xff);
}
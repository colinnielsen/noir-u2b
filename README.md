# Noir I2B

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT) [![Nargo Test 🌌](https://github.com/colinnielsen/noir-i2b/actions/workflows/test.yml/badge.svg)](https://github.com/colinnielsen/noir-i2b/actions/workflows/test.yml)

**Noir I2B** contains helpers functions for converting unsigned integers to `[u8]` arrays of appropriate size

## Usage

In your `Nargo.toml` file, add the following dependency:

```toml
[dependencies]
i2b = { tag = "v0.1.0", git = "https://github.com/colinnielsen/noir-i2b" }
```

Conversion functions are available for all unsigned integer types `u(8-64)`. They can be used as follows:

```rust
use dep::i2b;

fn main(){
    let num: u16 = 256;

    let num_arr = u64_to_u8(num);

    ...

    let num: u64 = 123451224112;

    let num_arr: [u8; 8] = u64_to_u8(num);
}
```

## License

This project is licensed under the MIT License. See the [LICENSE](https://github.com/colinnielsen/noir-array-helpers/blob/main/LICENSE) file for details.

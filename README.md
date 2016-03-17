#Pencil

[![Build Status](https://travis-ci.org/fengsp/pencil.svg?branch=master)](https://travis-ci.org/fengsp/pencil)

A microframework for Rust inspired by Flask.

```rust
extern crate pencil;

use pencil::{Pencil, Request, Response, PencilResult};

fn hello(_: &mut Request) -> PencilResult {
    Ok(Response::from("Hello World!"))
}

fn main() {
    let mut app = Pencil::new("/web/hello");
    app.get("/", "hello", hello);
    app.run("127.0.0.1:5000");
}
```

If you feel anything wrong, feedbacks or pull requests are welcome.

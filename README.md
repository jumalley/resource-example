# Globbing

Some entry types may support "globbing" for multiple files. These take a pattern syntax as follows:

### Examples and Matches

#### `*.lua`
- **Matches**: `a.lua`, `b.lua` (non-recursively)
- **Description**: This matches all files in the current directory with the `.lua` extension.
- **Examples**: `a.lua`, `b.lua`. It does **not** look into subdirectories.

#### `dir/*.dll`
- **Matches**: `dir/a.dll`, `dir/b.dll` (non-recursively)
- **Description**: This matches all `.dll` files directly inside the `dir` directory.
- **Examples**: `dir/a.dll`, `dir/b.dll`. It only considers files inside `dir`, not subdirectories.

#### `**/*.lua`
- **Matches**: `dir1/a.lua`, `dir2/b.lua`, `dir1/dir2/f.lua`
- **Description**: This matches all `.lua` files in the current directory and **all subdirectories at any level**.
- **Examples**: `dir1/a.lua`, `dir2/b.lua`, `dir1/dir2/f.lua`.

#### `**.lua`
- **Matches**: Same as `**/*.lua`
- **Description**: This is shorthand for the same as `**/*.lua` — matches all `.lua` files in the current directory and all subdirectories.

#### `**/cl_*.lua`
- **Matches**: `dir1/cl_hi.lua`, etc.
- **Description**: This matches all `.lua` files with names starting with `cl_` in the current directory and **all subdirectories**.
- **Examples**: `dir1/cl_hi.lua`, `dir2/subdir/cl_example.lua`.

---

### Summary

- `*` matches any file name in the current directory.
- `**` extends the match to include subdirectories at all levels.
- Patterns like `cl_*` are prefixes or suffixes for more specific filtering.

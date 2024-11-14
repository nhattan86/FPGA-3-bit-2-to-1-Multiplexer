# FPGA-MUX_2to1_3bit

This VHDL code implements a **3-bit 2-to-1 Multiplexer** by cascading three single-bit 2-to-1 multiplexers.

- **Inputs**:
  - `A`, `B`: Two 3-bit input vectors.
  - `s`: A single-bit select signal.
- **Output**:
  - `Y`: A 3-bit output vector that selects bits from either `A` or `B` based on the select signal `s`.

- **Functionality**:
  - Each bit in the 3-bit output `Y` is selected independently from `A` or `B` based on the value of `s`. When `s = '0'`, the corresponding bit in `Y` is taken from `A`; when `s = '1'`, it’s taken from `B`.
  
This 3-bit 2-to-1 multiplexer is useful in applications where a 3-bit-wide data path needs to be selected between two sources. The design can be easily extended to multiplex wider data paths by adding more single-bit multiplexers.

https://www.youtube.com/watch?v=U8bEPRZIoSc&t=50s

https://www.youtube.com/watch?v=TSOZ9G5s78o&t=37s

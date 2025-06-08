# 🔄 8-bit Barrel Shifter using Verilog

This project demonstrates the design and implementation of an **8-bit barrel shifter** using Verilog. A barrel shifter is a digital circuit that can shift or rotate data by a specific number of bits in a single clock cycle. It is commonly used in processors and digital signal processing applications.

---

## ⚙️ Project Description

The 8-bit barrel shifter in this project performs **circular right shifts** on an 8-bit input (`a[7:0]`) based on a 3-bit selection line (`sel[2:0]`). The shifting is implemented using **2:1 multiplexers**, making the design both fast and hardware-efficient.

---

## 🔁 Functionality

- **Input (`a`)**: 8-bit binary data.
- **Select (`sel`)**: 3-bit control input that determines how many positions the bits in `a` should be shifted.
- **Output (`y`)**: 8-bit result after the circular right shift.

The circular shift means that bits shifted out from the right end re-enter from the left.

---

## 🔍 Example Operation

Given input `a = 10110011`:

| `sel` | Output (`y`) | Description             |
|-------|---------------|--------------------------|
| 000   | 10110011      | No shift                 |
| 001   | 11011001      | Shift right by 1         |
| 010   | 11101100      | Shift right by 2         |
| 011   | 01110110      | Shift right by 3         |

---

## 🎯 Objective

The goal of this project is to:
- Understand and implement barrel shifting using basic logic gates (2:1 MUX).
- Practice modular design and simulation in Verilog.
- Gain insight into how barrel shifters are used in hardware systems for efficient bit manipulation.

---



## 💡 Conclusion

This project helps build a strong foundation in combinational logic design using Verilog. The 8-bit barrel shifter is a powerful yet simple example of how multiplexers can be used to implement complex logic efficiently.


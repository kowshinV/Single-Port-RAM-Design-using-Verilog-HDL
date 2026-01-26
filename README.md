## Single Port RAM Design using Verilog HDL
## 📌 Overview
This repository contains the design and verification of a Single Port RAM implemented using Verilog HDL.
The RAM supports read and write operations using a single address port, controlled synchronously by a clock signal.

---

## The project includes:
* RTL design (Top Module)
* Testbench for functional verification
* Simulation waveform
* RTL view
This project is suitable for VLSI internships, FPGA beginners, and digital design practice.

---

## ⚙️ Features
* Single port architecture (shared read/write address)
* Synchronous write operation
* Controlled read operation
* Chip select support
* Parameterized memory depth (easy scalability)
* Fully verified using testbench

---

## Simulation Waveform
📂 /waveform/
   └── single_port_ram_waveform.png
## 👉 The waveform verifies:
* Correct write operation on clock edge
* Proper data read from memory
* Chip select enable behavior

---

## Schematic / RTL Diagram
📂 /schematic/
   └── single_port_ram_rtl.png

---

## Verilog-code
Top Module – Single Port RAM (RTL)
[👉Click here to view top_module](./spr.v)

Testbench
[👉Click here to view testbench](./spr_tb.v)

---

## 🛠 Tools Used
- **Cadence Xcelium** – RTL compilation, simulation, and functional verification
- **SimVision** – Waveform viewing and signal-level debugging
- **Cadence Genus** – RTL synthesis and area/timing analysis
- **MobaXterm (Mobastream)** – Linux-based remote EDA working environment
- **Verilog HDL** – Hardware description language for design and testbench
---

## 🎯 Applications
* Memory subsystem basics
* FPGA-based designs
* SoC memory blocks

---

## 🚀 How to Run
* Compile the RTL and testbench
* Run simulation
* Observe waveform
* Verify read/write operations

---

## 👨‍💻 Author

Kowshin
VLSI & Embedded Systems Enthusiast
BE ECE, HICET

---

## **⭐ Acknowledgement**
 This project is developed for learning and internship preparation in VLSI Design & Verification.

# Linux System Profile & Hardware Specifications

**Author:** Tarun Kumar  
**Roll Number:** 2601730055  
**University:** K.R. Mangalam University  
**Batch:** 2026-30  

---

## 1. Hardware & Operating System Specifications

| Component | Specification |
| :--- | :--- |
| **CPU Model** | AMD Ryzen 9 8940HX with Radeon Graphics (2.40 GHz) |
| **CPU Cores** | 8 |
| **Total RAM** | 3.7 GiB |
| **Available RAM** | 3.2 GiB |
| **Primary Storage Size** | 1007 GB |
| **Storage Type (SSD/HDD)** | SSD (lsblk ROTA: 0 / Virtual NVMe) |
| **Operating System** | Ubuntu 26.04.1 LTS |
| **Linux Kernel** | 6.18.58.1-microsoft-standard-WSL2 |
---

## 2. Binary Number Representation

### Conversion A: Decimal to Binary (75 to Binary)
To convert the decimal number **75** to binary, we repeatedly divide by 2 and record the remainders from bottom to top (LSB to MSB):

- 75 / 2 = 37, Remainder = **1** (LSB)
- 37 / 2 = 18, Remainder = **1**
- 18 / 2 = 9,  Remainder = **0**
- 9 / 2  = 4,  Remainder = **1**
- 4 / 2  = 2,  Remainder = **0**
- 2 / 2  = 1,  Remainder = **0**
- 1 / 2  = 0,  Remainder = **1** (MSB)

Reading remainders from MSB to LSB:  
75_{10} = \mathbf{1001011_2}

*Verification:*  + 8 + 2 + 1 = 75$.

---

### Conversion B: Binary to Decimal (110101 to Decimal)
To convert the binary number **110101** to decimal, calculate the sum of powers of 2 for each bit position:

- Bit 5 (^5$):  \times 32 = 32$
- Bit 4 (^4$):  \times 16 = 16$
- Bit 3 (^3$):  \times 8  = 0$
- Bit 2 (^2$):  \times 4  = 4$
- Bit 1 (^1$):  \times 2  = 0$
- Bit 0 (^0$):  \times 1  = 1$

Sum:  
32 + 16 + 0 + 4 + 0 + 1 = \mathbf{53_{10}}  
110101_2 = \mathbf{53_{10}}

---

### Why Computers Use Binary
Computers use binary representation because digital electronic hardware is constructed from microscopic transistors that function reliably as two-state electrical switches: ON (conducting current / high voltage, representing 1) and OFF (non-conducting / low voltage, representing 0).
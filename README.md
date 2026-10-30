# 🚦 Adaptive Traffic Signal Controller using Verilog HDL

<p align="center">
  <b>An FSM-Based Adaptive Traffic Management System</b>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Language-Verilog%20HDL-blue" />
  <img src="https://img.shields.io/badge/Simulation-ModelSim-green" />
  <img src="https://img.shields.io/badge/Verification-RTL%20Simulation-success" />
  <img src="https://img.shields.io/badge/Project-Digital%20Design-orange" />
</p>

## 📌 Table of Contents

- [Project Overview](#-project-overview)
- [Problem Statement](#-problem-statement)
- [Project Objectives](#-project-objectives)
- [Key Features](#-key-features)
- [System Architecture](#-system-architecture)
- [Working Principle](#-working-principle)
- [Implementation Details](#-implementation-details)
- [Project Directory Structure](#-project-directory-structure)
- [Tools and Technologies](#-tools-and-technologies)
- [Simulation and Verification](#-simulation-and-verification)
- [How to Run the Simulation](#-how-to-run-the-simulation)
- [Simulation Results](#-simulation-results)
- [Limitations](#-limitations)
- [Future Scope](#-future-scope)
- [Learning Outcomes](#-learning-outcomes)
- [Author](#-author)
- [License](#-license)

---

## 📖 Project Overview

The **Adaptive Traffic Signal Controller** is a digital traffic management system designed and implemented using Verilog Hardware Description Language (HDL).

The primary objective of this project is to develop a traffic signal control mechanism that manages vehicle movement using a Finite State Machine (FSM).

Unlike conventional traffic signal systems that generally operate using fixed timing intervals, this project explores an adaptive approach in which traffic density and pedestrian requests are considered during signal control.

The system uses a modular RTL architecture to manage signal sequencing, timing operations, and control decisions.

The complete RTL design was simulated and functionally verified using **ModelSim**.

**Verification is limited to RTL simulation. No physical hardware implementation or testing is claimed.**

## 🎯 Problem Statement

Traditional traffic signal systems commonly use predefined timing intervals to control vehicle movement.

However, traffic conditions are not always uniform. One road may experience heavy traffic while another road may have very few vehicles.

Fixed timing can result in:

- Unnecessary waiting time.
- Inefficient utilization of green signal duration.
- Increased traffic congestion.
- Limited flexibility in responding to changing traffic conditions.
- Inadequate consideration of pedestrian requests.

This project explores a Verilog-based digital control system that uses traffic-related inputs and FSM logic to manage traffic signal operations more effectively.

## 🎯 Project Objectives

1. Design an adaptive traffic signal controller using Verilog HDL.
2. Implement traffic signal sequencing using a Finite State Machine.
3. Develop timing logic for controlling signal duration.
4. Incorporate traffic density-based control decisions.
5. Include pedestrian request handling.
6. Develop a modular and reusable RTL architecture.
7. Verify the functionality through simulation using ModelSim.
8. Analyse signal transitions and controller behaviour using simulation waveforms.

## ✨ Key Features

- **FSM-Based Control:** Uses a Finite State Machine for organized traffic signal sequencing.
- **Adaptive Timing:** Supports traffic density-based timing decisions.
- **Pedestrian Request Handling:** Includes pedestrian request functionality.
- **Modular RTL Design:** Separates timing, control logic, and system integration.
- **Simulation Testbench:** Uses a dedicated Verilog testbench for functional verification.
- **Waveform Analysis:** Allows observation of internal states and output transitions in ModelSim.
- **Digital Design Approach:** Demonstrates practical application of sequential logic and RTL design.

## 🏗️ System Architecture

The system is organized into separate functional modules.

### Functional Block Diagram

```text
       Traffic-Related Inputs
      (Density / Pedestrian)
                |
                v
       +--------------------+
       | Traffic Controller |
       |    FSM Logic       |
       +--------------------+
                |
                v
       +--------------------+
       |   Timing Module    |
       |  Traffic Duration  |
       +--------------------+
                |
                v
       +--------------------+
       | Traffic Signal     |
       | Output Control     |
       +--------------------+
                |
                v
        Traffic Light Outputs
        RED / YELLOW / GREEN

       Verilog Testbench
                |
                v
          ModelSim RTL
           Simulation
```

*Note: This is a conceptual representation of the system architecture. Refer to the Verilog source files for the actual implementation.*

## ⚙️ Working Principle

The traffic signal controller operates using a Finite State Machine.

The FSM determines the current traffic signal condition and decides the next state based on the implemented control logic and input conditions.

The general operating sequence is described below.

### 1. Input Evaluation

The controller receives traffic-related inputs, including traffic density information and pedestrian requests.

### 2. FSM State Evaluation

The FSM evaluates the current operating state and relevant input conditions to determine the next control action.

### 3. Traffic Signal Generation

Based on the current state, the controller generates the appropriate traffic signal outputs.

### 4. Timing Control

The timing module manages the duration of the traffic signal states according to the implemented timing logic.

### 5. Pedestrian Request Handling

Pedestrian requests are considered by the control logic to determine the appropriate signal transition.

### 6. State Transition

After satisfying the required transition conditions, the FSM moves to the next state and continues the traffic control sequence.

## 🔧 Implementation Details

The project is implemented using four Verilog source files.

### 1. traffic_timer.v

**Purpose:** Timing-related logic.

Responsibilities:

- Implements timing functionality required by the controller.
- Generates timing-related control conditions.
- Supports the traffic signal sequencing mechanism.

### 2. traffic_fsm_final.v

**Purpose:** Finite State Machine implementation.

Responsibilities:

- Implements the traffic signal control states.
- Determines state transitions.
- Evaluates traffic-related input conditions.
- Handles pedestrian request logic.
- Controls traffic signal operation.

### 3. traffic_system_top_final.v

**Purpose:** Top-level system integration.

Responsibilities:

- Integrates the timing and FSM modules.
- Connects internal signals between modules.
- Manages the overall system interface.
- Provides the main design module for simulation.

### 4. traffic_system_tb_final.v

**Purpose:** Simulation testbench.

Responsibilities:

- Instantiates the top-level traffic controller.
- Generates clock and reset signals.
- Applies test inputs.
- Simulates traffic-related conditions.
- Observes controller outputs.
- Helps verify the design functionality.

## 📁 Project Directory Structure

The repository is organized into separate folders for RTL source files, testbench files, and simulation evidence.

```text
adaptive-traffic-light-controller-signal-verilog/
│
├── rtl/
│   ├── traffic_timer.v
│   ├── traffic_fsm_final.v
│   └── traffic_system_top_final.v
│
├── testbench/
│   └── traffic_system_tb.v
│
├── simulation/
│   └── modelsim_waveform.png
│
├── README.md
└── .gitignore
```

| Folder/File | Description |
|---|---|
| `rtl/` | Synthesizable Verilog design modules |
| `testbench/` | Simulation testbench |
| `simulation/` | ModelSim waveform screenshot |
| `README.md` | Project documentation |
| `.gitignore` | Excludes temporary and unnecessary files |

## 💻 Tools and Technologies

| Tool / Technology | Application |
|---|---|
| Verilog HDL | RTL design and implementation |
| ModelSim | Functional RTL simulation |
| Finite State Machine | Sequential control architecture |
| Digital Logic Design | System design methodology |
| Testbench | Functional verification |
| GitHub | Source code management and publication |

## 🧪 Simulation and Verification

The complete design was simulated using ModelSim.

RTL simulation was performed to verify the functional behaviour of the traffic signal controller.

The testbench applies input conditions and observes the corresponding signal outputs and state transitions.

### Verification Activities

- Clock and reset operation.
- FSM state transition behaviour.
- Traffic signal output generation.
- Timing-related control behaviour.
- Traffic density input handling.
- Pedestrian request handling.

The expected simulation waveform was successfully obtained in ModelSim.

### Verification Status

| Verification Parameter | Status |
|---|---|
| RTL compilation | Completed |
| Testbench simulation | Completed |
| Expected waveform | Obtained |
| FSM behaviour | Verified through simulation |
| Physical hardware testing | Not performed |

## ▶️ How to Run the Simulation

Follow these steps to simulate the project using ModelSim.

### Step 1: Clone the Repository

Open a terminal and execute:

```bash
git clone https://github.com/pagarhemant00-max/adaptive-traffic-light-controller-signal-verilog.git
```

### Step 2: Open the Project Directory

```bash
cd adaptive-traffic-light-controller-signal-verilog
```

### Step 3: Start ModelSim

Open ModelSim and create a working library:

```tcl
vlib work
```

### Step 4: Compile the Verilog Files

Compile the RTL modules:

```tcl
vlog rtl/traffic_timer.v
vlog rtl/traffic_fsm_final.v
vlog rtl/traffic_system_top_final.v
```

Compile the testbench:

```tcl
vlog testbench/traffic_system_tb.v
```

### Step 5: Start Simulation

```tcl
vsim -gui work.traffic_system_tb
```

### Step 6: Add Signals to Waveform

```tcl
add wave sim:/traffic_system_tb/clk
add wave sim:/traffic_system_tb/reset
add wave sim:/traffic_system_tb/vehicle_density

add wave sim:/traffic_system_tb/uut/timer_limit
add wave sim:/traffic_system_tb/uut/timer_inst/counter
add wave sim:/traffic_system_tb/uut/timer_expired

add wave sim:/traffic_system_tb/uut/fsm_inst/current_state
add wave sim:/traffic_system_tb/uut/fsm_inst/next_state

add wave sim:/traffic_system_tb/uut/red
add wave sim:/traffic_system_tb/uut/yellow
add wave sim:/traffic_system_tb/uut/green
```

### Step 7: Run Simulation

```tcl
run 500ns
```

Observe the waveform window to analyse the controller's behaviour.

**Note:** These commands assume that the repository uses the specified folder paths and that the testbench module is named `traffic_system_tb_final`. Update the commands if your actual source files or module names differ.

## 📊 Simulation Results

The design was successfully simulated in ModelSim, and the expected waveform was obtained.

The simulation provides a way to observe:

- Clock and reset behaviour.
- Internal FSM state transitions.
- Traffic signal output changes.
- Timing-related operations.
- Response to traffic-related input conditions.
- Pedestrian request handling.

### ModelSim Waveform

Add your actual ModelSim waveform screenshot to the `simulation/` folder.

![ModelSim RTL Simulation Waveform](simulation/modelsim_waveform.png)

The waveform screenshot provides visual evidence of the RTL simulation.

| Parameter | Details |
|---|---|
| Simulation Environment | ModelSim |
| Design Language | Verilog HDL |
| Verification Method | RTL Functional Simulation |
| Simulation Result | Expected waveform obtained |
| Hardware Verification | Not performed |

## ⚠️ Limitations

- The current project has been verified through RTL simulation only.
- No physical FPGA or hardware implementation has been performed.
- Real-world vehicle detection sensors are not integrated.
- Actual road traffic conditions have not been tested.
- System performance in a real traffic environment has not been evaluated.

## 🚀 Future Scope

The project can be extended with the following improvements:

1. **FPGA Implementation:** Implement the RTL design on an FPGA development board.
2. **Real-Time Vehicle Detection:** Integrate vehicle detection inputs using suitable sensors.
3. **Emergency Vehicle Priority:** Introduce priority handling for emergency vehicles.
4. **Multi-Junction Coordination:** Extend the controller to manage multiple intersections.
5. **Advanced Traffic Management:** Explore more advanced adaptive timing algorithms.
6. **Pedestrian Safety:** Improve pedestrian crossing control and safety mechanisms.

## 📚 Learning Outcomes

Through this project, the following concepts were explored:

- Verilog HDL programming.
- RTL design methodology.
- Finite State Machine implementation.
- Sequential digital logic.
- Modular hardware description.
- Testbench development.
- ModelSim compilation and simulation.
- Waveform analysis and functional verification.

## 👨‍💻 Author

**Hemant Pagar**

Third-Year Electronics and Telecommunication Engineering Student

SNJB's Late Sau. K. B. Jain College of Engineering, Chandwad

- GitHub: [@pagarhemant00-max](https://github.com/pagarhemant00-max)
- LinkedIn: [Hemant Pagar](https://www.linkedin.com/in/hemant-pagar)

## 📄 License

This project is currently published without an explicit open-source license.

Unless a license is added, the source code remains subject to the default copyright rules. Please contact the author before redistributing or reusing it.

---

<p align="center">
  <b>Designed and simulated using Verilog HDL and ModelSim.</b>
  <br>
  <i>Exploring digital design for smarter traffic management.</i>
</p>

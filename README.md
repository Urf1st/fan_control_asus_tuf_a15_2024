# **ASUS TUF A15 Thermal & GPU Control**

An interactive Bash script for quick switching between fan thermal profiles and GPU operating modes on ASUS TUF A15 (2024) laptops running Linux.

## **🚀 Features**

* **Thermal Profiles** (via asus-nb-wmi ACPI driver):  
  * Silent  
  * Balanced  
  * Performance  
* **GPU Switching** (via supergfxctl):  
  * Integrated (iGPU only)  
  * Hybrid (Optimus mode)  
  * MUX Mode (dGPU only / AsusMuxDgpu)  
* **Status Check**: Instantly inspect active GPU mode (supergfxctl \-g).

## **❓ Problem**

The default ASUS thermal management on Linux conflicts 
between asus-nb-wmi, asusd, and BIOS control — 
resulting in erratic fan behavior.
This script provides a single unified interface 
for both thermal profiles and GPU switching.

## **📋 Requirements**

* Linux kernel with asus-nb-wmi module support.  
* supergfxctl utility/daemon installed and running.  
* sudo privileges for writing to /sys/devices/platform/asus-nb-wmi/.

## **🛠 Usage**

1. Make the script executable:  
```
   cd fan_control_asus_tuf_a15_2024
   chmod +x asus_termal_script.sh
```
2. Run the script:  
```
   ./asus_termal_script.sh
```
3. Enter the corresponding option number (0 through 7) from the menu.
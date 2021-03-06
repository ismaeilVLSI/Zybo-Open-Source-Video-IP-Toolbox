-- (c) Copyright 1995-2017 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:user:vga_pll:1.0
-- IP Revision: 3

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY system_vga_pll_0_0 IS
  PORT (
    clk_100 : IN STD_LOGIC;
    clk_50 : OUT STD_LOGIC;
    clk_25 : OUT STD_LOGIC;
    clk_12_5 : OUT STD_LOGIC;
    clk_6_25 : OUT STD_LOGIC
  );
END system_vga_pll_0_0;

ARCHITECTURE system_vga_pll_0_0_arch OF system_vga_pll_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF system_vga_pll_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT vga_pll IS
    PORT (
      clk_100 : IN STD_LOGIC;
      clk_50 : OUT STD_LOGIC;
      clk_25 : OUT STD_LOGIC;
      clk_12_5 : OUT STD_LOGIC;
      clk_6_25 : OUT STD_LOGIC
    );
  END COMPONENT vga_pll;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF system_vga_pll_0_0_arch: ARCHITECTURE IS "vga_pll,Vivado 2016.4";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF system_vga_pll_0_0_arch : ARCHITECTURE IS "system_vga_pll_0_0,vga_pll,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF system_vga_pll_0_0_arch: ARCHITECTURE IS "system_vga_pll_0_0,vga_pll,{x_ipProduct=Vivado 2016.4,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=vga_pll,x_ipVersion=1.0,x_ipCoreRevision=3,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF clk_100: SIGNAL IS "xilinx.com:signal:clock:1.0 clk_100 CLK";
  ATTRIBUTE X_INTERFACE_INFO OF clk_50: SIGNAL IS "xilinx.com:signal:clock:1.0 clk_50 CLK";
  ATTRIBUTE X_INTERFACE_INFO OF clk_25: SIGNAL IS "xilinx.com:signal:clock:1.0 clk_25 CLK";
  ATTRIBUTE X_INTERFACE_INFO OF clk_12_5: SIGNAL IS "xilinx.com:signal:clock:1.0 clk_12_5 CLK";
  ATTRIBUTE X_INTERFACE_INFO OF clk_6_25: SIGNAL IS "xilinx.com:signal:clock:1.0 clk_6_25 CLK";
BEGIN
  U0 : vga_pll
    PORT MAP (
      clk_100 => clk_100,
      clk_50 => clk_50,
      clk_25 => clk_25,
      clk_12_5 => clk_12_5,
      clk_6_25 => clk_6_25
    );
END system_vga_pll_0_0_arch;

#########################################
#   PHYS-505 Fall 2017 Final Project    #
#   Zhaoyuan "Maxwell" Cui              #
#   Instructor: Prof. Erich Varnes      #
#########################################
#General FPGA constraint file
#
#Internal clock setup
set_property -dict { PACKAGE_PIN E3    IOSTANDARD LVCMOS33 } [get_ports { clk_internal }]; #IO_L12P_T1_MRCC_35 Sch=clk100mhz
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports {clk_internal}];

#VGA
#
#Red
set_property -dict { PACKAGE_PIN A4   IOSTANDARD LVCMOS33 } [get_ports { vga_red[3] }];
set_property -dict { PACKAGE_PIN C5   IOSTANDARD LVCMOS33 } [get_ports { vga_red[2] }];
set_property -dict { PACKAGE_PIN B4   IOSTANDARD LVCMOS33 } [get_ports { vga_red[1] }];
set_property -dict { PACKAGE_PIN A3   IOSTANDARD LVCMOS33 } [get_ports { vga_red[0] }];
#Green
set_property -dict { PACKAGE_PIN A6   IOSTANDARD LVCMOS33 } [get_ports { vga_green[3] }];
set_property -dict { PACKAGE_PIN B6   IOSTANDARD LVCMOS33 } [get_ports { vga_green[2] }];
set_property -dict { PACKAGE_PIN A5   IOSTANDARD LVCMOS33 } [get_ports { vga_green[1] }];
set_property -dict { PACKAGE_PIN C6   IOSTANDARD LVCMOS33 } [get_ports { vga_green[0] }];
#Blue
set_property -dict { PACKAGE_PIN D8   IOSTANDARD LVCMOS33 } [get_ports { vga_blue[3] }];
set_property -dict { PACKAGE_PIN D7   IOSTANDARD LVCMOS33 } [get_ports { vga_blue[2] }];
set_property -dict { PACKAGE_PIN C7   IOSTANDARD LVCMOS33 } [get_ports { vga_blue[1] }];
set_property -dict { PACKAGE_PIN B7   IOSTANDARD LVCMOS33 } [get_ports { vga_blue[0] }];
#SYNC
set_property -dict { PACKAGE_PIN B12   IOSTANDARD LVCMOS33 } [get_ports { vga_vsync }];
set_property -dict { PACKAGE_PIN B11   IOSTANDARD LVCMOS33 } [get_ports { vga_hsync }];

#LED
set_property -dict { PACKAGE_PIN U6   IOSTANDARD LVCMOS33 } [get_ports { LED[7] }];
set_property -dict { PACKAGE_PIN U7   IOSTANDARD LVCMOS33 } [get_ports { LED[6] }];
set_property -dict { PACKAGE_PIN T4   IOSTANDARD LVCMOS33 } [get_ports { LED[5] }];
set_property -dict { PACKAGE_PIN T5   IOSTANDARD LVCMOS33 } [get_ports { LED[4] }];
set_property -dict { PACKAGE_PIN T6   IOSTANDARD LVCMOS33 } [get_ports { LED[3] }];
set_property -dict { PACKAGE_PIN R8   IOSTANDARD LVCMOS33 } [get_ports { LED[2] }];
set_property -dict { PACKAGE_PIN V9   IOSTANDARD LVCMOS33 } [get_ports { LED[1] }];
set_property -dict { PACKAGE_PIN T8   IOSTANDARD LVCMOS33 } [get_ports { LED[0] }];
#RLED
set_property -dict { PACKAGE_PIN K6   IOSTANDARD LVCMOS33 } [get_ports { RGLED[0] }];
set_property -dict { PACKAGE_PIN H6   IOSTANDARD LVCMOS33 } [get_ports { RGLED[1] }];

#Trigger
set_property -dict { PACKAGE_PIN E16   IOSTANDARD LVCMOS33 } [get_ports { start }];

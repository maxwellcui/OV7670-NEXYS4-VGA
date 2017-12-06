#########################################
#   PHYS-505 Fall 2017 Final Project    #
#   Zhaoyuan "Maxwell" Cui              #
#   Instructor: Prof. Erich Varnes      #
#########################################
#Camera constraint file
#
#Data ports
#Pmod JA upper part
#data 0,2,4,6
set_property -dict { PACKAGE_PIN B13   IOSTANDARD LVCMOS33 } [get_ports { cam_data[0] }];
set_property -dict { PACKAGE_PIN F14   IOSTANDARD LVCMOS33 } [get_ports { cam_data[2] }];
set_property -dict { PACKAGE_PIN D17   IOSTANDARD LVCMOS33 } [get_ports { cam_data[4] }];
set_property -dict { PACKAGE_PIN E17   IOSTANDARD LVCMOS33 } [get_ports { cam_data[6] }];

#Pmod JA bottom part
#data 1,3,5,7
set_property -dict { PACKAGE_PIN G13   IOSTANDARD LVCMOS33 } [get_ports { cam_data[1] }];
set_property -dict { PACKAGE_PIN C17   IOSTANDARD LVCMOS33 } [get_ports { cam_data[3] }];
set_property -dict { PACKAGE_PIN D18   IOSTANDARD LVCMOS33 } [get_ports { cam_data[5] }];
set_property -dict { PACKAGE_PIN E18   IOSTANDARD LVCMOS33 } [get_ports { cam_data[7] }];

#Clock and I2C connection

#External clock
set_property -dict { PACKAGE_PIN G14   IOSTANDARD LVCMOS33 } [get_ports { cam_xck }];
#Horizontal sync
set_property -dict { PACKAGE_PIN V11   IOSTANDARD LVCMOS33 } [get_ports { cam_hs }];
#SDA
set_property -dict { PACKAGE_PIN K16   IOSTANDARD LVCMOS33 } [get_ports { cam_sda }];


#Pixil clock
set_property -dict { PACKAGE_PIN P15   IOSTANDARD LVCMOS33 } [get_ports { cam_pck }];
#Vertical sync
set_property -dict { PACKAGE_PIN V15   IOSTANDARD LVCMOS33 } [get_ports { cam_vs }];
#SCL
set_property -dict { PACKAGE_PIN R16   IOSTANDARD LVCMOS33 } [get_ports { cam_scl }];
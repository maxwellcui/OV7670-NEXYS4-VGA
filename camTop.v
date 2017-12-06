`timescale 1ns / 1ps
/*
    PHYS-505 Fall 2017 Final Project    
    Zhaoyuan "Maxwell" Cui              
    Instructor: Prof. Erich Varnes      
//////////////////////////////////////////////////////////////////////////////////
    Top module
*/

module camTop(
    input clk_internal,
    output [7:0] LED,
    output [1:0] RGLED,
    input start,

    output [3:0] vga_red,
    output [3:0] vga_green,
    output [3:0] vga_blue,
    output vga_hsync,
    output vga_vsync,
    
    output cam_xck,
    output cam_scl,
    inout cam_sda,
    input [7:0] cam_data,
    input cam_vs,
    input cam_hs,
    input cam_pck
    
    );
    
    assign LED[7]=cam_data[7];
    assign LED[6]=cam_data[6];
    assign LED[5]=cam_data[5];
    assign LED[4]=cam_data[4];
    assign LED[3]=cam_data[3];
    assign LED[2]=cam_data[2];
    assign LED[1]=cam_data[1];
    assign LED[0]=cam_data[0];
        
    reg [31:0] divNum; 
    wire slow_clk; //Clock in the frequency of 25MHz
    assign cam_xck=slow_clk;
    
    initial 
    begin
        divNum=4;
    end    
    
    clkDiv div(
        .divNum(divNum), 
        .clk_in(clk_internal), 
        .clk_out(slow_clk)
        );

    wire done; //Indicator of configuration status

    assign RGLED[0]=start;
    assign RGLED[1]=done;
    
    camera_configure CCONF(
        .clk(slow_clk),
        .start(start),
        .sioc(cam_scl),
        .siod(cam_sda),
        .done(done)
        );
    

    //Capture and VGA
    wire [18:0] frame_addr;
    wire [11:0] frame_pixel;
    wire [18:0] capture_addr;
    wire [11:0] capture_data;
    wire capture_we;
    
    vga vg1(
        .clk25(slow_clk),
        .vga_red(vga_red),
        .vga_green(vga_green),
        .vga_blue(vga_blue),
        .vga_hsync(vga_hsync),
        .vga_vsync(vga_vsync),
        .frame_addr(frame_addr),
        .frame_pixel(frame_pixel)
        );
    
    frame_buffer fb1(
        .clka(cam_pck),
        .wea(capture_we),
        .addra(capture_addr),
        .dina(capture_data),
        .clkb(slow_clk),
        .addrb(frame_addr),
        .doutb(frame_pixel)
        );
    
    ov7670_capture_verilog cap1(
        .pclk(cam_pck),
        .vsync(cam_vs),
        .href(cam_hs),
        .d(cam_data),
        .addr(capture_addr),
        .dout(capture_data),
        .we(capture_we));
   
    

endmodule

module dongho(
	input	CLOCK_50,
	input 	[3:0]	KEY,
	input 	[1:0]	SW,
	output 	[7:0]	LCD_DATA,
	output 			LCD_EN,
	output 			LCD_RS,
	output 			LCD_RW,
	output 			LCD_BLON,
	output 			LCD_ON,
	output	[6:0]	HEX0,HEX1,HEX2,HEX3,HEX4,HEX5,HEX6,HEX7,
	output	[7:0]	LEDG
);
	assign HEX0 = 7'b1111111;
	assign HEX1 = 7'b1111111;
	
system u0 (
        .clk_clk                             (CLOCK_50),
        .lcd_d_external_connection_export    (LCD_DATA),    
        .lcd_rs_external_connection_export   (LCD_RS),   
        .lcd_rw_external_connection_export   (LCD_RW),   
        .lcd_en_external_connection_export   (LCD_EN),  
        .lcd_blon_external_connection_export (LCD_BLON), 
        .lcd_on_external_connection_export   (LCD_ON),   
        .sw_0_external_connection_export     (SW[0]),   
		  .sw_1_external_connection_export 		(SW[1]),
        .key_0_external_connection_export    (KEY[0]),
		  .key_1_external_connection_export    (KEY[1]),
		  .key_3_external_connection_export		(KEY[3]),
		  .hex_6_external_connection_export    (HEX6),   
        .hex_7_external_connection_export    (HEX7),   
        .hex_2_external_connection_export    (HEX2),    
        .hex_3_external_connection_export    (HEX3),    
        .hex_4_external_connection_export    (HEX4),    
        .hex_5_external_connection_export    (HEX5),  
		  .led_external_connection_export		(LEDG)
		  
    );
endmodule 
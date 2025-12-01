
module rgb_test (output reg led_red,
           output reg led_green,
           output reg led_blue
);

wire clk;


SB_HFOSC #(
    .CLKHF_DIV("0b10") // 00=48MHz, 01=24MHz, 10=12MHz, 11=6MHz
) u_hfosc (
    .CLKHFEN(1'b1),    
    .CLKHFPU(1'b1),    
    .CLKHF(clk)
);


localparam N = 22;  //-- N<=21 Fast, N>=23 Slow

reg [N:0] counter;
reg [1:0] led_state;

always @(posedge clk) begin
  counter <= counter + 1;
  if (counter == 0) begin
    if (led_state == 2) begin
        led_state <= 0;
    end else begin
        led_state <= led_state + 1;
    end
  end
end

always @(*) begin
    
    led_red   = 1;
    led_green = 1;
    led_blue  = 1;


    case (led_state)
        2'd0: led_red   = 0;
        2'd1: led_green = 0;
        2'd2: led_blue  = 0;
        default: ;
    endcase
end

endmodule



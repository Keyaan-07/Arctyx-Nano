module pwm (output reg led_red,
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

reg [7:0] counter;
reg [7:0] duty = 8'd128; // 50% duty cycle
reg [15:0] slow;
reg dir = 1'b0;
reg [1:0] state;


always @(posedge clk) begin

    counter <= counter + 1;

    
    if (counter <= duty) begin
        
        case (state)
            2'd0: begin  // RED
                led_red   <= 1'b0;
                led_green <= 1'b1;
                led_blue  <= 1'b1;
            end
            2'd1: begin  // GREEN
                led_red   <= 1'b1;
                led_green <= 1'b0;
                led_blue  <= 1'b1;
            end
            2'd2: begin  // BLUE
                led_red   <= 1'b1;
                led_green <= 1'b1;
                led_blue  <= 1'b0;
            end
            default: begin
                led_red   <= 1'b1;
                led_green <= 1'b1;
                led_blue  <= 1'b1;
            end
        endcase
    end else begin
        
        led_red   <= 1'b1;
        led_green <= 1'b1;
        led_blue  <= 1'b1;
    end

    
    slow <= slow + 1;

    if (slow == 0) begin
        if (dir == 1'b0) begin
            
            if (duty == 8'd255) begin
                dir <= 1'b1; 
            end else begin
                duty <= duty + 1;
            end
        end else begin
            
            if (duty == 8'd0) begin
                dir <= 1'b0; 

                
                if (state == 2'd2)
                    state <= 2'd0;
                else
                    state <= state + 1;
            end else begin
                duty <= duty - 1;
            end
        end
    end
end 

endmodule
module sta_1 (
    input clk,
    input in,
    output reg out
);

    reg launch_ff_D;
    wire launch_to_capture; // wire between FF1 and FF2

    // First flip-flop (launch)
    always @(posedge clk) begin
        launch_ff_D <= in;
    end

    // Insert BUF_X2 (from your technology library)
    BUF_X2 u_buf (
        .A(launch_ff_D),       // input of buffer
        .Z(launch_to_capture)  // output of buffer
    );

    // Second flip-flop (capture)
    always @(posedge clk) begin
        out <= launch_to_capture;
    end

endmodule

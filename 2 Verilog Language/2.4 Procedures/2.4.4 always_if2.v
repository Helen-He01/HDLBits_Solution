// synthesis verilog_input_version verilog_2001
module top_module (
    input      cpu_overheated,
    output reg shut_off_computer,
    input      arrived,
    input      gas_tank_empty,
    output reg keep_driving  ); //
//需要补充完整output的值
    always @(*) begin
        if (cpu_overheated)
            shut_off_computer = 1; // Shut off the computer if it's overheated.
        else
            shut_off_computer = 0; // Otherwise, do not shut off the computer.
    end
//当arrived==1或者gas==0时，keep_arriving = 0
    always @(*) begin
        if (arrived || gas_tank_empty)
            keep_driving = 0; // Stop driving if arrived or need to refuel.
        else
            keep_driving = 1; // Keep driving if not arrived and gas is not empty.
    end

endmodule

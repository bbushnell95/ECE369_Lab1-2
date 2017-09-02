`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// ECE369A - Computer Architecture
// Laboratory 1
// Module - InstructionFetchUnit_tb.v
// Description - Test the 'InstructionFetchUnit.v' module.
////////////////////////////////////////////////////////////////////////////////

module InstructionFetchUnit_tb();

    wire [31:0] Instruction;
	reg Reset, Clk;

    InstructionFetchUnit u0(
        .Instruction(Instruction), 
        .Reset(Reset), 
        .Clk(Clk)
    );
    
    initial begin
        Clk <= 1'b0;
        forever #10 Clk <= ~Clk;
    end
    
    initial begin
        /* Please fill in the implementation here... */
        //Case 0: Reset
        Reset <= 1'b1;
        #1 Reset <= 1'b0; $display("Instruction Fetched = %h", Instruction);
        
        //Case 1: After 1 clock cycle
        #10 $display("Instruction Fetched = %h", Instruction); 
        
        //Case 2: Another clock cycle
        #20 $display("Instruction Fetched = %h", Instruction);
        
        //Case 3: Another clock cycle
        #20 $display("Instruction Fetched = %h", Instruction);
        
        //Case 4: Reset #2
        #20 Reset <= 1'b1;
        #1 Reset <= 1'b0;  $display("Instruction Fetched = %h", Instruction);

        //Case 5: Another clock cycle
        #20 $display("Instruction Fetched = %h", Instruction);
        
        end
        
        
endmodule
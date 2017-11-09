module testRegister ();

	reg[31:0] q;
	wire[31:0] in;
	wire write;
	wire clk;

	register reg32bit(q, in, write, clk);

	initial begin
    // initialization
    clk=0; write=0; #5
    $display("input               wrenable clock | output");
    clk=1; in0=32'h0000; write=1; #1000
    $display("%b %b      %b    | %b", in, write, clk, out);
    clk=0; #100
    clk=1; in0=32'h90F7; write=0; #1000
    $display("%b %b      %b    | %b", in, write, clk, out);
    clk=0; #100
    clk=1; write=1; #1000
    $display("%b %b      %b    | %b", in, write, clk, out);
    clk=1; in0=32'hFB50; write=1; #1000
    $display("%b %b      %b    | %b", in, write, clk, out);
    end

endmodule
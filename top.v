module top (
    input [7:0]sw,
    output [5:0]led
    );
    
    wire c0;
    
     light inst(
        .downstairs(sw[0]),
        .upstairs(sw[1]),
        .Y(led[0])
     );
    adder a_inst(
        .A(sw[2]),
        .B(sw[3]),
        .Y(led[1]),
        .carry(led[2])
     );
   

    
    full_adder b_inst(
        .A(sw[4]),
        .B(sw[6]),
        .Cin(1'b0),
        .Y(led[3]),
        .Cout(c0)
     ); 
    full_adder c_inst(
        .A(sw[5]),
        .B(sw[7]),
        .Cin(c0),
        .Y(led[4]),
        .Cout(led[5])
    );    
    endmodule
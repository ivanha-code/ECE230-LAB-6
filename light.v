module light(
    input downstairs, upstairs,
    output stair_light, 
    output Y
);

    assign Y = downstairs ^ upstairs
    ;

endmodule
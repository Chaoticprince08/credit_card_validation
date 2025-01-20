(globals
    version = 3
    io_order = clockwise
    space = 20
    total_edge = 3
)

(iopad
    (topleft
        (inst name = "CornerCell1" cell = pfrelr offset = 0 orientation = R180 place_status = fixed)

    )
    (left
        (inst name = "i_clk" cell = pc3d01 place_status = fixed)
        (inst name = "i_rst" cell = pc3d01 place_status = fixed)
        (inst name = "VDD1" cell = pvdi place_status = fixed)
    )
    (topright
        (inst name = "CornerCell2" cell = pfrelr offset = 0 orientation = R90 place_status = fixed)
    )
    (top
        (inst name = "VDDO" cell = pvda place_status = fixed)
        (inst name = "i_serial_in_3" cell = pc3d01 place_status = fixed)
        (inst name = "i_serial_in_2" cell = pvdi place_status = fixed)
    )
    (bottomright
        (inst name = "CornerCell3" cell = pfrelr offset = 0 orientation = R0 place_status = fixed)
    )
    (right
        (inst name = "i_serial_in_1" cell = pc3d01 place_status = fixed)
        (inst name = "i_serial_in_0" cell = pc3d01 place_status = fixed)
        (inst name = "o_validate" cell = pc3o01 place_status = fixed)
    )
    (bottomleft
        (inst name = "CornerCell4" cell = pfrelr offset = 0 orientation = R270 place_status = fixed)
    )
    (bottom
        (inst name = "VSSO" cell = pv0a place_status = fixed)
        (inst name = "VSS1" cell = pv0i place_status = fixed)
        (inst name = "VSS2" cell = pv0i place_status = fixed)
    )    
)

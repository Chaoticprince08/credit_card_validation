
//input ports
add mapped point clk clk -type PI PI
add mapped point rst rst -type PI PI
add mapped point serial_in[3] serial_in[3] -type PI PI
add mapped point serial_in[2] serial_in[2] -type PI PI
add mapped point serial_in[1] serial_in[1] -type PI PI
add mapped point serial_in[0] serial_in[0] -type PI PI

//output ports
add mapped point validate validate -type PO PO

//inout ports




//Sequential Pins
add mapped point controller/i[0]/q controller_i_reg[0]17/Q -type DLAT DLAT
add mapped point controller/i[1]/q controller_i_reg[1]18/Q -type DLAT DLAT
add mapped point controller/i[2]/q controller_i_reg[2]19/Q -type DLAT DLAT
add mapped point controller/i[3]/q controller_i_reg[3]20/Q -type DLAT DLAT
add mapped point controller/present_state[0]/q controller_present_state_reg[0]/Q -type DFF DFF
add mapped point controller/present_state[1]/q controller_present_state_reg[1]/Q -type DFF DFF
add mapped point datapath/card_number[0][0]/q datapath_card_number_reg[0][0]68/Q -type DFF DFF
add mapped point datapath/card_number[0][1]/q datapath_card_number_reg[0][1]69/Q -type DFF DFF
add mapped point datapath/card_number[0][2]/q datapath_card_number_reg[0][2]70/Q -type DFF DFF
add mapped point datapath/card_number[0][3]/q datapath_card_number_reg[0][3]71/Q -type DFF DFF
add mapped point datapath/card_number[1][0]/q datapath_card_number_reg[1][0]75/Q -type DFF DFF
add mapped point datapath/card_number[1][1]/q datapath_card_number_reg[1][1]76/Q -type DFF DFF
add mapped point datapath/card_number[1][2]/q datapath_card_number_reg[1][2]77/Q -type DFF DFF
add mapped point datapath/card_number[1][3]/q datapath_card_number_reg[1][3]78/Q -type DFF DFF
add mapped point datapath/card_number[2][0]/q datapath_card_number_reg[2][0]83/Q -type DFF DFF
add mapped point datapath/card_number[2][1]/q datapath_card_number_reg[2][1]84/Q -type DFF DFF
add mapped point datapath/card_number[2][2]/q datapath_card_number_reg[2][2]85/Q -type DFF DFF
add mapped point datapath/card_number[2][3]/q datapath_card_number_reg[2][3]86/Q -type DFF DFF
add mapped point datapath/card_number[3][0]/q datapath_card_number_reg[3][0]91/Q -type DFF DFF
add mapped point datapath/card_number[3][1]/q datapath_card_number_reg[3][1]92/Q -type DFF DFF
add mapped point datapath/card_number[3][2]/q datapath_card_number_reg[3][2]93/Q -type DFF DFF
add mapped point datapath/card_number[3][3]/q datapath_card_number_reg[3][3]94/Q -type DFF DFF
add mapped point datapath/card_number[4][0]/q datapath_card_number_reg[4][0]99/Q -type DFF DFF
add mapped point datapath/card_number[4][1]/q datapath_card_number_reg[4][1]100/Q -type DFF DFF
add mapped point datapath/card_number[4][2]/q datapath_card_number_reg[4][2]101/Q -type DFF DFF
add mapped point datapath/card_number[4][3]/q datapath_card_number_reg[4][3]102/Q -type DFF DFF
add mapped point datapath/card_number[5][0]/q datapath_card_number_reg[5][0]107/Q -type DFF DFF
add mapped point datapath/card_number[5][1]/q datapath_card_number_reg[5][1]108/Q -type DFF DFF
add mapped point datapath/card_number[5][2]/q datapath_card_number_reg[5][2]109/Q -type DFF DFF
add mapped point datapath/card_number[5][3]/q datapath_card_number_reg[5][3]110/Q -type DFF DFF
add mapped point datapath/card_number[6][0]/q datapath_card_number_reg[6][0]115/Q -type DFF DFF
add mapped point datapath/card_number[6][1]/q datapath_card_number_reg[6][1]116/Q -type DFF DFF
add mapped point datapath/card_number[6][2]/q datapath_card_number_reg[6][2]117/Q -type DFF DFF
add mapped point datapath/card_number[6][3]/q datapath_card_number_reg[6][3]118/Q -type DFF DFF
add mapped point datapath/card_number[7][0]/q datapath_card_number_reg[7][0]123/Q -type DFF DFF
add mapped point datapath/card_number[7][1]/q datapath_card_number_reg[7][1]124/Q -type DFF DFF
add mapped point datapath/card_number[7][2]/q datapath_card_number_reg[7][2]125/Q -type DFF DFF
add mapped point datapath/card_number[7][3]/q datapath_card_number_reg[7][3]126/Q -type DFF DFF
add mapped point datapath/card_number[8][0]/q datapath_card_number_reg[8][0]131/Q -type DFF DFF
add mapped point datapath/card_number[8][1]/q datapath_card_number_reg[8][1]132/Q -type DFF DFF
add mapped point datapath/card_number[8][2]/q datapath_card_number_reg[8][2]133/Q -type DFF DFF
add mapped point datapath/card_number[8][3]/q datapath_card_number_reg[8][3]134/Q -type DFF DFF
add mapped point datapath/card_number[9][0]/q datapath_card_number_reg[9][0]139/Q -type DFF DFF
add mapped point datapath/card_number[9][1]/q datapath_card_number_reg[9][1]140/Q -type DFF DFF
add mapped point datapath/card_number[9][2]/q datapath_card_number_reg[9][2]141/Q -type DFF DFF
add mapped point datapath/card_number[9][3]/q datapath_card_number_reg[9][3]142/Q -type DFF DFF
add mapped point datapath/card_number[10][0]/q datapath_card_number_reg[10][0]147/Q -type DFF DFF
add mapped point datapath/card_number[10][1]/q datapath_card_number_reg[10][1]148/Q -type DFF DFF
add mapped point datapath/card_number[10][2]/q datapath_card_number_reg[10][2]149/Q -type DFF DFF
add mapped point datapath/card_number[10][3]/q datapath_card_number_reg[10][3]150/Q -type DFF DFF
add mapped point datapath/card_number[11][0]/q datapath_card_number_reg[11][0]155/Q -type DFF DFF
add mapped point datapath/card_number[11][1]/q datapath_card_number_reg[11][1]156/Q -type DFF DFF
add mapped point datapath/card_number[11][2]/q datapath_card_number_reg[11][2]157/Q -type DFF DFF
add mapped point datapath/card_number[11][3]/q datapath_card_number_reg[11][3]158/Q -type DFF DFF
add mapped point datapath/card_number[12][0]/q datapath_card_number_reg[12][0]163/Q -type DFF DFF
add mapped point datapath/card_number[12][1]/q datapath_card_number_reg[12][1]164/Q -type DFF DFF
add mapped point datapath/card_number[12][2]/q datapath_card_number_reg[12][2]165/Q -type DFF DFF
add mapped point datapath/card_number[12][3]/q datapath_card_number_reg[12][3]166/Q -type DFF DFF
add mapped point datapath/card_number[13][0]/q datapath_card_number_reg[13][0]171/Q -type DFF DFF
add mapped point datapath/card_number[13][1]/q datapath_card_number_reg[13][1]172/Q -type DFF DFF
add mapped point datapath/card_number[13][2]/q datapath_card_number_reg[13][2]173/Q -type DFF DFF
add mapped point datapath/card_number[13][3]/q datapath_card_number_reg[13][3]174/Q -type DFF DFF
add mapped point datapath/card_number[14][0]/q datapath_card_number_reg[14][0]179/Q -type DFF DFF
add mapped point datapath/card_number[14][1]/q datapath_card_number_reg[14][1]180/Q -type DFF DFF
add mapped point datapath/card_number[14][2]/q datapath_card_number_reg[14][2]181/Q -type DFF DFF
add mapped point datapath/card_number[14][3]/q datapath_card_number_reg[14][3]182/Q -type DFF DFF
add mapped point datapath/card_number[15][0]/q datapath_card_number_reg[15][0]187/Q -type DFF DFF
add mapped point datapath/card_number[15][1]/q datapath_card_number_reg[15][1]188/Q -type DFF DFF
add mapped point datapath/card_number[15][2]/q datapath_card_number_reg[15][2]189/Q -type DFF DFF
add mapped point datapath/card_number[15][3]/q datapath_card_number_reg[15][3]190/Q -type DFF DFF
add mapped point datapath/go/q datapath_go_reg/Q -type DFF DFF
add mapped point datapath/j[0]/q datapath_j_reg[0]195/Q -type DFF DFF
add mapped point datapath/j[1]/q datapath_j_reg[1]196/Q -type DFF DFF
add mapped point datapath/j[2]/q datapath_j_reg[2]197/Q -type DFF DFF
add mapped point datapath/j[3]/q datapath_j_reg[3]198/Q -type DFF DFF
add mapped point datapath/j[4]/q datapath_j_reg[4]199/Q -type DFF DFF
add mapped point datapath/j[5]/q datapath_j_reg[5]200/Q -type DFF DFF
add mapped point datapath/j[6]/q datapath_j_reg[6]201/Q -type DFF DFF
add mapped point datapath/j[7]/q datapath_j_reg[7]202/Q -type DFF DFF
add mapped point datapath/j[8]/q datapath_j_reg[8]203/Q -type DFF DFF
add mapped point datapath/j[9]/q datapath_j_reg[9]204/Q -type DFF DFF
add mapped point datapath/j[10]/q datapath_j_reg[10]205/Q -type DFF DFF
add mapped point datapath/j[11]/q datapath_j_reg[11]206/Q -type DFF DFF
add mapped point datapath/j[12]/q datapath_j_reg[12]207/Q -type DFF DFF
add mapped point datapath/j[13]/q datapath_j_reg[13]208/Q -type DFF DFF
add mapped point datapath/j[14]/q datapath_j_reg[14]209/Q -type DFF DFF
add mapped point datapath/j[15]/q datapath_j_reg[15]210/Q -type DFF DFF
add mapped point datapath/j[16]/q datapath_j_reg[16]211/Q -type DFF DFF
add mapped point datapath/j[17]/q datapath_j_reg[17]212/Q -type DFF DFF
add mapped point datapath/j[18]/q datapath_j_reg[18]213/Q -type DFF DFF
add mapped point datapath/j[19]/q datapath_j_reg[19]214/Q -type DFF DFF
add mapped point datapath/j[20]/q datapath_j_reg[20]215/Q -type DFF DFF
add mapped point datapath/j[21]/q datapath_j_reg[21]216/Q -type DFF DFF
add mapped point datapath/j[22]/q datapath_j_reg[22]217/Q -type DFF DFF
add mapped point datapath/j[23]/q datapath_j_reg[23]218/Q -type DFF DFF
add mapped point datapath/j[24]/q datapath_j_reg[24]219/Q -type DFF DFF
add mapped point datapath/j[25]/q datapath_j_reg[25]220/Q -type DFF DFF
add mapped point datapath/j[26]/q datapath_j_reg[26]221/Q -type DFF DFF
add mapped point datapath/j[27]/q datapath_j_reg[27]222/Q -type DFF DFF
add mapped point datapath/j[28]/q datapath_j_reg[28]223/Q -type DFF DFF
add mapped point datapath/j[29]/q datapath_j_reg[29]224/Q -type DFF DFF
add mapped point datapath/j[30]/q datapath_j_reg[30]225/Q -type DFF DFF
add mapped point datapath/j[31]/q datapath_j_reg[31]226/Q -type DFF DFF
add mapped point datapath/validate/q datapath_validate_reg/Q -type DFF DFF



//Black Boxes



//Empty Modules as Blackboxes

/*
    Title: 32 Bit Barrel Shifter
    Input port:
        1. a : 資料
        2. bit : 移位量

    Output port:
        1. result: 移位後資料
*/
module Barrel_Shifter_32bit(a, shamt, result);
    input wire [31:0] a;
    input wire [4:0] shamt;
    output [31:0] result;

    wire [31:0] temp;

    // 第一層
    Mux_2to1 mux0(.sel(shamt[0]), .in0(a[0]), .in1(a[1]), .out(temp[0]));
    Mux_2to1 mux1(.sel(shamt[0]), .in0(a[1]), .in1(a[2]), .out(temp[1]));
    Mux_2to1 mux2(.sel(shamt[0]), .in0(a[2]), .in1(a[3]), .out(temp[2]));
    Mux_2to1 mux3(.sel(shamt[0]), .in0(a[3]), .in1(a[4]), .out(temp[3]));
    Mux_2to1 mux4(.sel(shamt[0]), .in0(a[4]), .in1(a[5]), .out(temp[4]));
    Mux_2to1 mux5(.sel(shamt[0]), .in0(a[5]), .in1(a[6]), .out(temp[5]));
    Mux_2to1 mux6(.sel(shamt[0]), .in0(a[6]), .in1(a[7]), .out(temp[6]));
    Mux_2to1 mux7(.sel(shamt[0]), .in0(a[7]), .in1(a[8]), .out(temp[7]));
    Mux_2to1 mux8(.sel(shamt[0]), .in0(a[8]), .in1(a[9]), .out(temp[8]));
    Mux_2to1 mux9(.sel(shamt[0]), .in0(a[9]), .in1(a[10]), .out(temp[9]));
    Mux_2to1 mux10(.sel(shamt[0]), .in0(a[10]), .in1(a[11]), .out(temp[10]));
    Mux_2to1 mux11(.sel(shamt[0]), .in0(a[11]), .in1(a[12]), .out(temp[11]));
    Mux_2to1 mux12(.sel(shamt[0]), .in0(a[12]), .in1(a[13]), .out(temp[12]));
    Mux_2to1 mux13(.sel(shamt[0]), .in0(a[13]), .in1(a[14]), .out(temp[13]));
    Mux_2to1 mux14(.sel(shamt[0]), .in0(a[14]), .in1(a[15]), .out(temp[14]));
    Mux_2to1 mux15(.sel(shamt[0]), .in0(a[15]), .in1(a[16]), .out(temp[15]));
    Mux_2to1 mux16(.sel(shamt[0]), .in0(a[16]), .in1(a[17]), .out(temp[16]));
    Mux_2to1 mux17(.sel(shamt[0]), .in0(a[17]), .in1(a[18]), .out(temp[17]));
    Mux_2to1 mux18(.sel(shamt[0]), .in0(a[18]), .in1(a[19]), .out(temp[18]));
    Mux_2to1 mux19(.sel(shamt[0]), .in0(a[19]), .in1(a[20]), .out(temp[19]));
    Mux_2to1 mux20(.sel(shamt[0]), .in0(a[20]), .in1(a[21]), .out(temp[20]));
    Mux_2to1 mux21(.sel(shamt[0]), .in0(a[21]), .in1(a[22]), .out(temp[21]));
    Mux_2to1 mux22(.sel(shamt[0]), .in0(a[22]), .in1(a[23]), .out(temp[22]));
    Mux_2to1 mux23(.sel(shamt[0]), .in0(a[23]), .in1(a[24]), .out(temp[23]));
    Mux_2to1 mux24(.sel(shamt[0]), .in0(a[24]), .in1(a[25]), .out(temp[24]));
    Mux_2to1 mux25(.sel(shamt[0]), .in0(a[25]), .in1(a[26]), .out(temp[25]));
    Mux_2to1 mux26(.sel(shamt[0]), .in0(a[26]), .in1(a[27]), .out(temp[26]));
    Mux_2to1 mux27(.sel(shamt[0]), .in0(a[27]), .in1(a[28]), .out(temp[27]));
    Mux_2to1 mux28(.sel(shamt[0]), .in0(a[28]), .in1(a[29]), .out(temp[28]));
    Mux_2to1 mux29(.sel(shamt[0]), .in0(a[29]), .in1(a[30]), .out(temp[29]));
    Mux_2to1 mux30(.sel(shamt[0]), .in0(a[30]), .in1(a[31]), .out(temp[30]));
    Mux_2to1 mux31(.sel(shamt[0]), .in0(a[31]), .in1(0), .out(temp[31]));

    // 第二層
    Mux_2to1 mux1_0(.sel(shamt[1]), .in0(temp[0]), .in1(temp[2]), .out(temp[0]));
    Mux_2to1 mux1_1(.sel(shamt[1]), .in0(temp[1]), .in1(temp[3]), .out(temp[1]));
    Mux_2to1 mux1_2(.sel(shamt[1]), .in0(temp[2]), .in1(temp[4]), .out(temp[2]));
    Mux_2to1 mux1_3(.sel(shamt[1]), .in0(temp[3]), .in1(temp[5]), .out(temp[3]));
    Mux_2to1 mux1_4(.sel(shamt[1]), .in0(temp[4]), .in1(temp[6]), .out(temp[4]));
    Mux_2to1 mux1_5(.sel(shamt[1]), .in0(temp[5]), .in1(temp[7]), .out(temp[5]));
    Mux_2to1 mux1_6(.sel(shamt[1]), .in0(temp[6]), .in1(temp[8]), .out(temp[6]));
    Mux_2to1 mux1_7(.sel(shamt[1]), .in0(temp[7]), .in1(temp[9]), .out(temp[7]));
    Mux_2to1 mux1_8(.sel(shamt[1]), .in0(temp[8]), .in1(temp[10]), .out(temp[8]));
    Mux_2to1 mux1_9(.sel(shamt[1]), .in0(temp[9]), .in1(temp[11]), .out(temp[9]));
    Mux_2to1 mux1_10(.sel(shamt[1]), .in0(temp[10]), .in1(temp[12]), .out(temp[10]));
    Mux_2to1 mux1_11(.sel(shamt[1]), .in0(temp[11]), .in1(temp[13]), .out(temp[11]));
    Mux_2to1 mux1_12(.sel(shamt[1]), .in0(temp[12]), .in1(temp[14]), .out(temp[12]));
    Mux_2to1 mux1_13(.sel(shamt[1]), .in0(temp[13]), .in1(temp[15]), .out(temp[13]));
    Mux_2to1 mux1_14(.sel(shamt[1]), .in0(temp[14]), .in1(temp[16]), .out(temp[14]));
    Mux_2to1 mux1_15(.sel(shamt[1]), .in0(temp[15]), .in1(temp[17]), .out(temp[15]));
    Mux_2to1 mux1_16(.sel(shamt[1]), .in0(temp[16]), .in1(temp[18]), .out(temp[16]));
    Mux_2to1 mux1_17(.sel(shamt[1]), .in0(temp[17]), .in1(temp[19]), .out(temp[17]));
    Mux_2to1 mux1_18(.sel(shamt[1]), .in0(temp[18]), .in1(temp[20]), .out(temp[18]));
    Mux_2to1 mux1_19(.sel(shamt[1]), .in0(temp[19]), .in1(temp[21]), .out(temp[19]));
    Mux_2to1 mux1_20(.sel(shamt[1]), .in0(temp[20]), .in1(temp[22]), .out(temp[20]));
    Mux_2to1 mux1_21(.sel(shamt[1]), .in0(temp[21]), .in1(temp[23]), .out(temp[21]));
    Mux_2to1 mux1_22(.sel(shamt[1]), .in0(temp[22]), .in1(temp[24]), .out(temp[22]));
    Mux_2to1 mux1_23(.sel(shamt[1]), .in0(temp[23]), .in1(temp[25]), .out(temp[23]));
    Mux_2to1 mux1_24(.sel(shamt[1]), .in0(temp[24]), .in1(temp[26]), .out(temp[24]));
    Mux_2to1 mux1_25(.sel(shamt[1]), .in0(temp[25]), .in1(temp[27]), .out(temp[25]));
    Mux_2to1 mux1_26(.sel(shamt[1]), .in0(temp[26]), .in1(temp[28]), .out(temp[26]));
    Mux_2to1 mux1_27(.sel(shamt[1]), .in0(temp[27]), .in1(temp[29]), .out(temp[27]));
    Mux_2to1 mux1_28(.sel(shamt[1]), .in0(temp[28]), .in1(temp[30]), .out(temp[28]));
    Mux_2to1 mux1_29(.sel(shamt[1]), .in0(temp[29]), .in1(temp[31]), .out(temp[29]));
    Mux_2to1 mux1_30(.sel(shamt[1]), .in0(temp[30]), .in1(0), .out(temp[30]));
    Mux_2to1 mux1_31(.sel(shamt[1]), .in0(temp[31]), .in1(0), .out(temp[31]));

    // 第三層
    Mux_2to1 mux2_0(.sel(shamt[2]), .in0(temp[0]), .in1(temp[4]), .out(temp[0]));
    Mux_2to1 mux2_1(.sel(shamt[2]), .in0(temp[1]), .in1(temp[5]), .out(temp[1]));
    Mux_2to1 mux2_2(.sel(shamt[2]), .in0(temp[2]), .in1(temp[6]), .out(temp[2]));
    Mux_2to1 mux2_3(.sel(shamt[2]), .in0(temp[3]), .in1(temp[7]), .out(temp[3]));
    Mux_2to1 mux2_4(.sel(shamt[2]), .in0(temp[4]), .in1(temp[8]), .out(temp[4]));
    Mux_2to1 mux2_5(.sel(shamt[2]), .in0(temp[5]), .in1(temp[9]), .out(temp[5]));
    Mux_2to1 mux2_6(.sel(shamt[2]), .in0(temp[6]), .in1(temp[10]), .out(temp[6]));
    Mux_2to1 mux2_7(.sel(shamt[2]), .in0(temp[7]), .in1(temp[11]), .out(temp[7]));
    Mux_2to1 mux2_8(.sel(shamt[2]), .in0(temp[8]), .in1(temp[12]), .out(temp[8]));
    Mux_2to1 mux2_9(.sel(shamt[2]), .in0(temp[9]), .in1(temp[13]), .out(temp[9]));
    Mux_2to1 mux2_10(.sel(shamt[2]), .in0(temp[10]), .in1(temp[14]), .out(temp[10]));
    Mux_2to1 mux2_11(.sel(shamt[2]), .in0(temp[11]), .in1(temp[15]), .out(temp[11]));
    Mux_2to1 mux2_12(.sel(shamt[2]), .in0(temp[12]), .in1(temp[16]), .out(temp[12]));
    Mux_2to1 mux2_13(.sel(shamt[2]), .in0(temp[13]), .in1(temp[17]), .out(temp[13]));
    Mux_2to1 mux2_14(.sel(shamt[2]), .in0(temp[14]), .in1(temp[18]), .out(temp[14]));
    Mux_2to1 mux2_15(.sel(shamt[2]), .in0(temp[15]), .in1(temp[19]), .out(temp[15]));
    Mux_2to1 mux2_16(.sel(shamt[2]), .in0(temp[16]), .in1(temp[20]), .out(temp[16]));
    Mux_2to1 mux2_17(.sel(shamt[2]), .in0(temp[17]), .in1(temp[21]), .out(temp[17]));
    Mux_2to1 mux2_18(.sel(shamt[2]), .in0(temp[18]), .in1(temp[22]), .out(temp[18]));
    Mux_2to1 mux2_19(.sel(shamt[2]), .in0(temp[19]), .in1(temp[23]), .out(temp[19]));
    Mux_2to1 mux2_20(.sel(shamt[2]), .in0(temp[20]), .in1(temp[24]), .out(temp[20]));
    Mux_2to1 mux2_21(.sel(shamt[2]), .in0(temp[21]), .in1(temp[25]), .out(temp[21]));
    Mux_2to1 mux2_22(.sel(shamt[2]), .in0(temp[22]), .in1(temp[26]), .out(temp[22]));
    Mux_2to1 mux2_23(.sel(shamt[2]), .in0(temp[23]), .in1(temp[27]), .out(temp[23]));
    Mux_2to1 mux2_24(.sel(shamt[2]), .in0(temp[24]), .in1(temp[28]), .out(temp[24]));
    Mux_2to1 mux2_25(.sel(shamt[2]), .in0(temp[25]), .in1(temp[29]), .out(temp[25]));
    Mux_2to1 mux2_26(.sel(shamt[2]), .in0(temp[26]), .in1(temp[30]), .out(temp[26]));
    Mux_2to1 mux2_27(.sel(shamt[2]), .in0(temp[27]), .in1(temp[31]), .out(temp[27]));
    Mux_2to1 mux2_28(.sel(shamt[2]), .in0(temp[28]), .in1(0), .out(temp[28]));
    Mux_2to1 mux2_29(.sel(shamt[2]), .in0(temp[29]), .in1(0), .out(temp[29]));
    Mux_2to1 mux2_30(.sel(shamt[2]), .in0(temp[30]), .in1(0), .out(temp[30]));
    Mux_2to1 mux2_31(.sel(shamt[2]), .in0(temp[31]), .in1(0), .out(temp[31]));

    // 第四層
    Mux_2to1 mux3_0(.sel(shamt[3]), .in0(temp[0]), .in1(temp[8]), .out(temp[0]));
    Mux_2to1 mux3_1(.sel(shamt[3]), .in0(temp[1]), .in1(temp[9]), .out(temp[1]));
    Mux_2to1 mux3_2(.sel(shamt[3]), .in0(temp[2]), .in1(temp[10]), .out(temp[2]));
    Mux_2to1 mux3_3(.sel(shamt[3]), .in0(temp[3]), .in1(temp[11]), .out(temp[3]));
    Mux_2to1 mux3_4(.sel(shamt[3]), .in0(temp[4]), .in1(temp[12]), .out(temp[4]));
    Mux_2to1 mux3_5(.sel(shamt[3]), .in0(temp[5]), .in1(temp[13]), .out(temp[5]));
    Mux_2to1 mux3_6(.sel(shamt[3]), .in0(temp[6]), .in1(temp[14]), .out(temp[6]));
    Mux_2to1 mux3_7(.sel(shamt[3]), .in0(temp[7]), .in1(temp[15]), .out(temp[7]));
    Mux_2to1 mux3_8(.sel(shamt[3]), .in0(temp[8]), .in1(temp[16]), .out(temp[8]));
    Mux_2to1 mux3_9(.sel(shamt[3]), .in0(temp[9]), .in1(temp[17]), .out(temp[9]));
    Mux_2to1 mux3_10(.sel(shamt[3]), .in0(temp[10]), .in1(temp[18]), .out(temp[10]));
    Mux_2to1 mux3_11(.sel(shamt[3]), .in0(temp[11]), .in1(temp[19]), .out(temp[11]));
    Mux_2to1 mux3_12(.sel(shamt[3]), .in0(temp[12]), .in1(temp[20]), .out(temp[12]));
    Mux_2to1 mux3_13(.sel(shamt[3]), .in0(temp[13]), .in1(temp[21]), .out(temp[13]));
    Mux_2to1 mux3_14(.sel(shamt[3]), .in0(temp[14]), .in1(temp[22]), .out(temp[14]));
    Mux_2to1 mux3_15(.sel(shamt[3]), .in0(temp[15]), .in1(temp[23]), .out(temp[15]));
    Mux_2to1 mux3_16(.sel(shamt[3]), .in0(temp[16]), .in1(temp[24]), .out(temp[16]));
    Mux_2to1 mux3_17(.sel(shamt[3]), .in0(temp[17]), .in1(temp[25]), .out(temp[17]));
    Mux_2to1 mux3_18(.sel(shamt[3]), .in0(temp[18]), .in1(temp[26]), .out(temp[18]));
    Mux_2to1 mux3_19(.sel(shamt[3]), .in0(temp[19]), .in1(temp[27]), .out(temp[19]));
    Mux_2to1 mux3_20(.sel(shamt[3]), .in0(temp[20]), .in1(temp[28]), .out(temp[20]));
    Mux_2to1 mux3_21(.sel(shamt[3]), .in0(temp[21]), .in1(temp[29]), .out(temp[21]));
    Mux_2to1 mux3_22(.sel(shamt[3]), .in0(temp[22]), .in1(temp[30]), .out(temp[22]));
    Mux_2to1 mux3_23(.sel(shamt[3]), .in0(temp[23]), .in1(temp[31]), .out(temp[23]));
    Mux_2to1 mux3_24(.sel(shamt[3]), .in0(temp[24]), .in1(0), .out(temp[24]));
    Mux_2to1 mux3_25(.sel(shamt[3]), .in0(temp[25]), .in1(0), .out(temp[25]));
    Mux_2to1 mux3_26(.sel(shamt[3]), .in0(temp[26]), .in1(0), .out(temp[26]));
    Mux_2to1 mux3_27(.sel(shamt[3]), .in0(temp[27]), .in1(0), .out(temp[27]));
    Mux_2to1 mux3_28(.sel(shamt[3]), .in0(temp[28]), .in1(0), .out(temp[28]));
    Mux_2to1 mux3_29(.sel(shamt[3]), .in0(temp[29]), .in1(0), .out(temp[29]));
    Mux_2to1 mux3_30(.sel(shamt[3]), .in0(temp[30]), .in1(0), .out(temp[30]));
    Mux_2to1 mux3_31(.sel(shamt[3]), .in0(temp[31]), .in1(0), .out(temp[31]));

    // 第五層
    Mux_2to1 mux4_0(.sel(shamt[4]), .in0(temp[0]), .in1(temp[16]), .out(temp[0]));
    Mux_2to1 mux4_1(.sel(shamt[4]), .in0(temp[1]), .in1(temp[17]), .out(temp[1]));
    Mux_2to1 mux4_2(.sel(shamt[4]), .in0(temp[2]), .in1(temp[18]), .out(temp[2]));
    Mux_2to1 mux4_3(.sel(shamt[4]), .in0(temp[3]), .in1(temp[19]), .out(temp[3]));
    Mux_2to1 mux4_4(.sel(shamt[4]), .in0(temp[4]), .in1(temp[20]), .out(temp[4]));
    Mux_2to1 mux4_5(.sel(shamt[4]), .in0(temp[5]), .in1(temp[21]), .out(temp[5]));
    Mux_2to1 mux4_6(.sel(shamt[4]), .in0(temp[6]), .in1(temp[22]), .out(temp[6]));
    Mux_2to1 mux4_7(.sel(shamt[4]), .in0(temp[7]), .in1(temp[23]), .out(temp[7]));
    Mux_2to1 mux4_8(.sel(shamt[4]), .in0(temp[8]), .in1(temp[24]), .out(temp[8]));
    Mux_2to1 mux4_9(.sel(shamt[4]), .in0(temp[9]), .in1(temp[25]), .out(temp[9]));
    Mux_2to1 mux4_10(.sel(shamt[4]), .in0(temp[10]), .in1(temp[26]), .out(temp[10]));
    Mux_2to1 mux4_11(.sel(shamt[4]), .in0(temp[11]), .in1(temp[27]), .out(temp[11]));
    Mux_2to1 mux4_12(.sel(shamt[4]), .in0(temp[12]), .in1(temp[28]), .out(temp[12]));
    Mux_2to1 mux4_13(.sel(shamt[4]), .in0(temp[13]), .in1(temp[29]), .out(temp[13]));
    Mux_2to1 mux4_14(.sel(shamt[4]), .in0(temp[14]), .in1(temp[30]), .out(temp[14]));
    Mux_2to1 mux4_15(.sel(shamt[4]), .in0(temp[15]), .in1(temp[31]), .out(temp[15]));
    Mux_2to1 mux4_16(.sel(shamt[4]), .in0(temp[16]), .in1(0), .out(temp[16]));
    Mux_2to1 mux4_17(.sel(shamt[4]), .in0(temp[17]), .in1(0), .out(temp[17]));
    Mux_2to1 mux4_18(.sel(shamt[4]), .in0(temp[18]), .in1(0), .out(temp[18]));
    Mux_2to1 mux4_19(.sel(shamt[4]), .in0(temp[19]), .in1(0), .out(temp[19]));
    Mux_2to1 mux4_20(.sel(shamt[4]), .in0(temp[20]), .in1(0), .out(temp[20]));
    Mux_2to1 mux4_21(.sel(shamt[4]), .in0(temp[21]), .in1(0), .out(temp[21]));
    Mux_2to1 mux4_22(.sel(shamt[4]), .in0(temp[22]), .in1(0), .out(temp[22]));
    Mux_2to1 mux4_23(.sel(shamt[4]), .in0(temp[23]), .in1(0), .out(temp[23]));
    Mux_2to1 mux4_24(.sel(shamt[4]), .in0(temp[24]), .in1(0), .out(temp[24]));
    Mux_2to1 mux4_25(.sel(shamt[4]), .in0(temp[25]), .in1(0), .out(temp[25]));
    Mux_2to1 mux4_26(.sel(shamt[4]), .in0(temp[26]), .in1(0), .out(temp[26]));
    Mux_2to1 mux4_27(.sel(shamt[4]), .in0(temp[27]), .in1(0), .out(temp[27]));
    Mux_2to1 mux4_28(.sel(shamt[4]), .in0(temp[28]), .in1(0), .out(temp[28]));
    Mux_2to1 mux4_29(.sel(shamt[4]), .in0(temp[29]), .in1(0), .out(temp[29]));
    Mux_2to1 mux4_30(.sel(shamt[4]), .in0(temp[30]), .in1(0), .out(temp[30]));
    Mux_2to1 mux4_31(.sel(shamt[4]), .in0(temp[31]), .in1(0), .out(temp[31]));
endmodule
/*
    Title: 32 Bit Barrel Shifter
    Input port:
        1. a : 資料
        2. shamt : 移位量

    Output port:
        1. result: 移位後資料
*/
`timescale 1ns/ 1ns
module Shifter(Signal, a, shamt, result);
    input [5:0] Signal;
    input wire [31:0] a;
    input wire [4:0] shamt;
    output [31:0] result;

    wire [31:0] temp1, temp2, temp3, temp4;

    // 第一層
    Mux_2to1 mux0(.sel(shamt[0]), .in0(a[0]), .in1(a[1]), .out(temp1[0]));
    Mux_2to1 mux1(.sel(shamt[0]), .in0(a[1]), .in1(a[2]), .out(temp1[1]));
    Mux_2to1 mux2(.sel(shamt[0]), .in0(a[2]), .in1(a[3]), .out(temp1[2]));
    Mux_2to1 mux3(.sel(shamt[0]), .in0(a[3]), .in1(a[4]), .out(temp1[3]));
    Mux_2to1 mux4(.sel(shamt[0]), .in0(a[4]), .in1(a[5]), .out(temp1[4]));
    Mux_2to1 mux5(.sel(shamt[0]), .in0(a[5]), .in1(a[6]), .out(temp1[5]));
    Mux_2to1 mux6(.sel(shamt[0]), .in0(a[6]), .in1(a[7]), .out(temp1[6]));
    Mux_2to1 mux7(.sel(shamt[0]), .in0(a[7]), .in1(a[8]), .out(temp1[7]));
    Mux_2to1 mux8(.sel(shamt[0]), .in0(a[8]), .in1(a[9]), .out(temp1[8]));
    Mux_2to1 mux9(.sel(shamt[0]), .in0(a[9]), .in1(a[10]), .out(temp1[9]));
    Mux_2to1 mux10(.sel(shamt[0]), .in0(a[10]), .in1(a[11]), .out(temp1[10]));
    Mux_2to1 mux11(.sel(shamt[0]), .in0(a[11]), .in1(a[12]), .out(temp1[11]));
    Mux_2to1 mux12(.sel(shamt[0]), .in0(a[12]), .in1(a[13]), .out(temp1[12]));
    Mux_2to1 mux13(.sel(shamt[0]), .in0(a[13]), .in1(a[14]), .out(temp1[13]));
    Mux_2to1 mux14(.sel(shamt[0]), .in0(a[14]), .in1(a[15]), .out(temp1[14]));
    Mux_2to1 mux15(.sel(shamt[0]), .in0(a[15]), .in1(a[16]), .out(temp1[15]));
    Mux_2to1 mux16(.sel(shamt[0]), .in0(a[16]), .in1(a[17]), .out(temp1[16]));
    Mux_2to1 mux17(.sel(shamt[0]), .in0(a[17]), .in1(a[18]), .out(temp1[17]));
    Mux_2to1 mux18(.sel(shamt[0]), .in0(a[18]), .in1(a[19]), .out(temp1[18]));
    Mux_2to1 mux19(.sel(shamt[0]), .in0(a[19]), .in1(a[20]), .out(temp1[19]));
    Mux_2to1 mux20(.sel(shamt[0]), .in0(a[20]), .in1(a[21]), .out(temp1[20]));
    Mux_2to1 mux21(.sel(shamt[0]), .in0(a[21]), .in1(a[22]), .out(temp1[21]));
    Mux_2to1 mux22(.sel(shamt[0]), .in0(a[22]), .in1(a[23]), .out(temp1[22]));
    Mux_2to1 mux23(.sel(shamt[0]), .in0(a[23]), .in1(a[24]), .out(temp1[23]));
    Mux_2to1 mux24(.sel(shamt[0]), .in0(a[24]), .in1(a[25]), .out(temp1[24]));
    Mux_2to1 mux25(.sel(shamt[0]), .in0(a[25]), .in1(a[26]), .out(temp1[25]));
    Mux_2to1 mux26(.sel(shamt[0]), .in0(a[26]), .in1(a[27]), .out(temp1[26]));
    Mux_2to1 mux27(.sel(shamt[0]), .in0(a[27]), .in1(a[28]), .out(temp1[27]));
    Mux_2to1 mux28(.sel(shamt[0]), .in0(a[28]), .in1(a[29]), .out(temp1[28]));
    Mux_2to1 mux29(.sel(shamt[0]), .in0(a[29]), .in1(a[30]), .out(temp1[29]));
    Mux_2to1 mux30(.sel(shamt[0]), .in0(a[30]), .in1(a[31]), .out(temp1[30]));
    Mux_2to1 mux31(.sel(shamt[0]), .in0(a[31]), .in1(0), .out(temp1[31]));

    // 第二層
    Mux_2to1 mux1_0(.sel(shamt[1]), .in0(temp1[0]), .in1(temp1[2]), .out(temp2[0]));
    Mux_2to1 mux1_1(.sel(shamt[1]), .in0(temp1[1]), .in1(temp1[3]), .out(temp2[1]));
    Mux_2to1 mux1_2(.sel(shamt[1]), .in0(temp1[2]), .in1(temp1[4]), .out(temp2[2]));
    Mux_2to1 mux1_3(.sel(shamt[1]), .in0(temp1[3]), .in1(temp1[5]), .out(temp2[3]));
    Mux_2to1 mux1_4(.sel(shamt[1]), .in0(temp1[4]), .in1(temp1[6]), .out(temp2[4]));
    Mux_2to1 mux1_5(.sel(shamt[1]), .in0(temp1[5]), .in1(temp1[7]), .out(temp2[5]));
    Mux_2to1 mux1_6(.sel(shamt[1]), .in0(temp1[6]), .in1(temp1[8]), .out(temp2[6]));
    Mux_2to1 mux1_7(.sel(shamt[1]), .in0(temp1[7]), .in1(temp1[9]), .out(temp2[7]));
    Mux_2to1 mux1_8(.sel(shamt[1]), .in0(temp1[8]), .in1(temp1[10]), .out(temp2[8]));
    Mux_2to1 mux1_9(.sel(shamt[1]), .in0(temp1[9]), .in1(temp1[11]), .out(temp2[9]));
    Mux_2to1 mux1_10(.sel(shamt[1]), .in0(temp1[10]), .in1(temp1[12]), .out(temp2[10]));
    Mux_2to1 mux1_11(.sel(shamt[1]), .in0(temp1[11]), .in1(temp1[13]), .out(temp2[11]));
    Mux_2to1 mux1_12(.sel(shamt[1]), .in0(temp1[12]), .in1(temp1[14]), .out(temp2[12]));
    Mux_2to1 mux1_13(.sel(shamt[1]), .in0(temp1[13]), .in1(temp1[15]), .out(temp2[13]));
    Mux_2to1 mux1_14(.sel(shamt[1]), .in0(temp1[14]), .in1(temp1[16]), .out(temp2[14]));
    Mux_2to1 mux1_15(.sel(shamt[1]), .in0(temp1[15]), .in1(temp1[17]), .out(temp2[15]));
    Mux_2to1 mux1_16(.sel(shamt[1]), .in0(temp1[16]), .in1(temp1[18]), .out(temp2[16]));
    Mux_2to1 mux1_17(.sel(shamt[1]), .in0(temp1[17]), .in1(temp1[19]), .out(temp2[17]));
    Mux_2to1 mux1_18(.sel(shamt[1]), .in0(temp1[18]), .in1(temp1[20]), .out(temp2[18]));
    Mux_2to1 mux1_19(.sel(shamt[1]), .in0(temp1[19]), .in1(temp1[21]), .out(temp2[19]));
    Mux_2to1 mux1_20(.sel(shamt[1]), .in0(temp1[20]), .in1(temp1[22]), .out(temp2[20]));
    Mux_2to1 mux1_21(.sel(shamt[1]), .in0(temp1[21]), .in1(temp1[23]), .out(temp2[21]));
    Mux_2to1 mux1_22(.sel(shamt[1]), .in0(temp1[22]), .in1(temp1[24]), .out(temp2[22]));
    Mux_2to1 mux1_23(.sel(shamt[1]), .in0(temp1[23]), .in1(temp1[25]), .out(temp2[23]));
    Mux_2to1 mux1_24(.sel(shamt[1]), .in0(temp1[24]), .in1(temp1[26]), .out(temp2[24]));
    Mux_2to1 mux1_25(.sel(shamt[1]), .in0(temp1[25]), .in1(temp1[27]), .out(temp2[25]));
    Mux_2to1 mux1_26(.sel(shamt[1]), .in0(temp1[26]), .in1(temp1[28]), .out(temp2[26]));
    Mux_2to1 mux1_27(.sel(shamt[1]), .in0(temp1[27]), .in1(temp1[29]), .out(temp2[27]));
    Mux_2to1 mux1_28(.sel(shamt[1]), .in0(temp1[28]), .in1(temp1[30]), .out(temp2[28]));
    Mux_2to1 mux1_29(.sel(shamt[1]), .in0(temp1[29]), .in1(temp1[31]), .out(temp2[29]));
    Mux_2to1 mux1_30(.sel(shamt[1]), .in0(temp1[30]), .in1(0), .out(temp2[30]));
    Mux_2to1 mux1_31(.sel(shamt[1]), .in0(temp1[31]), .in1(0), .out(temp2[31]));

    // 第三層
    Mux_2to1 mux2_0(.sel(shamt[2]), .in0(temp2[0]), .in1(temp2[4]), .out(temp3[0]));
    Mux_2to1 mux2_1(.sel(shamt[2]), .in0(temp2[1]), .in1(temp2[5]), .out(temp3[1]));
    Mux_2to1 mux2_2(.sel(shamt[2]), .in0(temp2[2]), .in1(temp2[6]), .out(temp3[2]));
    Mux_2to1 mux2_3(.sel(shamt[2]), .in0(temp2[3]), .in1(temp2[7]), .out(temp3[3]));
    Mux_2to1 mux2_4(.sel(shamt[2]), .in0(temp2[4]), .in1(temp2[8]), .out(temp3[4]));
    Mux_2to1 mux2_5(.sel(shamt[2]), .in0(temp2[5]), .in1(temp2[9]), .out(temp3[5]));
    Mux_2to1 mux2_6(.sel(shamt[2]), .in0(temp2[6]), .in1(temp2[10]), .out(temp3[6]));
    Mux_2to1 mux2_7(.sel(shamt[2]), .in0(temp2[7]), .in1(temp2[11]), .out(temp3[7]));
    Mux_2to1 mux2_8(.sel(shamt[2]), .in0(temp2[8]), .in1(temp2[12]), .out(temp3[8]));
    Mux_2to1 mux2_9(.sel(shamt[2]), .in0(temp2[9]), .in1(temp2[13]), .out(temp3[9]));
    Mux_2to1 mux2_10(.sel(shamt[2]), .in0(temp2[10]), .in1(temp2[14]), .out(temp3[10]));
    Mux_2to1 mux2_11(.sel(shamt[2]), .in0(temp2[11]), .in1(temp2[15]), .out(temp3[11]));
    Mux_2to1 mux2_12(.sel(shamt[2]), .in0(temp2[12]), .in1(temp2[16]), .out(temp3[12]));
    Mux_2to1 mux2_13(.sel(shamt[2]), .in0(temp2[13]), .in1(temp2[17]), .out(temp3[13]));
    Mux_2to1 mux2_14(.sel(shamt[2]), .in0(temp2[14]), .in1(temp2[18]), .out(temp3[14]));
    Mux_2to1 mux2_15(.sel(shamt[2]), .in0(temp2[15]), .in1(temp2[19]), .out(temp3[15]));
    Mux_2to1 mux2_16(.sel(shamt[2]), .in0(temp2[16]), .in1(temp2[20]), .out(temp3[16]));
    Mux_2to1 mux2_17(.sel(shamt[2]), .in0(temp2[17]), .in1(temp2[21]), .out(temp3[17]));
    Mux_2to1 mux2_18(.sel(shamt[2]), .in0(temp2[18]), .in1(temp2[22]), .out(temp3[18]));
    Mux_2to1 mux2_19(.sel(shamt[2]), .in0(temp2[19]), .in1(temp2[23]), .out(temp3[19]));
    Mux_2to1 mux2_20(.sel(shamt[2]), .in0(temp2[20]), .in1(temp2[24]), .out(temp3[20]));
    Mux_2to1 mux2_21(.sel(shamt[2]), .in0(temp2[21]), .in1(temp2[25]), .out(temp3[21]));
    Mux_2to1 mux2_22(.sel(shamt[2]), .in0(temp2[22]), .in1(temp2[26]), .out(temp3[22]));
    Mux_2to1 mux2_23(.sel(shamt[2]), .in0(temp2[23]), .in1(temp2[27]), .out(temp3[23]));
    Mux_2to1 mux2_24(.sel(shamt[2]), .in0(temp2[24]), .in1(temp2[28]), .out(temp3[24]));
    Mux_2to1 mux2_25(.sel(shamt[2]), .in0(temp2[25]), .in1(temp2[29]), .out(temp3[25]));
    Mux_2to1 mux2_26(.sel(shamt[2]), .in0(temp2[26]), .in1(temp2[30]), .out(temp3[26]));
    Mux_2to1 mux2_27(.sel(shamt[2]), .in0(temp2[27]), .in1(temp2[31]), .out(temp3[27]));
    Mux_2to1 mux2_28(.sel(shamt[2]), .in0(temp2[28]), .in1(0), .out(temp3[28]));
    Mux_2to1 mux2_29(.sel(shamt[2]), .in0(temp2[29]), .in1(0), .out(temp3[29]));
    Mux_2to1 mux2_30(.sel(shamt[2]), .in0(temp2[30]), .in1(0), .out(temp3[30]));
    Mux_2to1 mux2_31(.sel(shamt[2]), .in0(temp2[31]), .in1(0), .out(temp3[31]));

    // 第四層
    Mux_2to1 mux3_0(.sel(shamt[3]), .in0(temp3[0]), .in1(temp3[8]), .out(temp4[0]));
    Mux_2to1 mux3_1(.sel(shamt[3]), .in0(temp3[1]), .in1(temp3[9]), .out(temp4[1]));
    Mux_2to1 mux3_2(.sel(shamt[3]), .in0(temp3[2]), .in1(temp3[10]), .out(temp4[2]));
    Mux_2to1 mux3_3(.sel(shamt[3]), .in0(temp3[3]), .in1(temp3[11]), .out(temp4[3]));
    Mux_2to1 mux3_4(.sel(shamt[3]), .in0(temp3[4]), .in1(temp3[12]), .out(temp4[4]));
    Mux_2to1 mux3_5(.sel(shamt[3]), .in0(temp3[5]), .in1(temp3[13]), .out(temp4[5]));
    Mux_2to1 mux3_6(.sel(shamt[3]), .in0(temp3[6]), .in1(temp3[14]), .out(temp4[6]));
    Mux_2to1 mux3_7(.sel(shamt[3]), .in0(temp3[7]), .in1(temp3[15]), .out(temp4[7]));
    Mux_2to1 mux3_8(.sel(shamt[3]), .in0(temp3[8]), .in1(temp3[16]), .out(temp4[8]));
    Mux_2to1 mux3_9(.sel(shamt[3]), .in0(temp3[9]), .in1(temp3[17]), .out(temp4[9]));
    Mux_2to1 mux3_10(.sel(shamt[3]), .in0(temp3[10]), .in1(temp3[18]), .out(temp4[10]));
    Mux_2to1 mux3_11(.sel(shamt[3]), .in0(temp3[11]), .in1(temp3[19]), .out(temp4[11]));
    Mux_2to1 mux3_12(.sel(shamt[3]), .in0(temp3[12]), .in1(temp3[20]), .out(temp4[12]));
    Mux_2to1 mux3_13(.sel(shamt[3]), .in0(temp3[13]), .in1(temp3[21]), .out(temp4[13]));
    Mux_2to1 mux3_14(.sel(shamt[3]), .in0(temp3[14]), .in1(temp3[22]), .out(temp4[14]));
    Mux_2to1 mux3_15(.sel(shamt[3]), .in0(temp3[15]), .in1(temp3[23]), .out(temp4[15]));
    Mux_2to1 mux3_16(.sel(shamt[3]), .in0(temp3[16]), .in1(temp3[24]), .out(temp4[16]));
    Mux_2to1 mux3_17(.sel(shamt[3]), .in0(temp3[17]), .in1(temp3[25]), .out(temp4[17]));
    Mux_2to1 mux3_18(.sel(shamt[3]), .in0(temp3[18]), .in1(temp3[26]), .out(temp4[18]));
    Mux_2to1 mux3_19(.sel(shamt[3]), .in0(temp3[19]), .in1(temp3[27]), .out(temp4[19]));
    Mux_2to1 mux3_20(.sel(shamt[3]), .in0(temp3[20]), .in1(temp3[28]), .out(temp4[20]));
    Mux_2to1 mux3_21(.sel(shamt[3]), .in0(temp3[21]), .in1(temp3[29]), .out(temp4[21]));
    Mux_2to1 mux3_22(.sel(shamt[3]), .in0(temp3[22]), .in1(temp3[30]), .out(temp4[22]));
    Mux_2to1 mux3_23(.sel(shamt[3]), .in0(temp3[23]), .in1(temp3[31]), .out(temp4[23]));
    Mux_2to1 mux3_24(.sel(shamt[3]), .in0(temp3[24]), .in1(0), .out(temp4[24]));
    Mux_2to1 mux3_25(.sel(shamt[3]), .in0(temp3[25]), .in1(0), .out(temp4[25]));
    Mux_2to1 mux3_26(.sel(shamt[3]), .in0(temp3[26]), .in1(0), .out(temp4[26]));
    Mux_2to1 mux3_27(.sel(shamt[3]), .in0(temp3[27]), .in1(0), .out(temp4[27]));
    Mux_2to1 mux3_28(.sel(shamt[3]), .in0(temp3[28]), .in1(0), .out(temp4[28]));
    Mux_2to1 mux3_29(.sel(shamt[3]), .in0(temp3[29]), .in1(0), .out(temp4[29]));
    Mux_2to1 mux3_30(.sel(shamt[3]), .in0(temp3[30]), .in1(0), .out(temp4[30]));
    Mux_2to1 mux3_31(.sel(shamt[3]), .in0(temp3[31]), .in1(0), .out(temp4[31]));

    // 第五層
    Mux_2to1 mux4_0(.sel(shamt[4]), .in0(temp4[0]), .in1(temp4[16]), .out(result[0]));
    Mux_2to1 mux4_1(.sel(shamt[4]), .in0(temp4[1]), .in1(temp4[17]), .out(result[1]));
    Mux_2to1 mux4_2(.sel(shamt[4]), .in0(temp4[2]), .in1(temp4[18]), .out(result[2]));
    Mux_2to1 mux4_3(.sel(shamt[4]), .in0(temp4[3]), .in1(temp4[19]), .out(result[3]));
    Mux_2to1 mux4_4(.sel(shamt[4]), .in0(temp4[4]), .in1(temp4[20]), .out(result[4]));
    Mux_2to1 mux4_5(.sel(shamt[4]), .in0(temp4[5]), .in1(temp4[21]), .out(result[5]));
    Mux_2to1 mux4_6(.sel(shamt[4]), .in0(temp4[6]), .in1(temp4[22]), .out(result[6]));
    Mux_2to1 mux4_7(.sel(shamt[4]), .in0(temp4[7]), .in1(temp4[23]), .out(result[7]));
    Mux_2to1 mux4_8(.sel(shamt[4]), .in0(temp4[8]), .in1(temp4[24]), .out(result[8]));
    Mux_2to1 mux4_9(.sel(shamt[4]), .in0(temp4[9]), .in1(temp4[25]), .out(result[9]));
    Mux_2to1 mux4_10(.sel(shamt[4]), .in0(temp4[10]), .in1(temp4[26]), .out(result[10]));
    Mux_2to1 mux4_11(.sel(shamt[4]), .in0(temp4[11]), .in1(temp4[27]), .out(result[11]));
    Mux_2to1 mux4_12(.sel(shamt[4]), .in0(temp4[12]), .in1(temp4[28]), .out(result[12]));
    Mux_2to1 mux4_13(.sel(shamt[4]), .in0(temp4[13]), .in1(temp4[29]), .out(result[13]));
    Mux_2to1 mux4_14(.sel(shamt[4]), .in0(temp4[14]), .in1(temp4[30]), .out(result[14]));
    Mux_2to1 mux4_15(.sel(shamt[4]), .in0(temp4[15]), .in1(temp4[31]), .out(result[15]));
    Mux_2to1 mux4_16(.sel(shamt[4]), .in0(temp4[16]), .in1(0), .out(result[16]));
    Mux_2to1 mux4_17(.sel(shamt[4]), .in0(temp4[17]), .in1(0), .out(result[17]));
    Mux_2to1 mux4_18(.sel(shamt[4]), .in0(temp4[18]), .in1(0), .out(result[18]));
    Mux_2to1 mux4_19(.sel(shamt[4]), .in0(temp4[19]), .in1(0), .out(result[19]));
    Mux_2to1 mux4_20(.sel(shamt[4]), .in0(temp4[20]), .in1(0), .out(result[20]));
    Mux_2to1 mux4_21(.sel(shamt[4]), .in0(temp4[21]), .in1(0), .out(result[21]));
    Mux_2to1 mux4_22(.sel(shamt[4]), .in0(temp4[22]), .in1(0), .out(result[22]));
    Mux_2to1 mux4_23(.sel(shamt[4]), .in0(temp4[23]), .in1(0), .out(result[23]));
    Mux_2to1 mux4_24(.sel(shamt[4]), .in0(temp4[24]), .in1(0), .out(result[24]));
    Mux_2to1 mux4_25(.sel(shamt[4]), .in0(temp4[25]), .in1(0), .out(result[25]));
    Mux_2to1 mux4_26(.sel(shamt[4]), .in0(temp4[26]), .in1(0), .out(result[26]));
    Mux_2to1 mux4_27(.sel(shamt[4]), .in0(temp4[27]), .in1(0), .out(result[27]));
    Mux_2to1 mux4_28(.sel(shamt[4]), .in0(temp4[28]), .in1(0), .out(result[28]));
    Mux_2to1 mux4_29(.sel(shamt[4]), .in0(temp4[29]), .in1(0), .out(result[29]));
    Mux_2to1 mux4_30(.sel(shamt[4]), .in0(temp4[30]), .in1(0), .out(result[30]));
    Mux_2to1 mux4_31(.sel(shamt[4]), .in0(temp4[31]), .in1(0), .out(result[31]));
endmodule
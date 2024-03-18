module decoder_2_4(E , In , Out);

    input E;    //Enable
    input [1:0] In;    //input(2bits)
    output [3:0] Out;   //output(4bits)
    wire [3:0] Out;    //4bits�s���u

    assign Out = E ? 1'b1 << In : 4'h0;    //E��1�ɿ�X1�줸�G�i���In�Ӧ줸�A��0�ɿ�X0

endmodule

module decoder_3_8(E , In , Out);

    input E;    //enable
    input [2:0] In;    //input(3bits)
    output [7:0] Out;    //output(8bits)
    wire E1, G1 , G2;    //�ŧi�T��K�ѽX�����P��uE1(E1=E')
                         //�@�@�G��|�ѽX��1���P��uG1
                         //�@�@�G��|�ѽX��2���P��uG2
    
    not u1(E1, In[2]);    //E1=�P��uE1�P��JIn[2]�z�LNOT�h�s��
    and a1(G1, E, In[2]);    //G1=�P��uE�P��JIn[2]�z�LAND�h�s��
    and a2(G2, E, E1);    //G2=�P��uE�P��JE1�z�LAND�h�s��
    decoder_2_4 block2(G1 , In[1 : 0] , Out[3 : 0]);    ////Out[3:0]=G1��In[0:1]��Jdecoder_2_4
    decoder_2_4 block1(G2 , In[1 : 0] , Out[7 : 4]);    //Out[7:4]=G2��In[0:1]��Jdecoder_2_4
    

endmodule
  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vfmadd231ss %xmm3, %xmm1, %xmm2   #  1     0     5      OPC=vfmadd231ss_xmm_xmm_xmm  
  callq .move_128_064_xmm1_r12_r13  #  2     0x5   5      OPC=callq_label              
  vmovss %xmm2, %xmm2, %xmm1        #  3     0xa   4      OPC=vmovss_xmm_xmm_xmm       
  callq .move_064_128_r12_r13_xmm1  #  4     0xe   5      OPC=callq_label              
  movss %xmm2, %xmm1                #  5     0x13  4      OPC=movss_xmm_xmm            
  retq                              #  6     0x17  1      OPC=retq                     
                                                                                       
.size target, .-target

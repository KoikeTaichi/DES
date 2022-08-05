//鍵
int key64[]={1, 0, 0, 1, 1, 1, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 0, 1, 0, 1, 0, 0, 1, 1, 1, 1, 0, 1, 1, 1, 0, 1, 0, 1, 0, 0, 0, 1, 1, 1, 0, 0, 1};
//平文
int hira[]={0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0};
//初期転置
int shoki[]={58, 50, 42, 34, 26, 18, 10, 2, 60, 52, 44, 36, 28, 20, 12, 4, 62, 54, 46, 38, 30, 22, 14, 6, 64, 56, 48, 40, 32, 24, 16, 8, 57, 49, 41, 33, 25, 17, 9, 1, 59, 51, 43, 35, 27, 19, 11, 3, 61, 53, 45, 37, 29, 21, 13, 5, 63, 55, 47, 39, 31, 23, 15, 7};
//最終転置
int saishu[]={40, 8, 48, 16, 56, 24, 64, 32, 39, 7, 47, 15, 55, 23, 63, 31, 38, 6, 46, 14, 54, 22, 62, 30, 37, 5, 45, 13, 53, 21, 61, 29, 36, 4, 44, 12, 52, 20, 60, 28, 35, 3, 43, 11, 51, 19, 59, 27, 34, 2, 42, 10, 50, 18, 58, 26, 33, 1, 41, 9, 49, 17, 57, 25};
//転置P
int P[]={16, 7, 20, 21, 29, 12, 28, 17, 1, 15, 23, 26, 5, 18, 31, 10, 2, 8, 24, 14, 32, 27, 3, 9, 19, 13, 30, 6, 22, 11, 4, 25};
//拡大転置E
int E[]={32, 1, 2, 3, 4, 5, 4, 5, 6, 7, 8, 9, 8, 9, 10, 11, 12, 13, 12, 13, 14, 15, 16, 17, 16, 17, 18, 19, 20, 21, 20, 21, 22, 23, 24, 25, 24, 25, 26, 27, 28, 29, 28, 29, 30, 31, 32, 1};
//転置PC1
int PC1[]={57, 49, 41, 33, 25, 17, 9, 1, 58, 50, 42, 34, 26, 18, 10, 2, 59, 51, 43, 35, 27, 19, 11, 3, 60, 52, 44, 36, 63, 55, 47, 39, 31, 23, 15, 7, 62, 54, 46, 38, 30, 22, 14, 6, 61, 53, 45, 37, 29, 21, 13, 5, 28, 20, 12, 4};
//転置PC2
int PC2[]={14, 17, 11, 24, 1, 5, 3, 28, 15, 6, 21, 10, 23, 19, 12, 4, 26, 8, 16, 7, 27, 20, 13, 2, 41, 52, 31, 37, 47, 55, 30, 40, 51, 45, 33, 48, 44, 49, 39, 56, 34, 53, 46, 42, 50, 36, 29, 32};
//SBOX
int S[][]={{14, 4, 13, 1, 2, 15, 11, 8, 3, 10, 6, 12, 5, 9, 0, 7, 0, 15, 7, 4, 14, 2, 13, 1, 10, 6, 12, 11, 9, 5, 3, 8, 4, 1, 14, 8, 13, 6, 2, 11, 15, 12, 9, 7, 3, 10, 5, 0, 15, 12, 8, 2, 4, 9, 1, 7, 5, 11, 3, 14, 10, 0, 6, 13},
  {15, 1, 8, 14, 6, 11, 3, 4, 9, 7, 2, 13, 12, 0, 5, 10, 3, 13, 4, 7, 15, 2, 8, 14, 12, 0, 1, 10, 6, 9, 11, 5, 0, 14, 7, 11, 10, 4, 13, 1, 5, 8, 12, 6, 9, 3, 2, 15, 13, 8, 10, 1, 3, 15, 4, 2, 11, 6, 7, 12, 0, 5, 14, 9},
  {10, 0, 9, 14, 6, 3, 15, 5, 1, 13, 12, 7, 11, 4, 2, 8, 13, 7, 0, 9, 3, 4, 6, 10, 2, 8, 5, 14, 12, 11, 15, 1, 13, 6, 4, 9, 8, 15, 3, 0, 11, 1, 2, 12, 5, 10, 14, 7, 1, 10, 13, 0, 6, 9, 8, 7, 4, 15, 14, 3, 11, 5, 2, 12},
  {7, 13, 14, 3, 0, 6, 9, 10, 1, 2, 8, 5, 11, 12, 4, 15, 13, 8, 11, 5, 6, 15, 0, 3, 4, 7, 2, 12, 1, 10, 14, 9, 10, 6, 9, 0, 12, 11, 7, 13, 15, 1, 3, 14, 5, 2, 8, 4, 3, 15, 0, 6, 10, 1, 13, 8, 9, 4, 5, 11, 12, 7, 2, 14},
  {2, 12, 4, 1, 7, 10, 11, 6, 8, 5, 3, 15, 13, 0, 14, 9, 14, 11, 2, 12, 4, 7, 13, 1, 5, 0, 15, 10, 3, 9, 8, 6, 4, 2, 1, 11, 10, 13, 7, 8, 15, 9, 12, 5, 6, 3, 0, 14, 11, 8, 12, 7, 1, 14, 2, 13, 6, 15, 0, 9, 10, 4, 5, 3},
  {12, 1, 10, 15, 9, 2, 6, 8, 0, 13, 3, 4, 14, 7, 5, 11, 10, 15, 4, 2, 7, 12, 9, 5, 6, 1, 13, 14, 0, 11, 3, 8, 9, 14, 15, 5, 2, 8, 12, 3, 7, 0, 4, 10, 1, 13, 11, 6, 4, 3, 2, 12, 9, 5, 15, 10, 11, 14, 1, 7, 6, 0, 8, 13},
  {4, 11, 2, 14, 15, 0, 8, 13, 3, 12, 9, 7, 5, 10, 6, 1, 13, 0, 11, 7, 4, 9, 1, 10, 14, 3, 5, 12, 2, 15, 8, 6, 1, 4, 11, 13, 12, 3, 7, 14, 10, 15, 6, 8, 0, 5, 9, 2, 6, 11, 13, 8, 1, 4, 10, 7, 9, 5, 0, 15, 14, 2, 3, 12},
  {13, 2, 8, 4, 6, 15, 11, 1, 10, 9, 3, 14, 5, 0, 12, 7, 1, 15, 13, 8, 10, 3, 7, 4, 12, 5, 6, 11, 0, 14, 9, 2, 7, 11, 4, 1, 9, 12, 14, 2, 0, 6, 10, 13, 15, 3, 5, 8, 2, 1, 14, 7, 4, 10, 8, 13, 15, 12, 9, 0, 3, 5, 6, 11}
};
int tmphira[]=new int[64];
int tmphira2[][]=new int[2][32];
int tmphira3[]=new int[48];
int tmphira4[][]=new int[8][6];
int tmphira5[]=new int[32];
int tmphira6[]=new int[32];
int tmphira7[]=new int[32];
int tmpkey[]=new int[56];
int tmpkey2[][]=new int[2][28];
int tmpkey3[]=new int[48];
int tmpkey4[][]=new int[8][6];
int tmp[]=new int[10];
int tmp2[][]=new int[8][6];
int tmp3[][]=new int[8][2];
int tmp4[][]=new int[8][4];
int ango[]=new int[64];
int shift=0;
String[] hidari=new String[16];
String[] migi=new String[16];
void setup() {
  for (int i=0; i<shoki.length; i++) {
    tmphira[i]=hira[shoki[i]-1];//初期転置
  }
  for (int i=0; i<tmphira.length; i++) {
    //32ビットずつに分割
    if (i<32) {
      tmphira2[0][i]=tmphira[i];
    } else {
      tmphira2[1][i-32]=tmphira[i];
    }
  }
  for (int i=0; i<PC1.length; i++) {
    tmpkey[i]=key64[PC1[i]-1];//PC1で転置
  }
  for (int i=0; i<tmpkey.length; i++) {
    if (i<28) {
      tmpkey2[0][i]=tmpkey[i];
    } else {
      tmpkey2[1][i-28]=tmpkey[i];
    }
  }
  for (int i=0; i<16; i++) {
    switch(i) {
    case 0:
      shift=1;
    case 1:
      shift=1;
      break;
    case 2:
      shift=2;
    case 3:
      shift=2;
    case 4:
      shift=2;
    case 5:
      shift=2;
    case 6:
      shift=2;
    case 7:
      shift=2;
      break;
    case 8:
      shift=1;
      break;
    case 9:
      shift=2;
    case 10:
      shift=2;
    case 11:
      shift=2;
    case 12:
      shift=2;
    case 13:
      shift=2;
    case 14:
      shift=2;
      break;
    case 15:
      shift=1;
      break;
    }
    for (int j=0; j<tmpkey2[0].length; j++) {
      if (j<shift) {
        tmp[j]=tmpkey2[0][j];
        tmp[j+2]=tmpkey2[1][j];
      } else {
        tmpkey2[0][j-shift]=tmpkey2[0][j];
        tmpkey2[1][j-shift]=tmpkey2[1][j];
      }
      if (j>=tmpkey2[0].length-1) {
        for (int k=0; k<shift; k++) {
          tmpkey2[0][28-shift+k]=tmp[k];
          tmpkey2[1][28-shift+k]=tmp[k+2];
        }
      }
    }

    for (int j=0; j<tmpkey.length; j++) {
      if (j<28) {
        tmpkey[j]=tmpkey2[0][j];
      } else {
        tmpkey[j]=tmpkey2[1][j-28];
      }
    }
    for (int j=0; j<PC2.length; j++) {
      tmpkey3[j]=tmpkey[PC2[j]-1];
    }
    for (int j=0; j<tmphira3.length; j++) {
      tmphira3[j]=tmphira2[1][E[j]-1];
    }
    for (int j=0; j<tmpkey3.length; j++) {
      tmpkey4[(int)j/6][j%6]=tmpkey3[j];
    }
    for (int j=0; j<tmphira3.length; j++) {
      tmphira4[(int)j/6][j%6]=tmphira3[j];
    }
    for (int j=0; j<tmphira4.length; j++) {
      for (int k=0; k<tmphira4[0].length; k++) {
        if (tmpkey4[j][k]-tmphira4[j][k]!=0) {
          tmp2[j][k]=1;
        } else {
          tmp2[j][k]=0;
        }
      }
    }
    for (int j=0; j<tmp2.length; j++) {
      tmp3[j][0]=tmp2[j][0]*2+tmp2[j][5];
      tmp3[j][1]=tmp2[j][1]*8+tmp2[j][2]*4+tmp2[j][3]*2+tmp2[j][4];
    }
    for (int j=0; j<tmp4.length; j++) {
      tmp[4]=S[j][tmp3[j][0]*16+tmp3[j][1]];
      for (int k=0; k<tmp4[0].length; k++) {
        tmp4[j][k]=(int)(S[j][tmp3[j][0]*16+tmp3[j][1]]/(pow(2, tmp4[0].length-k-1)));
        if (tmp4[j][k]!=0) {
          S[j][tmp3[j][0]*16+tmp3[j][1]]-=pow(2, tmp4[0].length-k-1);
        }
      }
      S[j][tmp3[j][0]*16+tmp3[j][1]]=tmp[4];
    }
    for (int j=0; j<tmp4.length; j++) {
      for (int k=0; k<tmp4[0].length; k++) {
        tmphira5[j*4+k]=tmp4[j][k];
      }
    }
    for (int j=0; j<P.length; j++) {
      tmphira6[j]=tmphira5[P[j]-1];
    }
    for (int j=0; j<32; j++) {
      tmphira7[j]=tmphira2[0][j];
      tmphira2[0][j]=tmphira2[1][j];
    }
    for (int j=0; j<tmphira7.length; j++) {
      if (tmphira7[j]-tmphira6[j]!=0) {
        tmphira2[1][j]=1;
      } else {
        tmphira2[1][j]=0;
      }
    }
    /*for (int j=0; j<tmphira2[0].length; j++) {
     print(tmphira2[1][j]);
     }
     println();
     println("00111000010100101100101010101011");
     for (int j=0; j<tmphira2[0].length; j++) {
     print(tmphira2[0][j]);
     }
     println();
     println("11110110111100110111000001111010");*/
  }
  for (int i=0; i<tmphira.length; i++) {
    if (i<32) {
      tmphira[i]=tmphira2[1][i];
    } else {
      tmphira[i]=tmphira2[0][i-32];
    }
  }
  for (int i=0; i<tmphira.length; i++) {
    ango[i]=tmphira[saishu[i]-1];
    print(ango[i]);
  }
  println();
  exit();
}

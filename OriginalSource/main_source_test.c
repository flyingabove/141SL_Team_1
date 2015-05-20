#include	<time.h>
#include	<stdio.h>
#include	<stdlib.h>
#include	<math.h>
#include	<string.h>
#include	<malloc.h>
#include	<errno.h>
#include	<memory.h>
#include	<float.h>
#include	<limits.h>




#define   PRINTOUT
#define   SAMPLING_RATE  48000


///////////////////////////////////////////////////////////////////////////////
//////////////////            Pitch Estimation Routine     ////////////////////
///////////////////////////////////////////////////////////////////////////////

#define   MIN_PITCH      40
#define   MAX_PITCH      720
#define   FRAME_SIZE     480
#define   VALID_CORR     0.7



short  Pitch(short *signal, short FrameSize)
{
	printf(signal, FrameSize);
static double buffer[MAX_PITCH+FRAME_SIZE];
static double Correlation_sm[MAX_PITCH+1];
static short First_Flag=1; 
short k, i, Pitch_value;
double Correlation, Energy1, Energy2, Max_Corr, Max;
double *ptr1, *ptr2;

	/*Initial */
	if (First_Flag) { // Set entire buffer to 1
		for (i=0;i<MAX_PITCH+FRAME_SIZE;i++) {
			buffer[i]=1;
		}
		for (i=0;i<=MAX_PITCH;i++) {
			Correlation_sm[i]=0; // set entire correlation to 0
		}
		First_Flag=0;
	}

	/* Load buffer */
	for (i=0;i<MAX_PITCH;i++) {
		buffer[i]=buffer[i+FrameSize]; 
	}
	for (i=0;i<FrameSize;i++) {
		buffer[i+MAX_PITCH]=signal[i];
	}

	/* Calculate correlations */
	Max_Corr=0;
	for (k=MIN_PITCH;k<=MAX_PITCH;k++) {
		ptr1 = buffer+MAX_PITCH;
		ptr2 = ptr1 - k;
		Correlation=0;
		Energy1 =0;
		Energy2 =0;
		for (i=0;i<FrameSize;i++) {
			Correlation += ptr1[i]*ptr2[i];
			Energy1 += ptr1[i]*ptr1[i];
			Energy2 += ptr2[i]*ptr2[i];
		}
		Correlation /= sqrt(Energy1*Energy2+0.000001);
		if (Correlation>Max_Corr) Max_Corr=Correlation;
		if (Correlation>VALID_CORR) { //smoothing correlations
			Correlation_sm[k] = 0.95*Correlation_sm[k] + 0.05*Correlation;
		}
	}

	/* search for pitch and maximum correlation */
	Max = -1;
	Pitch_value=0;
	for (k=MIN_PITCH;k<=MAX_PITCH;k++) {
		if (Correlation_sm[k]>Max) {
			Pitch_value = k;
			Max = Correlation_sm[k];
		}
	}

	/* Return pitch */
	if (Max_Corr>VALID_CORR && Max>VALID_CORR-0.3) {
		return (Pitch_value);   //valid pitch
	}
	else {
		return 0;   //invalid pitch
	}
}






/*-------------------------------------------------------------------*/
int main (short argc, char *argv[] )
	{
	 FILE *file_input=NULL;
	 FILE *file_output=NULL;
	 short MicIn[FRAME_SIZE];	 
	 short Pitch_value=0;
	 long frm_count=0;
	
	 /*-------------------------------------------------------------------*/
	 /*              Input & Output setting                               */
	 /*-------------------------------------------------------------------*/
     printf("\n ********************************************************  \n");
	   printf(" ***** Pitch Estimation for 48kHz Mono Signal    ********  \n");
	   printf(" ********************************************************  \n");
	 
	 if (argc<3 )
	 {
		 printf("\n%s   Input_Signal_File   Output_Pitch_file   \n", argv[0]);
  		 exit (0);
	 }

     /*necessary in/out*/
	 file_input =  fopen(argv[1], "rb");   
	 file_output  =  fopen(argv[2], "wb"); 
     printf("\n Executable :  %s\n", argv[0]);
     printf(" Input_Signal_File :  %s\n", argv[1]);
	 printf(" Output_Pitch_file :  %s\n", argv[2]);

	/*============================================================================*/


	 while ( (fread(MicIn, sizeof(short), FRAME_SIZE, file_input))==FRAME_SIZE )
	 {	 

#ifdef PRINTOUT
			 printf ("[%ld frame(s),  %6.3f sec.]\r", frm_count,
		                               (1.*frm_count*FRAME_SIZE)/SAMPLING_RATE);
#endif

			 /* testing main body */	 
			 Pitch_value=Pitch(MicIn,FRAME_SIZE);
			
#ifdef PRINTOUT
			 printf (" Pitch for current frame =  %d  \n", Pitch_value);
#endif

			 /* Write pitch in a file */
			 fwrite(&Pitch_value, sizeof(short), 1, file_output);
			 
			 frm_count++;
	 }

 	 /*  Close IO files */
	 fclose(file_input);
	 fclose(file_output);

	 printf("\n---------------  End ---------------------\n");

	 return 0;
	 /*-------------------------------------------------------------------*/
	}



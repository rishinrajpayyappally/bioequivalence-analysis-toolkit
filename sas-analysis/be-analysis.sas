```sas
/*==============================================================*/
/* Bioequivalence Analysis Toolkit                              */
/* Version: v1.0                                                */
/* Study: Amoxicillin-clavulanate bioequivalence analysis       */
/*==============================================================*/

/*--------------------------------------------------------------*/
/* Analysis of CMAX                                             */
/*--------------------------------------------------------------*/

PROC MIXED;
    CLASSES SEQ SUBJ PER TRT;
    MODEL CMAX = SEQ PER TRT / DDFM=SATTERTH;
    RANDOM TRT / TYPE=FA0(2) SUB=SUBJ G;
    REPEATED / GRP=TRT SUB=SUBJ;
    ESTIMATE 'T vs. R' TRT 1 -1 / CL ALPHA=0.1;
RUN;


/*--------------------------------------------------------------*/
/* Analysis of AUC0-8                                           */
/*--------------------------------------------------------------*/

PROC MIXED;
    CLASSES SEQ SUBJ PER TRT;
    MODEL AUC0_8 = SEQ PER TRT / DDFM=SATTERTH;
    RANDOM TRT / TYPE=FA0(2) SUB=SUBJ G;
    REPEATED / GRP=TRT SUB=SUBJ;
    ESTIMATE 'T vs. R' TRT 1 -1 / CL ALPHA=0.1;
RUN;


/*--------------------------------------------------------------*/
/* Analysis of AUC0-INF                                         */
/*--------------------------------------------------------------*/

PROC MIXED;
    CLASSES SEQ SUBJ PER TRT;
    MODEL AUC0_INF = SEQ PER TRT / DDFM=SATTERTH;
    RANDOM TRT / TYPE=FA0(2) SUB=SUBJ G;
    REPEATED / GRP=TRT SUB=SUBJ;
    ESTIMATE 'T vs. R' TRT 1 -1 / CL ALPHA=0.1;
RUN;
```

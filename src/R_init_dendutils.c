/*
 * Rdefines.h is needed for the SEXP typedef, for the error(), INTEGER(),
 * GET_DIM(), LOGICAL(), NEW_INTEGER(), PROTECT() and UNPROTECT() macros,
 * and for the NA_INTEGER constant symbol.
 */
#include <Rdefines.h>

/*
 * R_ext/Rdynload.h is needed for the R_CallMethodDef typedef and the
 * R_registerRoutines() prototype.
 */
#include <R_ext/Rdynload.h>

// for math functions
#include <math.h>

// main header file
#include "dendutils.h"

#define CALLDEF(name, n)  {#name, (DL_FUNC) &name, n}
#define C_DEF(name, n)  {#name, (DL_FUNC) &name, n}

/*
 * -- REGISTRATION OF THE .Call ENTRY POINTS ---
 */
static const R_CallMethodDef callMethods[] = { // method call, pointer, num args
  CALLDEF(dendrapply, 4),
  {NULL, NULL, 0}
};

/*
 * -- REGISTRATION OF THE .C ENTRY POINTS ---
 */
static const R_CMethodDef cMethods[] = {
  C_DEF(free_dendrapply_list, 0),
  {NULL, NULL, 0}
};

void R_init_dendutils(DllInfo *info)
{
  R_registerRoutines(info, cMethods, callMethods, NULL, NULL);
  R_useDynamicSymbols(info, TRUE);
}

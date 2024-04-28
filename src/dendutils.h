#ifndef DENDUTILS_H
#define DENDUTILS_H

void R_init_dendutils(DllInfo *info);

/**** Dendrapply ****/
void free_dendrapply_list(void);
SEXP dendrapply(SEXP tree, SEXP fn, SEXP env, SEXP order);

#endif
# dendutils: basic functionality for `dendrogram` objects

Dendrograms in R are missing lots of functionality. As a result, they are often challenging to work with in practical settings. This package adds in low level functions for working with dendrogram objects.

The following functions are currently implemented:

- `dendrapply`: non-recursive version of `stats::dendrapply` adding support for applying functions using pre-order and post-order tree traversals. Works as a drop-in replacement for `stats::dendrapply` with increased performance and functionality
- `subset.dendrogram`: allows subsetting dendrogram objects based on leaf labels
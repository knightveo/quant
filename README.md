# quant

Weight-only quantization and dequantization kernels.

## Engineering notes

Correctness and performance are treated separately. Optimized paths keep a simple reference implementation or invariant checks nearby, and benchmark results should always include the input shape and environment that produced them.

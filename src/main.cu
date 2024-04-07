#include <cuda_runtime.h>
#include <cstdio>

__global__ void saxpy(float* y, const float* x, float a, int n) {
    const int i = blockIdx.x * blockDim.x + threadIdx.x;
    if (i < n) y[i] = a * x[i] + y[i];
}

int main() {
    int device = 0;
    cudaDeviceProp prop{};
    if (cudaGetDeviceProperties(&prop, device) != cudaSuccess) {
        std::puts("CUDA device unavailable");
        return 1;
    }
    std::printf("device=%s sm=%d.%d\n", prop.name, prop.major, prop.minor);
    return 0;
}
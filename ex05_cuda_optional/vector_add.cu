#include <cuda_runtime.h>

#include <cmath>
#include <iostream>
#include <vector>

__global__ void vector_add_kernel(const float* a, const float* b, float* c, int n) {
    int idx = blockIdx.x * blockDim.x + threadIdx.x;
    if (idx < n) {
        c[idx] = a[idx] + b[idx];
    }
}

int main() {
    constexpr int n = 1 << 20;
    const std::size_t bytes = n * sizeof(float);

    std::vector<float> h_a(n, 1.25f);
    std::vector<float> h_b(n, 2.75f);
    std::vector<float> h_c(n, 0.0f);

    float* d_a = nullptr;
    float* d_b = nullptr;
    float* d_c = nullptr;
    cudaMalloc(&d_a, bytes);
    cudaMalloc(&d_b, bytes);
    cudaMalloc(&d_c, bytes);

    cudaMemcpy(d_a, h_a.data(), bytes, cudaMemcpyHostToDevice);
    cudaMemcpy(d_b, h_b.data(), bytes, cudaMemcpyHostToDevice);

    int threads = 256;
    int blocks = (n + threads - 1) / threads;
    vector_add_kernel<<<blocks, threads>>>(d_a, d_b, d_c, n);
    cudaDeviceSynchronize();

    cudaMemcpy(h_c.data(), d_c, bytes, cudaMemcpyDeviceToHost);

    bool ok = true;
    for (int i = 0; i < n; ++i) {
        if (std::fabs(h_c[i] - 4.0f) > 1e-6f) {
            ok = false;
            break;
        }
    }

    cudaFree(d_a);
    cudaFree(d_b);
    cudaFree(d_c);

    std::cout << (ok ? "vector add PASS" : "vector add FAIL") << "\n";
    return ok ? 0 : 1;
}


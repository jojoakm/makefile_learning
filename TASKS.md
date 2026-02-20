# 练手任务清单（从易到难）

## 基础题

1. 在 `ex01` 里增加 `print-vars` 目标，打印 `CC` 和 `CFLAGS`。  
2. 在 `ex02` 里新增 `NAME` 变量并通过 `-DNAME="..."` 影响程序输出。  
3. 在 `ex02` 里让 `make run` 支持参数：`make run ARGS="Alice"`。

## 进阶题

4. 在 `ex03` 里新增一个 `median` 函数并放到新文件，要求自动编译。  
5. 在 `ex03` 里故意改 `.h`，观察是否只重编译受影响文件。  
6. 在 `ex04` 里新增 `sanitize` 构建模式（`-fsanitize=address,undefined`）。

## 挑战题

7. 给 `ex04` 加一个简单 `test` 目标，返回非 0 则 make 失败。  
8. 在 `ex05` 里把 `CUDA_ARCH` 自动从 `nvidia-smi` 结果映射（可选）。  
9. 把某一个练习改造成你自己的小项目模板（含 `help/clean/run`）。
10. 不看答案，从零新建目录，手写一个多文件 C++ Makefile。


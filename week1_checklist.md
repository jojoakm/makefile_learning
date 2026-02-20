# Makefile Week 1 打卡清单（最简执行版）

> 目标：7 天把 Makefile 学到“能独立写项目构建脚本”的水平。

---

## Day 1：最小模型 + 基础命令

- [ ] 跑通 `ex01_hello`：`make`、`make run`、`make clean`
- [ ] 说清 `target: deps` 是什么
- [ ] 自己加一个 `print-vars` 目标（打印 `CC/CFLAGS`）

---

## Day 2：变量 + 多文件编译

- [ ] 跑通 `ex02_variables`
- [ ] 试参数覆盖：`make CXX=clang++`
- [ ] 试编译选项覆盖：`make CXXFLAGS='-O0 -g -std=c++17 -Wall -Wextra'`

---

## Day 3：模式规则（核心）

- [ ] 跑通 `ex03_pattern_deps`
- [ ] 理解 `$(wildcard)` / `$(patsubst)` / `%.o: %.cpp`
- [ ] 新增一个 `.cpp` 文件并让它被自动编译

---

## Day 4：自动头文件依赖（核心）

- [ ] 理解 `-MMD -MP` 的作用
- [ ] 改一个 `.h` 文件，看是否只重编译受影响目标
- [ ] 口述为什么要 `-include $(DEPS)`

---

## Day 5：构建模式与测试目标

- [ ] 跑通 `ex04_build_modes`
- [ ] 分别跑 `make BUILD=debug` 与 `make BUILD=release`
- [ ] 跑 `make test`，理解“失败即返回非0”

---

## Day 6：CUDA 场景（可选但推荐）

- [ ] 跑通 `ex05_cuda_optional`
- [ ] 改 `CUDA_ARCH` 重新编译一次
- [ ] 如果有 GPU，执行 `make run` 并确认 PASS

---

## Day 7：从零重写（验收日）

- [ ] 新建一个空目录
- [ ] 手写一个多文件 C++ Makefile（含 `all/run/clean/help`）
- [ ] 支持 `BUILD=debug/release`
- [ ] 支持自动依赖（`-MMD -MP`）

---

## 一周完成标准（全打钩即通过）

- [ ] 我能独立解释 Makefile 的执行流程
- [ ] 我能写出可维护的多文件项目 Makefile
- [ ] 我能定位常见报错（separator / rule / undefined reference）
- [ ] 我能把这个能力迁移到自己的 CUDA 项目里


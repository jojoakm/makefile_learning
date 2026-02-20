# Makefile 学习工坊（独立长期可用）

这个目录放在最外层：`/home/gjj/makefile_learning`。  
目标是让你以后不学 PMPP 也能持续复用。

---

## 你会学到什么

- `target: dependencies` 的核心模型
- 变量与参数覆盖（`make CXX=clang++`）
- 自动变量（`$@`、`$<`、`$^`）
- 模式规则（pattern rule）
- 自动头文件依赖（`-MMD -MP`）
- 调试/发布双构建（`BUILD=debug|release`）
- `PHONY`、`clean`、`help` 等工程化习惯
- CUDA 项目常见写法（可选）

---

## 推荐学习顺序

1. `ex01_hello`：最小可运行 Makefile
2. `ex02_variables`：变量、编译选项、多文件
3. `ex03_pattern_deps`：模式规则 + 自动依赖
4. `ex04_build_modes`：debug/release 与可维护目标
5. `ex05_cuda_optional`：CUDA 场景（可选）

---

## 快速开始

```bash
cd /home/gjj/makefile_learning
make list
make all
```

如果你想按天打卡，直接用：

- [`week1_checklist.md`](./week1_checklist.md)

单独练某一关：

```bash
make run-ex01
make run-ex03
```

---

## 练到什么程度算过关

- 你能从零写出一个多文件项目 Makefile
- 你知道什么时候用显式规则、什么时候用模式规则
- 改一个 `.h` 文件后，能自动触发正确的增量编译
- 你能给项目加上 `debug/release/help/clean`

---

## 建议学习节奏（7 天）

- Day1：`ex01` + `ex02`
- Day2：`ex03`（重点）
- Day3：`ex04`
- Day4：复盘 + 默写一个 Makefile
- Day5：`ex05`（可选）
- Day6：做 `TASKS.md` 的中级题
- Day7：做 `TASKS.md` 的挑战题并总结

# Makefile 速查（10 分钟）

## 1) 最小结构

```make
target: deps
	@echo "build something"
```

> 注意：命令前必须是 **Tab**，不是空格。

---

## 2) 高频自动变量

- `$@`：当前目标名
- `$<`：第一个依赖
- `$^`：所有依赖（去重）

---

## 3) 常用习惯

```make
.PHONY: all clean run help
```

---

## 4) 变量覆盖

```bash
make CXX=clang++ CXXFLAGS="-O2 -Wall"
make BUILD=debug
```

---

## 5) 模式规则

```make
%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@
```

---

## 6) 自动依赖（推荐）

```make
CXXFLAGS += -MMD -MP
-include $(OBJS:.o=.d)
```

---

## 7) 常见排错

- `No rule to make target`: 依赖路径写错或目标不存在
- `missing separator`: 命令行缩进用了空格而不是 Tab
- 链接报 `undefined reference`: 忘了把某个 `.o`/`.cpp` 加到链接阶段


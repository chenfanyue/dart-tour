```dart
void main() {
  List<int> numbers = [1, 2, 3, 4];

  final squares = numbers.map((n) => n * n); // Iterable<int>
  print(squares); // (1, 4, 9, 16)
}
```

在 Dart 中，`Iterable` 是一个通用的集合抽象，表示可以被遍历的数据结构，例如列表（`List`）、集合（`Set`）等。`Iterable` 是一个接口，提供了一系列常用的方法来遍历、转换和过滤集合数据。

### `Iterable` 的常见操作
在 Dart 中，`Iterable` 提供许多便捷的方法来处理集合数据，这里介绍一些常见的操作：

1. **`map()`**：
   - `map` 是一个高阶函数，用于将每个元素映射到新值并生成一个新的 `Iterable`。
   - 在上面代码中，`numbers.map((n) => n * n);` 通过平方映射来生成一个新的 `Iterable`。

2. **`where()`**：
   - `where` 方法用于根据条件过滤元素，返回一个包含所有满足条件的元素的 `Iterable`。
   - 例如：`numbers.where((n) => n.isEven);` 返回 `[2, 4]`。

3. **`forEach()`**：
   - `forEach` 用于对 `Iterable` 中的每个元素执行操作，不会返回新的 `Iterable`。
   - 例如：`numbers.forEach((n) => print(n));` 依次打印 `1, 2, 3, 4`。

4. **`reduce()` 和 `fold()`**：
   - `reduce` 和 `fold` 是聚合操作，可以将所有元素组合为一个值。
   - `reduce` 示例：`numbers.reduce((a, b) => a + b);`，得到 `10`。
   - `fold` 提供初始值，例如：`numbers.fold(0, (a, b) => a + b);` 也得到 `10`。

5. **`any()` 和 `every()`**：
   - `any` 方法用于检查是否有至少一个元素满足条件。
   - `every` 用于检查是否所有元素都满足条件。
   - 例如：`numbers.any((n) => n > 3);` 返回 `true`，`numbers.every((n) => n > 0);` 返回 `true`。

6. **`toList()` 和 `toSet()`**：
   - 由于 `Iterable` 是惰性求值的，可以使用 `toList` 或 `toSet` 将其转换为列表或集合进行即时计算。
   - 例如：`final squaresList = squares.toList();` 将 `Iterable` 转换为 `List`。

### Dart 中的迭代器（Iterator）

Dart 中确实有迭代器的概念。`Iterable` 本身不直接提供访问集合中每个元素的方式，而是通过一个称为 `Iterator` 的对象来实现。`Iterator` 提供两个主要属性和方法：

- **`moveNext()`**：将迭代器移动到下一个元素。如果成功移动并找到元素，则返回 `true`，否则返回 `false`。
- **`current`**：返回当前的元素值。

示例代码：

```dart
void main() {
  List<int> numbers = [1, 2, 3, 4];
  Iterator<int> iterator = numbers.iterator;

  while (iterator.moveNext()) {
    print(iterator.current); // 依次打印 1, 2, 3, 4
  }
}
```

### 惰性求值

Dart 中的 `Iterable` 操作（例如 `map`、`where` 等）是惰性求值的，这意味着只有在访问或使用结果时，操作才会真正被执行。这种特性可以提高性能，避免不必要的计算。

在 Dart 中，`iterator` 在第一次调用 `moveNext()` 方法之前，迭代器的 `current` 属性处于“未定义”状态。默认情况下，`iterator` 指向集合中的“第一个元素之前”的位置，即尚未指向任何有效元素。因此：

- **`iterator.current`** 在调用 `moveNext()` 之前没有值，访问它会返回 `null`，或在某些情况下导致异常，因为还没有开始迭代。
- **`iterator.moveNext()`** 在首次调用时，会将迭代器移动到第一个元素，然后 `iterator.current` 才会返回有效的值。

简而言之，在调用 `moveNext()` 之前，`iterator` 的状态处于集合的“起点”之前，没有指向任何元素。

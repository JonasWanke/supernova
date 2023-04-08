typedef VoidCallback = void Function();
typedef AsyncVoidCallback = Future<void> Function();

typedef Factory<T> = T Function();
typedef AsyncFactory<T> = Factory<Future<T>>;
typedef AsyncFactory1<T, R> = Future<R> Function(T);

typedef Mapper<T, R> = R Function(T it);
typedef AsyncMapper<T, R> = Mapper<T, Future<R>>;
typedef Predicate<T> = Mapper<T, bool>;
typedef Formatter<T> = Mapper<T, String>;

typedef ValueChanged<T> = void Function(T value);
typedef ValueSetter<T> = void Function(T value);
typedef ValueGetter<T> = T Function();
typedef AsyncValueSetter<T> = Future<void> Function(T value);
typedef AsyncValueGetter<T> = Future<T> Function();

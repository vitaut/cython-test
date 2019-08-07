template <typename T>
class optional_field_ref {
 private:
  T& value_;
 
 public:
  explicit optional_field_ref(T& value) : value_(value) {}

  void operator=(T value) { value_ = value; }
  T& value_unchecked() { return value_; }
};

class foo {
 private:
  int i;

 public:
  optional_field_ref<int> i_ref() { return optional_field_ref<int>(i); }
};

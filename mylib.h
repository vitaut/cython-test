class optional_field_ref {
 private:
  int& value_;
 
 public:
  explicit optional_field_ref(int& value) : value_(value) {}

  void operator=(int value) { value_ = value; }
  int& value_unchecked() { return value_; }
};

class foo {
 private:
  int i;

 public:
  optional_field_ref i_ref() { return optional_field_ref(i); }
};

int answer();

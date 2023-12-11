class diffinput {
  public static void main(String [] args) {
    System.out.println(new A().b());
  }
}

class A {
  int[] a;
  public int b() {
    B classB;
    C classC;
    D classD;
    classB = new B();
    classC = new C();
    classD = new D();
    a = new int[5];
    a[0] = 1;
    a[1] = 2;
    a[2] = 3;
    a[3] = 4;
    a[4] = 5;

    System.out.println(a[0]);
    a[4] = classD.exec(classB, a); 
    System.out.println(a[0]);
    a[4] = classD.exec(classC, a);
    System.out.println(a[0]);
    return 1;
  }


}

class B {
  public int c(int[] a) {
    int b;
    int c;
    b = a[1];
    c = a[2];
    a[0] = b+c;
    return a[0];
  }
}

class C extends B {
  public int c(int [] a) {
    int b;
    int c;
    b = a[2];
    c = a[3];
    a[0] = b+c;
    return a[0];
  }
}

class D {
  public int exec(B classB, int[] a){
    return classB.c(a);
  }
}

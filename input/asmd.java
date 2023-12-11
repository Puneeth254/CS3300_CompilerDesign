class asmd {
    public static void main(String[] a){
        System.out.println(new Fac().fn());
    }
}

class Fac {
    int a;
    int b;
    int c;
    int d;

    public int fn()
    {
        int t;

        a = 5;
        b = 83;
        c = 5934;
        d = 183;
        t = a+ b;
        System.out.println(t);
        t = a - b;
        System.out.println(t);
        t = a * b;
        System.out.println(t);
        t = a / b;
        System.out.println(t);
        t = a * (b/c);
        System.out.println(t);
        t = a * ((b/c) + d);
        System.out.println(t);
        t = a * (b/(c + d));
        System.out.println(t);
        return 1;
    }
}

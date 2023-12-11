class andor {
    public static void main(String[] args) {
        System.out.println(new yeaboi().fn());
    }
}

class yeaboi {
    boolean a;
    boolean b;
    boolean c;
    int x;

    public int fn() {
        x = 1;
        a = true;
        b = false;
        c = (a && b);

        if(a || (this.foo()))
        {
            System.out.println(x);
        }
        x = 1;
        if(b || (this.foo()))
        {
            System.out.println(x);
        }
        x = 1;
        if(b && (this.foo()))
        {
            System.out.println(x);
        }
        x = 1;
        if(a && (this.foo()))
        {
            System.out.println(x);
        }
        x = 1;
        if(b || (a || (this.foo())))
        {
            System.out.println(x);
        }
        return 1;
    }

    public boolean foo()
    {
        x = 5;
        return true;
    }
}
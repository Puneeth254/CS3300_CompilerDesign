class tahir {
    public static void main(String[] args) {
        System.out.println(new yeaboi().fn(3, 8));
    }
}

class yeaboi extends urmom{
    public int fn(int x, int y) {
        int z;
        z = this.fn2(x,y);
        return z;
    }
}

class urmom extends fkboy {
    int x;
    int lmao;
    public int fn2(int x, int y) {
        int z;
        lmao = 3;
        z = this.fn3(lmao, x);
        return z;
    }
}

class fkboy {
    public int fn3(int x, int y) {
        return x + y;
    }
}
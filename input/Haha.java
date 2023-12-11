class Haha {
	public static void main(String[] args) {
		System.out.println(new test().pp());
	}
}

class test {
	public int pp() {
		Animal a;
		Cat c;
		KB kb;
		int x;

		kb = new KB();
		x = kb.lol();
		c = kb;
		x = c.lol();
		x = kb.lol();
		x = c.mantra();
		a = c;
		x = a.lol();
		return 1;
	}
}

class Animal {
	int x;

	public int lol() {
		x = 8;
		System.out.println(x);
		return 8;
	}

	public int boo() {
		x = 0;
		System.out.println(x);
		return 0;
	}
}

class Cat extends Animal {
	int x;

	public int lol() {
		x = 9;
		System.out.println(x);
		return x;
	}

	public int mantra() {
		System.out.println(x);
		return 0;
	}
}

class KB extends Cat {
	public int lol() {
		x = 10;
		System.out.println(x);
		x = this.boo();
		return x;
	}
}
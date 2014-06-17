public class MyArrayList<String> extends ArrayList<String>{

    public boolean contains(Object o){
	//stolen from http://grepcode.com/file/repository.grepcode.com/java/root/jdk/openjdk/6-b14/java/util/AbstractCollection.java#AbstractCollection.contains%28java.lang.Object%29
	Iterator<E> e = iterator();
        if (o==null) {
            while (e.hasNext())
                if (e.next()==null)
                    return true;
        }
	else {
            while (e.hasNext())
                if (o.equals(e.next()))
                    return true;
        }
        return false;
    }

    public boolean isSameRootWord(String a, String b){
	return a.equals(b);
    }
}
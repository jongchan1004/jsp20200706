package selfTest;

import java.util.Iterator;
import java.util.List;

public class Summation {
	public static Long sum(List<Long> values) {
		Long result=0L;
		Iterator<Long> itr = values.iterator();
		while(itr.hasNext()) {
			result += itr.next();
		}
		return result;
	}
}

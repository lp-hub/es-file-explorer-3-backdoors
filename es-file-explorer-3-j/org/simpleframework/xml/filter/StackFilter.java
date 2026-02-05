package org.simpleframework.xml.filter;

import java.util.Stack;

/* loaded from: classes.dex */
public class StackFilter implements Filter {
    private Stack<Filter> stack = new Stack<>();

    public void push(Filter filter) {
        this.stack.push(filter);
    }

    @Override // org.simpleframework.xml.filter.Filter
    public String replace(String str) {
        int size = this.stack.size();
        while (true) {
            int i = size - 1;
            if (i < 0) {
                return null;
            }
            String replace = this.stack.get(i).replace(str);
            if (replace != null) {
                return replace;
            }
            size = i;
        }
    }
}

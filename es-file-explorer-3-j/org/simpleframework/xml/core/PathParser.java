package org.simpleframework.xml.core;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import org.simpleframework.xml.strategy.Type;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class PathParser implements Expression {
    private boolean attribute;
    private String cache;
    private int count;
    private char[] data;
    private String location;
    private int off;
    private String path;
    private int start;
    private Type type;
    private LinkedList<Integer> indexes = new LinkedList<>();
    private LinkedList<String> prefixes = new LinkedList<>();
    private LinkedList<String> names = new LinkedList<>();
    private StringBuilder builder = new StringBuilder();
    private Cache attributes = new Cache();
    private Cache elements = new Cache();

    /* loaded from: classes.dex */
    class Cache extends LinkedHashMap<String, String> {
        public Cache() {
            super(16, 0.75f, false);
        }

        @Override // java.util.LinkedHashMap
        public boolean removeEldestEntry(Map.Entry<String, String> entry) {
            return size() > 16;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class PathSection implements Expression {
        private int begin;
        private List<String> cache = new ArrayList();
        private int end;
        private String path;
        private String section;

        public PathSection(int i, int i2) {
            this.begin = i;
            this.end = i2;
        }

        private String getCanonicalPath() {
            int i = 0;
            int i2 = 0;
            while (i < this.begin) {
                i2 = PathParser.this.location.indexOf(47, i2 + 1);
                i++;
            }
            int i3 = i2;
            while (i <= this.end) {
                i3 = PathParser.this.location.indexOf(47, i3 + 1);
                if (i3 == -1) {
                    i3 = PathParser.this.location.length();
                }
                i++;
            }
            return PathParser.this.location.substring(i2 + 1, i3);
        }

        private String getFragment() {
            int i;
            int i2 = 0;
            int i3 = PathParser.this.start;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i2 > this.end) {
                    break;
                }
                if (i >= PathParser.this.count) {
                    i++;
                    break;
                }
                i3 = i + 1;
                if (PathParser.this.data[i] == '/' && (i2 = i2 + 1) == this.begin) {
                    i4 = i3;
                }
            }
            return new String(PathParser.this.data, i4, (i - 1) - i4);
        }

        @Override // org.simpleframework.xml.core.Expression
        public String getAttribute(String str) {
            String path = getPath();
            return path != null ? PathParser.this.getAttributePath(path, str) : str;
        }

        @Override // org.simpleframework.xml.core.Expression
        public String getElement(String str) {
            String path = getPath();
            return path != null ? PathParser.this.getElementPath(path, str) : str;
        }

        @Override // org.simpleframework.xml.core.Expression
        public String getFirst() {
            return (String) PathParser.this.names.get(this.begin);
        }

        @Override // org.simpleframework.xml.core.Expression
        public int getIndex() {
            return ((Integer) PathParser.this.indexes.get(this.begin)).intValue();
        }

        @Override // org.simpleframework.xml.core.Expression
        public String getLast() {
            return (String) PathParser.this.names.get(this.end);
        }

        @Override // org.simpleframework.xml.core.Expression
        public String getPath() {
            if (this.section == null) {
                this.section = getCanonicalPath();
            }
            return this.section;
        }

        @Override // org.simpleframework.xml.core.Expression
        public Expression getPath(int i) {
            return getPath(i, 0);
        }

        @Override // org.simpleframework.xml.core.Expression
        public Expression getPath(int i, int i2) {
            return new PathSection(this.begin + i, this.end - i2);
        }

        @Override // org.simpleframework.xml.core.Expression
        public String getPrefix() {
            return (String) PathParser.this.prefixes.get(this.begin);
        }

        @Override // org.simpleframework.xml.core.Expression
        public boolean isAttribute() {
            return PathParser.this.attribute && this.end >= PathParser.this.names.size() + (-1);
        }

        @Override // org.simpleframework.xml.core.Expression
        public boolean isEmpty() {
            return this.begin == this.end;
        }

        @Override // org.simpleframework.xml.core.Expression
        public boolean isPath() {
            return this.end - this.begin >= 1;
        }

        @Override // java.lang.Iterable
        public Iterator<String> iterator() {
            if (this.cache.isEmpty()) {
                int i = this.begin;
                while (true) {
                    int i2 = i;
                    if (i2 > this.end) {
                        break;
                    }
                    String str = (String) PathParser.this.names.get(i2);
                    if (str != null) {
                        this.cache.add(str);
                    }
                    i = i2 + 1;
                }
            }
            return this.cache.iterator();
        }

        @Override // org.simpleframework.xml.core.Expression
        public String toString() {
            if (this.path == null) {
                this.path = getFragment();
            }
            return this.path;
        }
    }

    public PathParser(Type type, String str) {
        this.type = type;
        this.path = str;
        parse(str);
    }

    private void align() {
        if (this.names.size() > this.indexes.size()) {
            this.indexes.add(1);
        }
    }

    private void attribute() {
        int i = this.off + 1;
        this.off = i;
        while (this.off < this.count) {
            char[] cArr = this.data;
            int i2 = this.off;
            this.off = i2 + 1;
            char c = cArr[i2];
            if (!isValid(c)) {
                throw new PathException("Illegal character '%s' in attribute for '%s' in %s", Character.valueOf(c), this.path, this.type);
            }
        }
        if (this.off <= i) {
            throw new PathException("Attribute reference in '%s' for %s is empty", this.path, this.type);
        }
        this.attribute = true;
        insert(i, this.off - i);
    }

    private void build() {
        int size = this.names.size();
        int i = size - 1;
        for (int i2 = 0; i2 < size; i2++) {
            String str = this.names.get(i2);
            int intValue = this.indexes.get(i2).intValue();
            if (i2 > 0) {
                this.builder.append('/');
            }
            if (this.attribute && i2 == i) {
                this.builder.append('@');
                this.builder.append(str);
            } else {
                this.builder.append(str);
                this.builder.append('[');
                this.builder.append(intValue);
                this.builder.append(']');
            }
        }
        this.location = this.builder.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x000a, code lost:
    
        insert(r2, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x000d, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void element() {
        int i = this.off;
        int i2 = 0;
        while (true) {
            if (this.off >= this.count) {
                break;
            }
            char[] cArr = this.data;
            int i3 = this.off;
            this.off = i3 + 1;
            char c = cArr[i3];
            if (isValid(c)) {
                i2++;
            } else if (c == '@') {
                this.off--;
            } else if (c == '[') {
                index();
            } else if (c != '/') {
                throw new PathException("Illegal character '%s' in element for '%s' in %s", Character.valueOf(c), this.path, this.type);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getAttributePath(String str, String str2) {
        return isEmpty(str) ? str2 : String.valueOf(str) + "/@" + str2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getElementPath(String str, String str2) {
        return isEmpty(str2) ? str : isEmpty(str) ? str2 : String.valueOf(str) + "/" + str2 + "[1]";
    }

    private void index() {
        int i;
        if (this.data[this.off - 1] == '[') {
            i = 0;
            while (this.off < this.count) {
                char[] cArr = this.data;
                int i2 = this.off;
                this.off = i2 + 1;
                char c = cArr[i2];
                if (!isDigit(c)) {
                    break;
                } else {
                    i = ((i * 10) + c) - 48;
                }
            }
        } else {
            i = 0;
        }
        char[] cArr2 = this.data;
        int i3 = this.off;
        this.off = i3 + 1;
        if (cArr2[i3 - 1] != ']') {
            throw new PathException("Invalid index for path '%s' in %s", this.path, this.type);
        }
        this.indexes.add(Integer.valueOf(i));
    }

    private void insert(int i, int i2) {
        String str = new String(this.data, i, i2);
        if (i2 > 0) {
            insert(str);
        }
    }

    private void insert(String str) {
        int indexOf = str.indexOf(58);
        String str2 = null;
        if (indexOf > 0) {
            str2 = str.substring(0, indexOf);
            str = str.substring(indexOf + 1);
        }
        this.prefixes.add(str2);
        this.names.add(str);
    }

    private boolean isDigit(char c) {
        return Character.isDigit(c);
    }

    private boolean isEmpty(String str) {
        return str == null || str.length() == 0;
    }

    private boolean isLetter(char c) {
        return Character.isLetterOrDigit(c);
    }

    private boolean isSpecial(char c) {
        return c == '_' || c == '-' || c == ':';
    }

    private boolean isValid(char c) {
        return isLetter(c) || isSpecial(c);
    }

    private void parse(String str) {
        if (str != null) {
            this.count = str.length();
            this.data = new char[this.count];
            str.getChars(0, this.count, this.data, 0);
        }
        path();
    }

    private void path() {
        if (this.data[this.off] == '/') {
            throw new PathException("Path '%s' in %s references document root", this.path, this.type);
        }
        if (this.data[this.off] == '.') {
            skip();
        }
        while (this.off < this.count) {
            if (this.attribute) {
                throw new PathException("Path '%s' in %s references an invalid attribute", this.path, this.type);
            }
            segment();
        }
        truncate();
        build();
    }

    private void segment() {
        char c = this.data[this.off];
        if (c == '/') {
            throw new PathException("Invalid path expression '%s' in %s", this.path, this.type);
        }
        if (c == '@') {
            attribute();
        } else {
            element();
        }
        align();
    }

    private void skip() {
        if (this.data.length > 1) {
            if (this.data[this.off + 1] != '/') {
                throw new PathException("Path '%s' in %s has an illegal syntax", this.path, this.type);
            }
            this.off++;
        }
        int i = this.off + 1;
        this.off = i;
        this.start = i;
    }

    private void truncate() {
        if (this.off - 1 >= this.data.length) {
            this.off--;
        } else if (this.data[this.off - 1] == '/') {
            this.off--;
        }
    }

    @Override // org.simpleframework.xml.core.Expression
    public String getAttribute(String str) {
        String str2 = this.attributes.get(str);
        if (str2 == null && (str2 = getAttributePath(this.location, str)) != null) {
            this.attributes.put(str, str2);
        }
        return str2;
    }

    @Override // org.simpleframework.xml.core.Expression
    public String getElement(String str) {
        String str2 = this.elements.get(str);
        if (str2 == null && (str2 = getElementPath(this.location, str)) != null) {
            this.elements.put(str, str2);
        }
        return str2;
    }

    @Override // org.simpleframework.xml.core.Expression
    public String getFirst() {
        return this.names.getFirst();
    }

    @Override // org.simpleframework.xml.core.Expression
    public int getIndex() {
        return this.indexes.getFirst().intValue();
    }

    @Override // org.simpleframework.xml.core.Expression
    public String getLast() {
        return this.names.getLast();
    }

    @Override // org.simpleframework.xml.core.Expression
    public String getPath() {
        return this.location;
    }

    @Override // org.simpleframework.xml.core.Expression
    public Expression getPath(int i) {
        return getPath(i, 0);
    }

    @Override // org.simpleframework.xml.core.Expression
    public Expression getPath(int i, int i2) {
        int size = this.names.size() - 1;
        return size - i2 >= i ? new PathSection(i, size - i2) : new PathSection(i, i);
    }

    @Override // org.simpleframework.xml.core.Expression
    public String getPrefix() {
        return this.prefixes.getFirst();
    }

    @Override // org.simpleframework.xml.core.Expression
    public boolean isAttribute() {
        return this.attribute;
    }

    @Override // org.simpleframework.xml.core.Expression
    public boolean isEmpty() {
        return isEmpty(this.location);
    }

    @Override // org.simpleframework.xml.core.Expression
    public boolean isPath() {
        return this.names.size() > 1;
    }

    @Override // java.lang.Iterable
    public Iterator<String> iterator() {
        return this.names.iterator();
    }

    @Override // org.simpleframework.xml.core.Expression
    public String toString() {
        int i = this.off - this.start;
        if (this.cache == null) {
            this.cache = new String(this.data, this.start, i);
        }
        return this.cache;
    }
}

package org.simpleframework.xml.stream;

import java.io.BufferedWriter;
import java.io.Writer;
import org.apache.commons.net.ftp.FTPCommand;

/* loaded from: classes.dex */
class Formatter {
    private OutputBuffer buffer = new OutputBuffer();
    private Indenter indenter;
    private Tag last;
    private String prolog;
    private Writer result;
    private static final char[] NAMESPACE = {'x', 'm', 'l', 'n', 's'};
    private static final char[] LESS = {'&', 'l', 't', ';'};
    private static final char[] GREATER = {'&', 'g', 't', ';'};
    private static final char[] DOUBLE = {'&', 'q', 'u', 'o', 't', ';'};
    private static final char[] SINGLE = {'&', 'a', 'p', 'o', 's', ';'};
    private static final char[] AND = {'&', 'a', 'm', 'p', ';'};
    private static final char[] OPEN = {'<', '!', '-', '-', ' '};
    private static final char[] CLOSE = {' ', '-', '-', '>'};

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public enum Tag {
        COMMENT,
        START,
        TEXT,
        END;

        /* renamed from: values, reason: to resolve conflict with enum method */
        public static Tag[] valuesCustom() {
            Tag[] valuesCustom = values();
            int length = valuesCustom.length;
            Tag[] tagArr = new Tag[length];
            System.arraycopy(valuesCustom, 0, tagArr, 0, length);
            return tagArr;
        }
    }

    public Formatter(Writer writer, Format format) {
        this.result = new BufferedWriter(writer, 1024);
        this.indenter = new Indenter(format);
        this.prolog = format.getProlog();
    }

    private void append(char c) {
        this.buffer.append(c);
    }

    private void append(String str) {
        this.buffer.append(str);
    }

    private void append(char[] cArr) {
        this.buffer.append(cArr);
    }

    private void data(String str) {
        write("<![CDATA[");
        write(str);
        write("]]>");
    }

    private void escape(char c) {
        char[] symbol = symbol(c);
        if (symbol != null) {
            write(symbol);
        } else {
            write(c);
        }
    }

    private void escape(String str) {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            escape(str.charAt(i));
        }
    }

    private boolean isEmpty(String str) {
        return str == null || str.length() == 0;
    }

    private boolean isText(char c) {
        switch (c) {
            case '\t':
            case '\n':
            case '\r':
            case ' ':
                return true;
            default:
                if (c <= ' ' || c > '~') {
                    return false;
                }
                return c != 247;
        }
    }

    private char[] symbol(char c) {
        switch (c) {
            case '\"':
                return DOUBLE;
            case FTPCommand.MLSD /* 38 */:
                return AND;
            case FTPCommand.MLST /* 39 */:
                return SINGLE;
            case '<':
                return LESS;
            case '>':
                return GREATER;
            default:
                return null;
        }
    }

    private String unicode(char c) {
        return Integer.toString(c);
    }

    private void write(char c) {
        this.buffer.write(this.result);
        this.buffer.clear();
        this.result.write(c);
    }

    private void write(String str) {
        this.buffer.write(this.result);
        this.buffer.clear();
        this.result.write(str);
    }

    private void write(String str, String str2) {
        this.buffer.write(this.result);
        this.buffer.clear();
        if (!isEmpty(str2)) {
            this.result.write(str2);
            this.result.write(58);
        }
        this.result.write(str);
    }

    private void write(char[] cArr) {
        this.buffer.write(this.result);
        this.buffer.clear();
        this.result.write(cArr);
    }

    public void flush() {
        this.buffer.write(this.result);
        this.buffer.clear();
        this.result.flush();
    }

    public void writeAttribute(String str, String str2, String str3) {
        if (this.last != Tag.START) {
            throw new NodeException("Start element required");
        }
        write(' ');
        write(str, str3);
        write('=');
        write('\"');
        escape(str2);
        write('\"');
    }

    public void writeComment(String str) {
        String pVar = this.indenter.top();
        if (this.last == Tag.START) {
            append('>');
        }
        if (pVar != null) {
            append(pVar);
            append(OPEN);
            append(str);
            append(CLOSE);
        }
        this.last = Tag.COMMENT;
    }

    public void writeEnd(String str, String str2) {
        String pop = this.indenter.pop();
        if (this.last == Tag.START) {
            write('/');
            write('>');
        } else {
            if (this.last != Tag.TEXT) {
                write(pop);
            }
            if (this.last != Tag.START) {
                write('<');
                write('/');
                write(str, str2);
                write('>');
            }
        }
        this.last = Tag.END;
    }

    public void writeNamespace(String str, String str2) {
        if (this.last != Tag.START) {
            throw new NodeException("Start element required");
        }
        write(' ');
        write(NAMESPACE);
        if (!isEmpty(str2)) {
            write(':');
            write(str2);
        }
        write('=');
        write('\"');
        escape(str);
        write('\"');
    }

    public void writeProlog() {
        if (this.prolog != null) {
            write(this.prolog);
            write("\n");
        }
    }

    public void writeStart(String str, String str2) {
        String push = this.indenter.push();
        if (this.last == Tag.START) {
            append('>');
        }
        flush();
        append(push);
        append('<');
        if (!isEmpty(str2)) {
            append(str2);
            append(':');
        }
        append(str);
        this.last = Tag.START;
    }

    public void writeText(String str) {
        writeText(str, Mode.ESCAPE);
    }

    public void writeText(String str, Mode mode) {
        if (this.last == Tag.START) {
            write('>');
        }
        if (mode == Mode.DATA) {
            data(str);
        } else {
            escape(str);
        }
        this.last = Tag.TEXT;
    }
}

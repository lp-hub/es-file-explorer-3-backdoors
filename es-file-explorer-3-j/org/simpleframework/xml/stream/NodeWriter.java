package org.simpleframework.xml.stream;

import java.io.Writer;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class NodeWriter {
    private final Set active;
    private final OutputStack stack;
    private final boolean verbose;
    private final Formatter writer;

    public NodeWriter(Writer writer) {
        this(writer, new Format());
    }

    public NodeWriter(Writer writer, Format format) {
        this(writer, format, false);
    }

    private NodeWriter(Writer writer, Format format, boolean z) {
        this.writer = new Formatter(writer, format);
        this.active = new HashSet();
        this.stack = new OutputStack(this.active);
        this.verbose = z;
    }

    private void writeAttributes(OutputNode outputNode) {
        NodeMap<OutputNode> attributes = outputNode.getAttributes();
        for (String str : attributes) {
            OutputNode outputNode2 = attributes.get(str);
            this.writer.writeAttribute(str, outputNode2.getValue(), outputNode2.getPrefix(this.verbose));
        }
        this.active.remove(outputNode);
    }

    private void writeComment(OutputNode outputNode) {
        String comment = outputNode.getComment();
        if (comment != null) {
            this.writer.writeComment(comment);
        }
    }

    private void writeEnd(OutputNode outputNode) {
        Mode mode;
        Mode mode2 = outputNode.getMode();
        Iterator<OutputNode> it = this.stack.iterator();
        while (true) {
            mode = mode2;
            if (!it.hasNext()) {
                break;
            }
            OutputNode next = it.next();
            if (mode != Mode.INHERIT) {
                break;
            } else {
                mode2 = next.getMode();
            }
        }
        writeEnd(outputNode, mode);
    }

    private void writeEnd(OutputNode outputNode, Mode mode) {
        String value = outputNode.getValue();
        if (value != null) {
            this.writer.writeText(value, mode);
        }
        String name = outputNode.getName();
        String prefix = outputNode.getPrefix(this.verbose);
        if (name != null) {
            this.writer.writeEnd(name, prefix);
            this.writer.flush();
        }
    }

    private void writeName(OutputNode outputNode) {
        String prefix = outputNode.getPrefix(this.verbose);
        String name = outputNode.getName();
        if (name != null) {
            this.writer.writeStart(name, prefix);
        }
    }

    private void writeNamespaces(OutputNode outputNode) {
        NamespaceMap namespaces = outputNode.getNamespaces();
        for (String str : namespaces) {
            this.writer.writeNamespace(str, namespaces.getPrefix(str));
        }
    }

    private OutputNode writeStart(OutputNode outputNode, String str) {
        OutputElement outputElement = new OutputElement(outputNode, this, str);
        if (str == null) {
            throw new NodeException("Can not have a null name");
        }
        return this.stack.push(outputElement);
    }

    private void writeStart(OutputNode outputNode) {
        writeComment(outputNode);
        writeName(outputNode);
        writeAttributes(outputNode);
        writeNamespaces(outputNode);
    }

    public void commit(OutputNode outputNode) {
        if (this.stack.contains(outputNode)) {
            OutputNode pVar = this.stack.top();
            if (!isCommitted(pVar)) {
                writeStart(pVar);
            }
            while (this.stack.top() != outputNode) {
                writeEnd(this.stack.pop());
            }
            writeEnd(outputNode);
            this.stack.pop();
        }
    }

    public boolean isCommitted(OutputNode outputNode) {
        return !this.active.contains(outputNode);
    }

    public boolean isRoot(OutputNode outputNode) {
        return this.stack.bottom() == outputNode;
    }

    public void remove(OutputNode outputNode) {
        if (this.stack.top() != outputNode) {
            throw new NodeException("Cannot remove node");
        }
        this.stack.pop();
    }

    public OutputNode writeElement(OutputNode outputNode, String str) {
        if (this.stack.isEmpty()) {
            return writeStart(outputNode, str);
        }
        if (!this.stack.contains(outputNode)) {
            return null;
        }
        OutputNode pVar = this.stack.top();
        if (!isCommitted(pVar)) {
            writeStart(pVar);
        }
        while (this.stack.top() != outputNode) {
            writeEnd(this.stack.pop());
        }
        return writeStart(outputNode, str);
    }

    public OutputNode writeRoot() {
        OutputDocument outputDocument = new OutputDocument(this, this.stack);
        if (this.stack.isEmpty()) {
            this.writer.writeProlog();
        }
        return outputDocument;
    }
}

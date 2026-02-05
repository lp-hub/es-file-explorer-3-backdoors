package org.simpleframework.xml.stream;

/* loaded from: classes.dex */
class NodeReader {
    private final EventReader reader;
    private final InputStack stack = new InputStack();

    public NodeReader(EventReader eventReader) {
        this.reader = eventReader;
    }

    private boolean isName(EventNode eventNode, String str) {
        String name = eventNode.getName();
        if (name == null) {
            return false;
        }
        return name.equals(str);
    }

    private InputNode readStart(InputNode inputNode, EventNode eventNode) {
        InputElement inputElement = new InputElement(inputNode, this, eventNode);
        return eventNode.isStart() ? this.stack.push(inputElement) : inputElement;
    }

    public boolean isEmpty(InputNode inputNode) {
        return this.stack.top() == inputNode && this.reader.peek().isEnd();
    }

    public boolean isRoot(InputNode inputNode) {
        return this.stack.bottom() == inputNode;
    }

    public InputNode readElement(InputNode inputNode) {
        if (!this.stack.isRelevant(inputNode)) {
            return null;
        }
        EventNode next = this.reader.next();
        while (next != null) {
            if (next.isEnd()) {
                if (this.stack.pop() == inputNode) {
                    return null;
                }
            } else if (next.isStart()) {
                return readStart(inputNode, next);
            }
            next = this.reader.next();
        }
        return null;
    }

    public InputNode readElement(InputNode inputNode, String str) {
        if (!this.stack.isRelevant(inputNode)) {
            return null;
        }
        EventNode peek = this.reader.peek();
        while (peek != null) {
            if (peek.isEnd()) {
                if (this.stack.top() == inputNode) {
                    return null;
                }
                this.stack.pop();
            } else if (peek.isStart()) {
                if (isName(peek, str)) {
                    return readElement(inputNode);
                }
                return null;
            }
            this.reader.next();
            peek = this.reader.peek();
        }
        return null;
    }

    public InputNode readRoot() {
        InputNode inputNode = null;
        if (this.stack.isEmpty() && (inputNode = readElement(null)) == null) {
            throw new NodeException("Document has no root element");
        }
        return inputNode;
    }

    public String readValue(InputNode inputNode) {
        StringBuilder sb = new StringBuilder();
        while (this.stack.top() == inputNode) {
            EventNode peek = this.reader.peek();
            if (!peek.isText()) {
                if (sb.length() != 0) {
                    return sb.toString();
                }
                return null;
            }
            sb.append(peek.getValue());
            this.reader.next();
        }
        return null;
    }

    public void skipElement(InputNode inputNode) {
        do {
        } while (readElement(inputNode) != null);
    }
}

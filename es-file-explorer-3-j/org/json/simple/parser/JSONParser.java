package org.json.simple.parser;

import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

/* loaded from: classes.dex */
public class JSONParser {
    public static final int S_END = 6;
    public static final int S_INIT = 0;
    public static final int S_IN_ARRAY = 3;
    public static final int S_IN_ERROR = -1;
    public static final int S_IN_FINISHED_VALUE = 1;
    public static final int S_IN_OBJECT = 2;
    public static final int S_IN_PAIR_VALUE = 5;
    public static final int S_PASSED_PAIR_KEY = 4;
    private LinkedList handlerStatusStack;
    private Yylex lexer = new Yylex((Reader) null);
    private Yytoken token = null;
    private int status = 0;

    private List createArrayContainer(ContainerFactory containerFactory) {
        List creatArrayContainer;
        return (containerFactory == null || (creatArrayContainer = containerFactory.creatArrayContainer()) == null) ? new JSONArray() : creatArrayContainer;
    }

    private Map createObjectContainer(ContainerFactory containerFactory) {
        Map createObjectContainer;
        return (containerFactory == null || (createObjectContainer = containerFactory.createObjectContainer()) == null) ? new JSONObject() : createObjectContainer;
    }

    private void nextToken() {
        this.token = this.lexer.yylex();
        if (this.token == null) {
            this.token = new Yytoken(-1, null);
        }
    }

    private int peekStatus(LinkedList linkedList) {
        if (linkedList.size() == 0) {
            return -1;
        }
        return ((Integer) linkedList.getFirst()).intValue();
    }

    public int getPosition() {
        return this.lexer.getPosition();
    }

    public Object parse(Reader reader) {
        return parse(reader, (ContainerFactory) null);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x0014. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:14:0x001b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:5:0x0017 A[Catch: IOException -> 0x0028, TryCatch #0 {IOException -> 0x0028, blocks: (B:3:0x000f, B:4:0x0014, B:5:0x0017, B:15:0x001b, B:16:0x0027, B:7:0x01ce, B:17:0x002a, B:18:0x002e, B:19:0x0031, B:20:0x0035, B:21:0x004a, B:22:0x005f, B:51:0x0074, B:53:0x007a, B:55:0x007f, B:56:0x008b, B:23:0x008c, B:24:0x0090, B:25:0x0093, B:26:0x0097, B:28:0x009f, B:29:0x00b7, B:30:0x00bc, B:32:0x00c2, B:33:0x00d0, B:34:0x00d5, B:35:0x00d9, B:36:0x00dc, B:37:0x00e1, B:38:0x00ff, B:39:0x0127, B:40:0x014f, B:41:0x0153, B:42:0x0156, B:43:0x015b, B:44:0x016a, B:46:0x0170, B:47:0x017e, B:48:0x0183, B:49:0x01a2, B:58:0x01c1, B:59:0x01cd), top: B:2:0x000f }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x01ce A[Catch: IOException -> 0x0028, TRY_LEAVE, TryCatch #0 {IOException -> 0x0028, blocks: (B:3:0x000f, B:4:0x0014, B:5:0x0017, B:15:0x001b, B:16:0x0027, B:7:0x01ce, B:17:0x002a, B:18:0x002e, B:19:0x0031, B:20:0x0035, B:21:0x004a, B:22:0x005f, B:51:0x0074, B:53:0x007a, B:55:0x007f, B:56:0x008b, B:23:0x008c, B:24:0x0090, B:25:0x0093, B:26:0x0097, B:28:0x009f, B:29:0x00b7, B:30:0x00bc, B:32:0x00c2, B:33:0x00d0, B:34:0x00d5, B:35:0x00d9, B:36:0x00dc, B:37:0x00e1, B:38:0x00ff, B:39:0x0127, B:40:0x014f, B:41:0x0153, B:42:0x0156, B:43:0x015b, B:44:0x016a, B:46:0x0170, B:47:0x017e, B:48:0x0183, B:49:0x01a2, B:58:0x01c1, B:59:0x01cd), top: B:2:0x000f }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object parse(Reader reader, ContainerFactory containerFactory) {
        reset(reader);
        LinkedList linkedList = new LinkedList();
        LinkedList linkedList2 = new LinkedList();
        do {
            try {
                nextToken();
                switch (this.status) {
                    case -1:
                        throw new ParseException(getPosition(), 1, this.token);
                    case 0:
                        switch (this.token.type) {
                            case 0:
                                this.status = 1;
                                linkedList.addFirst(new Integer(this.status));
                                linkedList2.addFirst(this.token.value);
                                break;
                            case 1:
                                this.status = 2;
                                linkedList.addFirst(new Integer(this.status));
                                linkedList2.addFirst(createObjectContainer(containerFactory));
                                break;
                            case 2:
                            default:
                                this.status = -1;
                                break;
                            case 3:
                                this.status = 3;
                                linkedList.addFirst(new Integer(this.status));
                                linkedList2.addFirst(createArrayContainer(containerFactory));
                                break;
                        }
                        if (this.status == -1) {
                            break;
                        } else {
                            throw new ParseException(getPosition(), 1, this.token);
                        }
                    case 1:
                        if (this.token.type == -1) {
                            return linkedList2.removeFirst();
                        }
                        throw new ParseException(getPosition(), 1, this.token);
                    case 2:
                        switch (this.token.type) {
                            case 0:
                                if (this.token.value instanceof String) {
                                    linkedList2.addFirst((String) this.token.value);
                                    this.status = 4;
                                    linkedList.addFirst(new Integer(this.status));
                                } else {
                                    this.status = -1;
                                }
                                if (this.status == -1) {
                                }
                                break;
                            case 1:
                            case 3:
                            case 4:
                            default:
                                this.status = -1;
                                if (this.status == -1) {
                                }
                                break;
                            case 2:
                                if (linkedList2.size() > 1) {
                                    linkedList.removeFirst();
                                    linkedList2.removeFirst();
                                    this.status = peekStatus(linkedList);
                                } else {
                                    this.status = 1;
                                }
                                if (this.status == -1) {
                                }
                                break;
                            case 5:
                                if (this.status == -1) {
                                }
                                break;
                        }
                    case 3:
                        switch (this.token.type) {
                            case 0:
                                ((List) linkedList2.getFirst()).add(this.token.value);
                                if (this.status == -1) {
                                }
                                break;
                            case 1:
                                List list = (List) linkedList2.getFirst();
                                Map createObjectContainer = createObjectContainer(containerFactory);
                                list.add(createObjectContainer);
                                this.status = 2;
                                linkedList.addFirst(new Integer(this.status));
                                linkedList2.addFirst(createObjectContainer);
                                if (this.status == -1) {
                                }
                                break;
                            case 2:
                            default:
                                this.status = -1;
                                if (this.status == -1) {
                                }
                                break;
                            case 3:
                                List list2 = (List) linkedList2.getFirst();
                                List createArrayContainer = createArrayContainer(containerFactory);
                                list2.add(createArrayContainer);
                                this.status = 3;
                                linkedList.addFirst(new Integer(this.status));
                                linkedList2.addFirst(createArrayContainer);
                                if (this.status == -1) {
                                }
                                break;
                            case 4:
                                if (linkedList2.size() > 1) {
                                    linkedList.removeFirst();
                                    linkedList2.removeFirst();
                                    this.status = peekStatus(linkedList);
                                } else {
                                    this.status = 1;
                                }
                                if (this.status == -1) {
                                }
                                break;
                            case 5:
                                break;
                        }
                    case 4:
                        switch (this.token.type) {
                            case 0:
                                linkedList.removeFirst();
                                ((Map) linkedList2.getFirst()).put((String) linkedList2.removeFirst(), this.token.value);
                                this.status = peekStatus(linkedList);
                                if (this.status == -1) {
                                }
                                break;
                            case 1:
                                linkedList.removeFirst();
                                String str = (String) linkedList2.removeFirst();
                                Map map = (Map) linkedList2.getFirst();
                                Map createObjectContainer2 = createObjectContainer(containerFactory);
                                map.put(str, createObjectContainer2);
                                this.status = 2;
                                linkedList.addFirst(new Integer(this.status));
                                linkedList2.addFirst(createObjectContainer2);
                                if (this.status == -1) {
                                }
                                break;
                            case 2:
                            case 4:
                            case 5:
                            default:
                                this.status = -1;
                                if (this.status == -1) {
                                }
                                break;
                            case 3:
                                linkedList.removeFirst();
                                String str2 = (String) linkedList2.removeFirst();
                                Map map2 = (Map) linkedList2.getFirst();
                                List createArrayContainer2 = createArrayContainer(containerFactory);
                                map2.put(str2, createArrayContainer2);
                                this.status = 3;
                                linkedList.addFirst(new Integer(this.status));
                                linkedList2.addFirst(createArrayContainer2);
                                if (this.status == -1) {
                                }
                                break;
                            case 6:
                                break;
                        }
                }
            } catch (IOException e) {
                throw e;
            }
        } while (this.token.type != -1);
        throw new ParseException(getPosition(), 1, this.token);
    }

    public Object parse(String str) {
        return parse(str, (ContainerFactory) null);
    }

    public Object parse(String str, ContainerFactory containerFactory) {
        try {
            return parse(new StringReader(str), containerFactory);
        } catch (IOException e) {
            throw new ParseException(-1, 2, e);
        }
    }

    public void parse(Reader reader, ContentHandler contentHandler) {
        parse(reader, contentHandler, false);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:39:0x00bd. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:59:0x010f. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:7:0x0012. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:86:0x018c. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:10:0x01f2 A[Catch: IOException -> 0x0026, ParseException -> 0x004a, RuntimeException -> 0x009e, Error -> 0x00b2, TRY_LEAVE, TryCatch #2 {IOException -> 0x0026, Error -> 0x00b2, RuntimeException -> 0x009e, ParseException -> 0x004a, blocks: (B:6:0x0010, B:7:0x0012, B:8:0x0015, B:18:0x0019, B:19:0x0025, B:10:0x01f2, B:20:0x0039, B:21:0x0043, B:22:0x0046, B:24:0x004f, B:28:0x0066, B:33:0x007a, B:115:0x008e, B:117:0x0097, B:120:0x00a3, B:121:0x00b1, B:38:0x00b6, B:39:0x00bd, B:40:0x00c0, B:41:0x00c5, B:43:0x00cd, B:48:0x00e8, B:49:0x00ed, B:51:0x00f3, B:52:0x00fc, B:57:0x0104, B:58:0x0108, B:59:0x010f, B:60:0x0112, B:61:0x0117, B:63:0x012a, B:70:0x0132, B:75:0x0153, B:80:0x0174, B:85:0x0185, B:86:0x018c, B:87:0x018f, B:88:0x0194, B:93:0x01a0, B:95:0x01a6, B:96:0x01af, B:101:0x01b7, B:102:0x01bb, B:107:0x01d0, B:123:0x01e5, B:124:0x01f1), top: B:5:0x0010 }] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0019 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0015 A[Catch: IOException -> 0x0026, ParseException -> 0x004a, RuntimeException -> 0x009e, Error -> 0x00b2, TryCatch #2 {IOException -> 0x0026, Error -> 0x00b2, RuntimeException -> 0x009e, ParseException -> 0x004a, blocks: (B:6:0x0010, B:7:0x0012, B:8:0x0015, B:18:0x0019, B:19:0x0025, B:10:0x01f2, B:20:0x0039, B:21:0x0043, B:22:0x0046, B:24:0x004f, B:28:0x0066, B:33:0x007a, B:115:0x008e, B:117:0x0097, B:120:0x00a3, B:121:0x00b1, B:38:0x00b6, B:39:0x00bd, B:40:0x00c0, B:41:0x00c5, B:43:0x00cd, B:48:0x00e8, B:49:0x00ed, B:51:0x00f3, B:52:0x00fc, B:57:0x0104, B:58:0x0108, B:59:0x010f, B:60:0x0112, B:61:0x0117, B:63:0x012a, B:70:0x0132, B:75:0x0153, B:80:0x0174, B:85:0x0185, B:86:0x018c, B:87:0x018f, B:88:0x0194, B:93:0x01a0, B:95:0x01a6, B:96:0x01af, B:101:0x01b7, B:102:0x01bb, B:107:0x01d0, B:123:0x01e5, B:124:0x01f1), top: B:5:0x0010 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void parse(Reader reader, ContentHandler contentHandler, boolean z) {
        if (!z) {
            reset(reader);
            this.handlerStatusStack = new LinkedList();
        } else if (this.handlerStatusStack == null) {
            reset(reader);
            this.handlerStatusStack = new LinkedList();
        }
        LinkedList linkedList = this.handlerStatusStack;
        do {
            try {
                switch (this.status) {
                    case -1:
                        throw new ParseException(getPosition(), 1, this.token);
                    case 0:
                        contentHandler.startJSON();
                        nextToken();
                        switch (this.token.type) {
                            case 0:
                                this.status = 1;
                                linkedList.addFirst(new Integer(this.status));
                                if (!contentHandler.primitive(this.token.value)) {
                                    return;
                                }
                                break;
                            case 1:
                                this.status = 2;
                                linkedList.addFirst(new Integer(this.status));
                                if (!contentHandler.startObject()) {
                                    return;
                                }
                                break;
                            case 2:
                            default:
                                this.status = -1;
                                break;
                            case 3:
                                this.status = 3;
                                linkedList.addFirst(new Integer(this.status));
                                if (!contentHandler.startArray()) {
                                    return;
                                }
                                break;
                        }
                        if (this.status != -1) {
                            break;
                        } else {
                            throw new ParseException(getPosition(), 1, this.token);
                        }
                    case 1:
                        nextToken();
                        if (this.token.type != -1) {
                            this.status = -1;
                            throw new ParseException(getPosition(), 1, this.token);
                        }
                        contentHandler.endJSON();
                        this.status = 6;
                        return;
                    case 2:
                        nextToken();
                        switch (this.token.type) {
                            case 0:
                                if (this.token.value instanceof String) {
                                    String str = (String) this.token.value;
                                    this.status = 4;
                                    linkedList.addFirst(new Integer(this.status));
                                    if (!contentHandler.startObjectEntry(str)) {
                                        return;
                                    }
                                } else {
                                    this.status = -1;
                                }
                                if (this.status != -1) {
                                }
                                break;
                            case 1:
                            case 3:
                            case 4:
                            default:
                                this.status = -1;
                                if (this.status != -1) {
                                }
                                break;
                            case 2:
                                if (linkedList.size() > 1) {
                                    linkedList.removeFirst();
                                    this.status = peekStatus(linkedList);
                                } else {
                                    this.status = 1;
                                }
                                if (!contentHandler.endObject()) {
                                    return;
                                }
                                if (this.status != -1) {
                                }
                                break;
                            case 5:
                                if (this.status != -1) {
                                }
                                break;
                        }
                    case 3:
                        nextToken();
                        switch (this.token.type) {
                            case 0:
                                if (!contentHandler.primitive(this.token.value)) {
                                    return;
                                }
                                if (this.status != -1) {
                                }
                                break;
                            case 1:
                                this.status = 2;
                                linkedList.addFirst(new Integer(this.status));
                                if (!contentHandler.startObject()) {
                                    return;
                                }
                                if (this.status != -1) {
                                }
                                break;
                            case 2:
                            default:
                                this.status = -1;
                                if (this.status != -1) {
                                }
                                break;
                            case 3:
                                this.status = 3;
                                linkedList.addFirst(new Integer(this.status));
                                if (!contentHandler.startArray()) {
                                    return;
                                }
                                if (this.status != -1) {
                                }
                                break;
                            case 4:
                                if (linkedList.size() > 1) {
                                    linkedList.removeFirst();
                                    this.status = peekStatus(linkedList);
                                } else {
                                    this.status = 1;
                                }
                                if (!contentHandler.endArray()) {
                                    return;
                                }
                                if (this.status != -1) {
                                }
                                break;
                            case 5:
                                break;
                        }
                    case 4:
                        nextToken();
                        switch (this.token.type) {
                            case 0:
                                linkedList.removeFirst();
                                this.status = peekStatus(linkedList);
                                if (!contentHandler.primitive(this.token.value)) {
                                    return;
                                }
                                if (!contentHandler.endObjectEntry()) {
                                    return;
                                }
                                if (this.status != -1) {
                                }
                                break;
                            case 1:
                                linkedList.removeFirst();
                                linkedList.addFirst(new Integer(5));
                                this.status = 2;
                                linkedList.addFirst(new Integer(this.status));
                                if (!contentHandler.startObject()) {
                                    return;
                                }
                                if (this.status != -1) {
                                }
                                break;
                            case 2:
                            case 4:
                            case 5:
                            default:
                                this.status = -1;
                                if (this.status != -1) {
                                }
                                break;
                            case 3:
                                linkedList.removeFirst();
                                linkedList.addFirst(new Integer(5));
                                this.status = 3;
                                linkedList.addFirst(new Integer(this.status));
                                if (!contentHandler.startArray()) {
                                    return;
                                }
                                if (this.status != -1) {
                                }
                                break;
                            case 6:
                                break;
                        }
                    case 5:
                        linkedList.removeFirst();
                        this.status = peekStatus(linkedList);
                        if (!contentHandler.endObjectEntry()) {
                            return;
                        }
                        if (this.status != -1) {
                        }
                        break;
                    case 6:
                        return;
                }
            } catch (IOException e) {
                this.status = -1;
                throw e;
            } catch (Error e2) {
                this.status = -1;
                throw e2;
            } catch (RuntimeException e3) {
                this.status = -1;
                throw e3;
            } catch (ParseException e4) {
                this.status = -1;
                throw e4;
            }
        } while (this.token.type != -1);
        this.status = -1;
        throw new ParseException(getPosition(), 1, this.token);
    }

    public void parse(String str, ContentHandler contentHandler) {
        parse(str, contentHandler, false);
    }

    public void parse(String str, ContentHandler contentHandler, boolean z) {
        try {
            parse(new StringReader(str), contentHandler, z);
        } catch (IOException e) {
            throw new ParseException(-1, 2, e);
        }
    }

    public void reset() {
        this.token = null;
        this.status = 0;
        this.handlerStatusStack = null;
    }

    public void reset(Reader reader) {
        this.lexer.yyreset(reader);
        reset();
    }
}

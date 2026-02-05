package com.estrongs.a;

import android.app.Activity;
import android.os.ConditionVariable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Stack;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class a {
    public static final int TASK_STATUS_DONE = 4;
    public static final int TASK_STATUS_NOT_START = 1;
    public static final int TASK_STATUS_PAUSE = 3;
    public static final int TASK_STATUS_RUNNING = 2;
    public static final int TASK_STATUS_STOP = 5;
    private ConditionVariable async_cond;
    private Thread async_thread;
    protected boolean canCancel;
    protected boolean canHide;
    protected boolean canPause;
    protected boolean canRestart;
    private ConditionVariable cond;
    private String description;
    private com.estrongs.a.a.a e;
    protected long endTime;
    HashMap<String, com.estrongs.a.a.c> expDatas;
    private boolean hasNotifyStop;
    private long id;
    public boolean inTestMode;
    public int notificationId;
    private List<com.estrongs.a.a.j> postListeners;
    private int priority;
    public com.estrongs.a.a.i processData;
    private List<com.estrongs.a.a.h> progessListeners;
    private Integer request_task_status_change;
    protected long startTime;
    private List<com.estrongs.a.a.k> statusListeners;
    private JSONObject summary;
    private boolean task_hide;
    private p task_result;
    private Integer task_status;
    protected int task_type;
    public boolean waitingDecision;
    private static HashMap<Long, Stack<a>> tasks = new HashMap<>();
    private static Map<Long, a> id2task = new HashMap();

    public a() {
        this.processData = new com.estrongs.a.a.i();
        this.notificationId = -1;
        this.id = System.currentTimeMillis();
        this.task_status = new Integer(1);
        this.request_task_status_change = new Integer(1);
        this.cond = new ConditionVariable();
        this.statusListeners = new ArrayList();
        this.postListeners = new ArrayList();
        this.progessListeners = new ArrayList();
        this.e = null;
        this.task_hide = false;
        this.async_thread = null;
        this.async_cond = new ConditionVariable();
        this.summary = new JSONObject();
        this.startTime = -1L;
        this.endTime = -1L;
        this.hasNotifyStop = false;
        this.priority = 5;
        this.task_result = new p();
        this.task_type = 0;
        this.canHide = true;
        this.canPause = false;
        this.canCancel = true;
        this.canRestart = false;
        this.waitingDecision = false;
        this.expDatas = new HashMap<>();
        this.inTestMode = false;
        id2task.put(Long.valueOf(this.id), this);
    }

    public a(JSONObject jSONObject) {
        this();
        this.summary = jSONObject;
        this.id = jSONObject.optLong("task_id", this.id);
        this.task_type = jSONObject.optInt("task_type");
        this.canRestart = jSONObject.optBoolean("restartable");
        this.description = jSONObject.optString("task_desc");
        this.startTime = jSONObject.optLong("start_time", -1L);
        this.endTime = jSONObject.optLong("end_time", -1L);
        setTaskStatus(jSONObject.optInt("status"));
    }

    public static boolean existsTask(Class cls) {
        boolean z;
        synchronized (tasks) {
            Iterator<Stack<a>> it = tasks.values().iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                }
                Stack<a> next = it.next();
                if (!next.isEmpty() && cls.isInstance(next.peek())) {
                    z = true;
                    break;
                }
            }
        }
        return z;
    }

    public static a getCurrentTask() {
        synchronized (tasks) {
            Stack<a> stack = tasks.get(Long.valueOf(Thread.currentThread().getId()));
            if (stack == null || stack.size() <= 0) {
                return null;
            }
            a peek = stack.peek();
            if (peek.isTaskHide()) {
                return null;
            }
            return peek;
        }
    }

    public static String getStatusString(int i) {
        return i == 4 ? "finish" : i == 1 ? "notStart" : i == 3 ? "pause" : i == 2 ? "running" : i == 5 ? "error" : "unknown";
    }

    public static a getTask(long j) {
        return id2task.get(Long.valueOf(j));
    }

    private static a removeTask() {
        a pop;
        synchronized (tasks) {
            Stack<a> stack = tasks.get(Long.valueOf(Thread.currentThread().getId()));
            pop = (stack == null || stack.size() <= 0) ? null : stack.pop();
        }
        return pop;
    }

    private static void saveTask(a aVar) {
        synchronized (tasks) {
            long id = Thread.currentThread().getId();
            Stack<a> stack = tasks.get(Long.valueOf(id));
            if (stack == null) {
                stack = new Stack<>();
                tasks.put(Long.valueOf(id), stack);
            }
            stack.push(aVar);
        }
    }

    private void setRequestStatus(int i) {
        synchronized (this.request_task_status_change) {
            this.request_task_status_change = Integer.valueOf(i);
        }
    }

    private void statusChangeNotify(int i, int i2) {
        recordSummary("status", Integer.valueOf(i2));
        LinkedList linkedList = new LinkedList();
        synchronized (this.statusListeners) {
            linkedList.addAll(this.statusListeners);
        }
        int i3 = 0;
        while (true) {
            int i4 = i3;
            if (i4 >= linkedList.size()) {
                linkedList.clear();
                return;
            } else {
                ((com.estrongs.a.a.k) linkedList.get(i4)).a(this, i, i2);
                i3 = i4 + 1;
            }
        }
    }

    public static void stopTasks(Class cls) {
        synchronized (tasks) {
            for (Stack<a> stack : tasks.values()) {
                if (!stack.isEmpty()) {
                    a peek = stack.peek();
                    if (cls.isInstance(peek)) {
                        peek.requestStop();
                    }
                }
            }
        }
    }

    public static void test(Activity activity, boolean z) {
        c cVar = new c();
        d dVar = new d(activity);
        a aVar = new a();
        aVar.inTestMode = true;
        aVar.addTaskStatusChangeListener(cVar);
        aVar.setTaskDecisionListener(dVar);
        if (z) {
            aVar.execute();
        } else {
            new k(aVar).start();
        }
    }

    public void addPostListener(com.estrongs.a.a.j jVar) {
        synchronized (this.postListeners) {
            if (!this.postListeners.contains(jVar)) {
                this.postListeners.add(jVar);
            }
        }
    }

    public void addProgressListener(com.estrongs.a.a.h hVar) {
        if (this.progessListeners.contains(hVar)) {
            return;
        }
        this.progessListeners.add(hVar);
    }

    public void addProgressListeners(List<com.estrongs.a.a.h> list) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= list.size()) {
                return;
            }
            addProgressListener(list.get(i2));
            i = i2 + 1;
        }
    }

    public void addTaskStatusChangeListener(com.estrongs.a.a.k kVar) {
        synchronized (this.statusListeners) {
            if (!this.statusListeners.contains(kVar)) {
                this.statusListeners.add(kVar);
            }
        }
    }

    public boolean canCancel() {
        return this.canCancel;
    }

    public boolean canHide() {
        return this.canHide;
    }

    public boolean canPause() {
        return this.canPause;
    }

    public boolean canRestart() {
        return this.canRestart;
    }

    public void enableTaskHide(boolean z) {
        this.task_hide = z;
    }

    public void execute() {
        execute(true);
    }

    public void execute(boolean z) {
        if (getTaskStatus() == 1 || getTaskStatus() == 5 || getTaskStatus() == 4) {
            this.hasNotifyStop = false;
            if (!z) {
                executeHelper();
                return;
            }
            this.async_thread = new b(this);
            this.async_thread.setPriority(this.priority);
            this.async_thread.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void executeHelper() {
        boolean z = false;
        reset();
        saveTask(this);
        if (!id2task.containsKey(Long.valueOf(this.id))) {
            id2task.put(Long.valueOf(this.id), this);
        }
        setTaskStatus(2);
        if (needSystemLock()) {
            com.estrongs.android.util.m.a();
        }
        try {
            z = task();
        } catch (Exception e) {
            e.printStackTrace();
            setTaskResult(10000, new q(e.toString(), e));
        }
        if (needSystemLock()) {
            com.estrongs.android.util.m.b();
        }
        setTaskStatus(z ? 4 : 5);
        if (!z && this.task_result.f229a == 0) {
            setTaskResult(10000, null);
        }
        id2task.remove(Long.valueOf(this.id));
        removeTask();
        this.progessListeners.clear();
        synchronized (this.statusListeners) {
            this.statusListeners.clear();
        }
        this.e = null;
        try {
            postTask();
            synchronized (this.postListeners) {
                Iterator<com.estrongs.a.a.j> it = this.postListeners.iterator();
                while (it.hasNext()) {
                    try {
                        it.next().a(this, true);
                    } catch (Exception e2) {
                    }
                }
                this.postListeners.clear();
            }
        } catch (Exception e3) {
            synchronized (this.postListeners) {
                Iterator<com.estrongs.a.a.j> it2 = this.postListeners.iterator();
                while (it2.hasNext()) {
                    try {
                        it2.next().a(this, false);
                    } catch (Exception e4) {
                    }
                }
                this.postListeners.clear();
            }
        } catch (Throwable th) {
            synchronized (this.postListeners) {
                Iterator<com.estrongs.a.a.j> it3 = this.postListeners.iterator();
                while (it3.hasNext()) {
                    try {
                        it3.next().a(this, true);
                    } catch (Exception e5) {
                    }
                }
                this.postListeners.clear();
                throw th;
            }
        }
    }

    public void forceResume() {
        this.cond.open();
    }

    public com.estrongs.a.a.c getDecision(Class<?> cls, Object... objArr) {
        this.waitingDecision = true;
        com.estrongs.a.a.c decisionData = getDecisionData(cls);
        if (decisionData != null && this.e != null) {
            if (objArr != null) {
                decisionData.a(objArr);
            }
            if (!decisionData.e || (!decisionData.f && !this.hasNotifyStop)) {
                this.e.a(this, decisionData);
                suspend();
            }
        }
        this.waitingDecision = false;
        return decisionData;
    }

    public com.estrongs.a.a.c getDecisionData(Class<?> cls) {
        String name = cls.getName();
        com.estrongs.a.a.c cVar = this.expDatas.get(name);
        if (cVar != null) {
            return cVar;
        }
        try {
            com.estrongs.a.a.c cVar2 = (com.estrongs.a.a.c) cls.newInstance();
            this.expDatas.put(name, cVar2);
            return cVar2;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public String getDescription() {
        return this.description;
    }

    public List<com.estrongs.a.a.h> getProgressListeners() {
        return this.progessListeners;
    }

    public long getStartTime() {
        return this.startTime;
    }

    public long getTaskId() {
        return this.id;
    }

    public p getTaskResult() {
        return this.task_result;
    }

    public int getTaskStatus() {
        int intValue;
        if (this.hasNotifyStop && this.task_status.intValue() == 2) {
            return 5;
        }
        synchronized (this.task_status) {
            intValue = this.task_status.intValue();
        }
        return intValue;
    }

    public int getTastType() {
        return this.task_type;
    }

    public void handleMessage(int i, Object... objArr) {
        if (i == 5) {
            ((com.estrongs.a.a.c) objArr[0]).e = true;
            resume();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean hasProgressListener() {
        return this.progessListeners.size() > 0;
    }

    public boolean isTaskHide() {
        return this.task_hide;
    }

    protected boolean needSystemLock() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onProgress(com.estrongs.a.a.i iVar) {
        if (this.hasNotifyStop) {
            return;
        }
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.progessListeners.size()) {
                return;
            }
            this.progessListeners.get(i2).a(this, iVar);
            i = i2 + 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void postTask() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public synchronized void recordSummary(String str, Object obj) {
        try {
            this.summary.put(str, obj);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    public void removePostListener(com.estrongs.a.a.j jVar) {
        synchronized (this.postListeners) {
            this.postListeners.remove(jVar);
        }
    }

    public void removeProgressListener(com.estrongs.a.a.h hVar) {
        this.progessListeners.remove(hVar);
    }

    public void removeTaskStatusChangeListener(com.estrongs.a.a.k kVar) {
        synchronized (this.statusListeners) {
            this.statusListeners.remove(kVar);
        }
    }

    public void requestStop() {
        int taskStatus;
        if (this.hasNotifyStop || (taskStatus = getTaskStatus()) == 5 || taskStatus == 4) {
            return;
        }
        setRequestStatus(5);
        if (taskStatus == 3) {
            this.cond.open();
            return;
        }
        this.canRestart = false;
        this.hasNotifyStop = true;
        setTaskResult(1, null);
        statusChangeNotify(taskStatus, 5);
    }

    public void requsestPause() {
        if (getTaskStatus() != 2) {
            return;
        }
        setRequestStatus(3);
    }

    public void reset() {
        this.request_task_status_change = 1;
        this.task_status = 1;
        this.processData.f197b = 0;
        setTaskResult(0, null);
    }

    public void resume() {
        if (getTaskStatus() != 3) {
            return;
        }
        setRequestStatus(1);
        this.cond.open();
    }

    public void sendMessage(int i, Object... objArr) {
        handleMessage(i, objArr);
    }

    public void setCanHide(boolean z) {
        this.canHide = z;
    }

    public void setDescription(String str) {
        this.description = str;
        recordSummary("task_desc", str);
    }

    public void setPriority(int i) {
        this.priority = i;
    }

    public void setTaskDecisionListener(com.estrongs.a.a.a aVar) {
        this.e = aVar;
    }

    public void setTaskResult(int i, Object obj) {
        this.task_result.f229a = i;
        this.task_result.f230b = obj;
    }

    public void setTaskStatus(int i) {
        int intValue = this.task_status.intValue();
        synchronized (this.task_status) {
            if (i == this.task_status.intValue()) {
                return;
            }
            this.task_status = Integer.valueOf(i);
            if (this.hasNotifyStop) {
                return;
            }
            statusChangeNotify(intValue, this.task_status.intValue());
        }
    }

    public synchronized JSONObject summary() {
        return this.summary;
    }

    public void suspend() {
        if (getTaskStatus() != 2) {
            return;
        }
        setTaskStatus(3);
        this.cond.block();
        this.cond.close();
        setTaskStatus(2);
    }

    public boolean task() {
        if (this.inTestMode) {
            for (int i = 1; i < 20; i++) {
                try {
                    Thread.sleep(1000L);
                } catch (Exception e) {
                }
                if (i == 3 || i == 6 || i == 9) {
                    com.estrongs.a.a.e eVar = (com.estrongs.a.a.e) getDecision(com.estrongs.a.a.e.class, "/testfile");
                    if (eVar.g == 2) {
                    }
                    if (eVar.g != 1 && eVar.g == 3) {
                        setTaskResult(6, new q("/testfile", (Exception) null));
                        return false;
                    }
                }
                if (i == 12 || i == 16) {
                    com.estrongs.a.a.d dVar = (com.estrongs.a.a.d) getDecision(com.estrongs.a.a.d.class, "/testfile");
                    if (dVar.g != 2 && dVar.g == 3) {
                        setTaskResult(6, new q("/testfile", (Exception) null));
                        return false;
                    }
                }
                if (taskStopped()) {
                    return false;
                }
            }
        }
        return true;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0011. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0030 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean taskStopped() {
        boolean z;
        int taskStatus = getTaskStatus();
        synchronized (this.request_task_status_change) {
            switch (this.request_task_status_change.intValue()) {
                case 3:
                    if (taskStatus == 2) {
                        setTaskStatus(3);
                        z = true;
                        if (z && this.task_status.intValue() == 3) {
                            this.cond.block();
                            this.cond.close();
                            setTaskStatus(2);
                            synchronized (this.request_task_status_change) {
                                if (this.request_task_status_change.intValue() == 5) {
                                    setTaskResult(1, null);
                                    return true;
                                }
                            }
                        }
                        return false;
                    }
                    break;
                case 4:
                default:
                    z = false;
                    if (z) {
                        this.cond.block();
                        this.cond.close();
                        setTaskStatus(2);
                        synchronized (this.request_task_status_change) {
                        }
                        break;
                    }
                    return false;
                case 5:
                    setTaskResult(1, null);
                    return true;
            }
        }
    }
}

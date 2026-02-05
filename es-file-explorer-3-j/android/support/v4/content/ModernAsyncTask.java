package android.support.v4.content;

import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
abstract class ModernAsyncTask<Params, Progress, Result> {
    private final FutureTask<Result> f;
    private volatile Status g;

    /* renamed from: b, reason: collision with root package name */
    private static final ThreadFactory f42b = new c();
    private static final BlockingQueue<Runnable> c = new LinkedBlockingQueue(10);

    /* renamed from: a, reason: collision with root package name */
    public static final Executor f41a = new ThreadPoolExecutor(5, 128, 1, TimeUnit.SECONDS, c, f42b);
    private static final e d = new e(null);
    private static volatile Executor e = f41a;

    /* loaded from: classes.dex */
    public enum Status {
        PENDING,
        RUNNING,
        FINISHED
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(Result result) {
        if (b()) {
            b(result);
        } else {
            a((ModernAsyncTask<Params, Progress, Result>) result);
        }
        this.g = Status.FINISHED;
    }

    protected void a() {
    }

    protected void a(Result result) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(Progress... progressArr) {
    }

    protected void b(Result result) {
        a();
    }

    public final boolean b() {
        return this.f.isCancelled();
    }
}

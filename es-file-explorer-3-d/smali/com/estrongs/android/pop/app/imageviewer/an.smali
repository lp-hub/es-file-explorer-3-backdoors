.class Lcom/estrongs/android/pop/app/imageviewer/an;
.super Lcom/estrongs/android/pop/app/imageviewer/ai;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/estrongs/android/pop/app/imageviewer/MonitoredActivity;

.field private final b:Landroid/app/ProgressDialog;

.field private final c:Ljava/lang/Runnable;

.field private final d:Landroid/os/Handler;

.field private final e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/MonitoredActivity;Ljava/lang/Runnable;Landroid/app/ProgressDialog;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/ai;-><init>()V

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/ao;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/imageviewer/ao;-><init>(Lcom/estrongs/android/pop/app/imageviewer/an;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/an;->e:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/an;->a:Lcom/estrongs/android/pop/app/imageviewer/MonitoredActivity;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/imageviewer/an;->b:Landroid/app/ProgressDialog;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/imageviewer/an;->c:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/an;->a:Lcom/estrongs/android/pop/app/imageviewer/MonitoredActivity;

    invoke-virtual {v0, p0}, Lcom/estrongs/android/pop/app/imageviewer/MonitoredActivity;->a(Lcom/estrongs/android/pop/app/imageviewer/aj;)V

    iput-object p4, p0, Lcom/estrongs/android/pop/app/imageviewer/an;->d:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/imageviewer/an;)Lcom/estrongs/android/pop/app/imageviewer/MonitoredActivity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/an;->a:Lcom/estrongs/android/pop/app/imageviewer/MonitoredActivity;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/imageviewer/an;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/an;->b:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method public b(Lcom/estrongs/android/pop/app/imageviewer/MonitoredActivity;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/an;->e:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/an;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/an;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Lcom/estrongs/android/pop/app/imageviewer/MonitoredActivity;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/an;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method public d(Lcom/estrongs/android/pop/app/imageviewer/MonitoredActivity;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/an;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    return-void
.end method

.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/an;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/an;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/an;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/an;->d:Landroid/os/Handler;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/an;->e:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0
.end method

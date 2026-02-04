.class Lcom/baidu/mobstat/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:J

.field final synthetic e:Landroid/content/Context;

.field final synthetic f:Lcom/baidu/mobstat/d;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/d;Ljava/lang/String;Ljava/lang/String;IJLandroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobstat/e;->f:Lcom/baidu/mobstat/d;

    iput-object p2, p0, Lcom/baidu/mobstat/e;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/mobstat/e;->b:Ljava/lang/String;

    iput p4, p0, Lcom/baidu/mobstat/e;->c:I

    iput-wide p5, p0, Lcom/baidu/mobstat/e;->d:J

    iput-object p7, p0, Lcom/baidu/mobstat/e;->e:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, Lcom/baidu/mobstat/k;->a()Lcom/baidu/mobstat/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/baidu/mobstat/k;->a()Lcom/baidu/mobstat/k;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/baidu/mobstat/k;->a()Lcom/baidu/mobstat/k;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/b;->a()Lcom/baidu/mobstat/b;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/e;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/mobstat/e;->b:Ljava/lang/String;

    iget v3, p0, Lcom/baidu/mobstat/e;->c:I

    iget-wide v4, p0, Lcom/baidu/mobstat/e;->d:J

    const-wide/16 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/mobstat/b;->a(Ljava/lang/String;Ljava/lang/String;IJJ)V

    invoke-static {}, Lcom/baidu/mobstat/b;->a()Lcom/baidu/mobstat/b;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/e;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/b;->b(Landroid/content/Context;)V

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "stat"

    invoke-static {v2, v0}, Lcom/baidu/mobstat/a/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

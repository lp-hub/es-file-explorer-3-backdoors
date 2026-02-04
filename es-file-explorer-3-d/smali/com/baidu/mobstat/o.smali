.class Lcom/baidu/mobstat/o;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/baidu/mobstat/l;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/l;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobstat/o;->b:Lcom/baidu/mobstat/l;

    iput-object p2, p0, Lcom/baidu/mobstat/o;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "***********************welcome timer log"

    invoke-static {v0}, Lcom/baidu/mobstat/a/c;->a(Ljava/lang/String;)I

    invoke-static {}, Lcom/baidu/mobstat/b;->a()Lcom/baidu/mobstat/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/b;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "***********************welcome timer log start"

    invoke-static {v0}, Lcom/baidu/mobstat/a/c;->a(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/baidu/mobstat/o;->b:Lcom/baidu/mobstat/l;

    iget-object v1, p0, Lcom/baidu/mobstat/o;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mobstat/o;->b:Lcom/baidu/mobstat/l;

    invoke-static {v2}, Lcom/baidu/mobstat/l;->d(Lcom/baidu/mobstat/l;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mobstat/l;->a(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

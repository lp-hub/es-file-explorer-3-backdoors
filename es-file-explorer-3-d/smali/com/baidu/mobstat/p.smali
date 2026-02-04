.class Lcom/baidu/mobstat/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/baidu/mobstat/l;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/l;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobstat/p;->b:Lcom/baidu/mobstat/l;

    iput-object p2, p0, Lcom/baidu/mobstat/p;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/baidu/mobstat/p;->b:Lcom/baidu/mobstat/l;

    invoke-static {}, Lcom/baidu/mobstat/b;->a()Lcom/baidu/mobstat/b;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mobstat/p;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/b;->e(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/baidu/mobstat/l;->a:Z

    iget-object v0, p0, Lcom/baidu/mobstat/p;->b:Lcom/baidu/mobstat/l;

    iget-boolean v0, v0, Lcom/baidu/mobstat/l;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobstat/p;->b:Lcom/baidu/mobstat/l;

    iget-object v1, p0, Lcom/baidu/mobstat/p;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/baidu/mobstat/l;->a(Lcom/baidu/mobstat/l;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

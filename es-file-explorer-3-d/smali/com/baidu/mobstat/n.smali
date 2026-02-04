.class Lcom/baidu/mobstat/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/mobstat/m;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/m;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobstat/n;->a:Lcom/baidu/mobstat/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/baidu/mobstat/n;->a:Lcom/baidu/mobstat/m;

    iget-object v0, v0, Lcom/baidu/mobstat/m;->b:Lcom/baidu/mobstat/l;

    iget-object v1, p0, Lcom/baidu/mobstat/n;->a:Lcom/baidu/mobstat/m;

    iget-object v1, v1, Lcom/baidu/mobstat/m;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mobstat/n;->a:Lcom/baidu/mobstat/m;

    iget-object v2, v2, Lcom/baidu/mobstat/m;->b:Lcom/baidu/mobstat/l;

    invoke-static {v2}, Lcom/baidu/mobstat/l;->d(Lcom/baidu/mobstat/l;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mobstat/l;->a(Landroid/content/Context;Z)V

    return-void
.end method

.class final Lcom/estrongs/fs/impl/pcs/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/fs/impl/i/d;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    const/16 v0, 0x7941

    if-lt p2, v0, :cond_0

    const/16 v0, 0x7946

    if-le p2, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/estrongs/fs/impl/pcs/f;

    invoke-direct {v1, p0}, Lcom/estrongs/fs/impl/pcs/f;-><init>(Lcom/estrongs/fs/impl/pcs/e;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

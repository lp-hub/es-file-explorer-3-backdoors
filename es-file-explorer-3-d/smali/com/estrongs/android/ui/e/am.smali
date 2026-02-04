.class Lcom/estrongs/android/ui/e/am;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/pcs/ag;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/al;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/al;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/am;->a:Lcom/estrongs/android/ui/e/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/aw;->j()Lcom/estrongs/android/ui/pcs/v;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/aw;->j()Lcom/estrongs/android/ui/pcs/v;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1, v2, p1}, Lcom/estrongs/android/ui/pcs/v;->a(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/fs/impl/pcs/b;->a()Lcom/estrongs/fs/impl/pcs/b;

    move-result-object v0

    sget-object v1, Lcom/estrongs/fs/l;->N:Lcom/estrongs/fs/l;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/pcs/b;->setFileType(Lcom/estrongs/fs/l;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/am;->a:Lcom/estrongs/android/ui/e/al;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/al;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/w;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/q;->d(J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/aw;->j()Lcom/estrongs/android/ui/pcs/v;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, v2, v2}, Lcom/estrongs/android/ui/pcs/v;->a(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

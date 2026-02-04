.class Lcom/estrongs/android/ui/e/ak;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/pcs/v;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/aj;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/aj;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/ak;->a:Lcom/estrongs/android/ui/e/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-static {p3}, Lcom/estrongs/android/util/aw;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ak;->a:Lcom/estrongs/android/ui/e/aj;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/aj;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->t()Lcom/estrongs/android/view/ar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/ar;->b(Z)V

    :cond_0
    invoke-static {}, Lcom/estrongs/fs/impl/pcs/b;->a()Lcom/estrongs/fs/impl/pcs/b;

    move-result-object v0

    sget-object v1, Lcom/estrongs/fs/l;->N:Lcom/estrongs/fs/l;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/pcs/b;->setFileType(Lcom/estrongs/fs/l;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ak;->a:Lcom/estrongs/android/ui/e/aj;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/aj;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/w;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/q;->d(J)V

    :cond_1
    return-void
.end method

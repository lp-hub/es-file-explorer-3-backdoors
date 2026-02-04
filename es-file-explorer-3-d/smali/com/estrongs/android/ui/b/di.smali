.class Lcom/estrongs/android/ui/b/di;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/fs/g;

.field final synthetic b:Lcom/estrongs/android/ui/b/dg;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/b/dg;Lcom/estrongs/fs/g;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/di;->b:Lcom/estrongs/android/ui/b/dg;

    iput-object p2, p0, Lcom/estrongs/android/ui/b/di;->a:Lcom/estrongs/fs/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/b/di;->a:Lcom/estrongs/fs/g;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/b/di;->b:Lcom/estrongs/android/ui/b/dg;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/dg;->a:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/di;->b:Lcom/estrongs/android/ui/b/dg;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/dg;->a:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/b/di;->b:Lcom/estrongs/android/ui/b/dg;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/dg;->c:Lcom/estrongs/android/ui/b/df;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/df;->b(Lcom/estrongs/android/ui/b/df;)Lcom/estrongs/android/pop/esclasses/ESActivity;

    move-result-object v0

    const v1, 0x7f0b03c8

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/b/di;->b:Lcom/estrongs/android/ui/b/dg;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/dg;->a:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/di;->b:Lcom/estrongs/android/ui/b/dg;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/dg;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/di;->b:Lcom/estrongs/android/ui/b/dg;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/dg;->c:Lcom/estrongs/android/ui/b/df;

    new-instance v1, Lcom/estrongs/android/ui/b/dn;

    iget-object v2, p0, Lcom/estrongs/android/ui/b/di;->b:Lcom/estrongs/android/ui/b/dg;

    iget-object v2, v2, Lcom/estrongs/android/ui/b/dg;->c:Lcom/estrongs/android/ui/b/df;

    invoke-static {v2}, Lcom/estrongs/android/ui/b/df;->b(Lcom/estrongs/android/ui/b/df;)Lcom/estrongs/android/pop/esclasses/ESActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/b/di;->a:Lcom/estrongs/fs/g;

    invoke-direct {v1, v2, v3}, Lcom/estrongs/android/ui/b/dn;-><init>(Lcom/estrongs/android/pop/esclasses/ESActivity;Lcom/estrongs/fs/g;)V

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/b/df;->a(Lcom/estrongs/android/ui/b/df;Lcom/estrongs/android/ui/b/dn;)Lcom/estrongs/android/ui/b/dn;

    iget-object v0, p0, Lcom/estrongs/android/ui/b/di;->b:Lcom/estrongs/android/ui/b/dg;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/dg;->c:Lcom/estrongs/android/ui/b/df;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/df;->b()V

    goto :goto_0
.end method

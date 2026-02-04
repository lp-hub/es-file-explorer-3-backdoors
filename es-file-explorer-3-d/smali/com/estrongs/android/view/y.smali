.class Lcom/estrongs/android/view/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/x;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/x;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/y;->a:Lcom/estrongs/android/view/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/y;->a:Lcom/estrongs/android/view/x;

    iget-object v0, v0, Lcom/estrongs/android/view/x;->ad:Landroid/app/Activity;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->C()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/view/y;->a:Lcom/estrongs/android/view/x;

    iget-object v1, v1, Lcom/estrongs/android/view/x;->e:Lcom/estrongs/android/view/n;

    invoke-virtual {v1}, Lcom/estrongs/android/view/n;->f()V

    const v1, 0x7f0b02f5

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->d(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/y;->a:Lcom/estrongs/android/view/x;

    invoke-virtual {v0}, Lcom/estrongs/android/view/x;->c()V

    iget-object v0, p0, Lcom/estrongs/android/view/y;->a:Lcom/estrongs/android/view/x;

    iget-object v0, v0, Lcom/estrongs/android/view/x;->ad:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/q;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/y;->a:Lcom/estrongs/android/view/x;

    iget-object v0, v0, Lcom/estrongs/android/view/x;->e:Lcom/estrongs/android/view/n;

    invoke-virtual {v0}, Lcom/estrongs/android/view/n;->h()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/y;->a:Lcom/estrongs/android/view/x;

    iget-object v0, v0, Lcom/estrongs/android/view/x;->e:Lcom/estrongs/android/view/n;

    invoke-virtual {v0}, Lcom/estrongs/android/view/n;->e()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

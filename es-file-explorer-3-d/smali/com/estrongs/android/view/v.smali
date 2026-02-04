.class Lcom/estrongs/android/view/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/u;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/u;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/v;->a:Lcom/estrongs/android/view/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/v;->a:Lcom/estrongs/android/view/u;

    iget-object v0, v0, Lcom/estrongs/android/view/u;->a:Lcom/estrongs/android/view/t;

    iget-object v0, v0, Lcom/estrongs/android/view/t;->e:Lcom/estrongs/android/view/n;

    invoke-virtual {v0}, Lcom/estrongs/android/view/n;->f()V

    iget-object v0, p0, Lcom/estrongs/android/view/v;->a:Lcom/estrongs/android/view/u;

    iget-object v0, v0, Lcom/estrongs/android/view/u;->a:Lcom/estrongs/android/view/t;

    iget-object v0, v0, Lcom/estrongs/android/view/t;->ad:Landroid/app/Activity;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->C()Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f0b02f5

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->d(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/v;->a:Lcom/estrongs/android/view/u;

    iget-object v0, v0, Lcom/estrongs/android/view/u;->a:Lcom/estrongs/android/view/t;

    iget-boolean v0, v0, Lcom/estrongs/android/view/t;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/v;->a:Lcom/estrongs/android/view/u;

    iget-object v0, v0, Lcom/estrongs/android/view/u;->a:Lcom/estrongs/android/view/t;

    invoke-static {v0}, Lcom/estrongs/android/view/t;->a(Lcom/estrongs/android/view/t;)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/v;->a:Lcom/estrongs/android/view/u;

    iget-object v0, v0, Lcom/estrongs/android/view/u;->a:Lcom/estrongs/android/view/t;

    iget-object v1, p0, Lcom/estrongs/android/view/v;->a:Lcom/estrongs/android/view/u;

    iget-object v1, v1, Lcom/estrongs/android/view/u;->a:Lcom/estrongs/android/view/t;

    iget-object v1, v1, Lcom/estrongs/android/view/t;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/t;->a(Ljava/util/List;)V

    goto :goto_0
.end method

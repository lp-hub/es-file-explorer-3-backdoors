.class Lcom/estrongs/android/view/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/n;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/n;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/o;->a:Lcom/estrongs/android/view/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/o;->a:Lcom/estrongs/android/view/n;

    invoke-static {v0}, Lcom/estrongs/android/view/n;->a(Lcom/estrongs/android/view/n;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->C()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/view/o;->a:Lcom/estrongs/android/view/n;

    invoke-virtual {v1}, Lcom/estrongs/android/view/n;->f()V

    const v1, 0x7f0b02f5

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->d(I)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/estrongs/android/view/n;->k()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/x;

    invoke-virtual {v0}, Lcom/estrongs/android/view/x;->c()V

    goto :goto_0
.end method

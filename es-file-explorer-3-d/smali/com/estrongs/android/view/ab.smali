.class Lcom/estrongs/android/view/ab;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/estrongs/android/view/aa;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/aa;I)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/ab;->b:Lcom/estrongs/android/view/aa;

    iput p2, p0, Lcom/estrongs/android/view/ab;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/ab;->b:Lcom/estrongs/android/view/aa;

    iget-object v0, v0, Lcom/estrongs/android/view/aa;->a:Lcom/estrongs/android/view/x;

    iget-object v0, v0, Lcom/estrongs/android/view/x;->e:Lcom/estrongs/android/view/n;

    invoke-virtual {v0}, Lcom/estrongs/android/view/n;->f()V

    iget-object v0, p0, Lcom/estrongs/android/view/ab;->b:Lcom/estrongs/android/view/aa;

    iget-object v0, v0, Lcom/estrongs/android/view/aa;->a:Lcom/estrongs/android/view/x;

    iget-object v0, v0, Lcom/estrongs/android/view/x;->ad:Landroid/app/Activity;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->C()Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f0b02f5

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->d(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/view/ab;->b:Lcom/estrongs/android/view/aa;

    iget-object v1, v1, Lcom/estrongs/android/view/aa;->a:Lcom/estrongs/android/view/x;

    iget-object v1, v1, Lcom/estrongs/android/view/x;->d:Ljava/util/List;

    iget v2, p0, Lcom/estrongs/android/view/ab;->a:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/fs/g;

    iget-object v2, p0, Lcom/estrongs/android/view/ab;->b:Lcom/estrongs/android/view/aa;

    iget-object v2, v2, Lcom/estrongs/android/view/aa;->a:Lcom/estrongs/android/view/x;

    invoke-static {v2}, Lcom/estrongs/android/view/x;->b(Lcom/estrongs/android/view/x;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/estrongs/android/view/ab;->b:Lcom/estrongs/android/view/aa;

    iget-object v2, v2, Lcom/estrongs/android/view/aa;->a:Lcom/estrongs/android/view/x;

    iget-object v2, v2, Lcom/estrongs/android/view/x;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->z:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/view/ab;->b:Lcom/estrongs/android/view/aa;

    iget-object v0, v0, Lcom/estrongs/android/view/aa;->a:Lcom/estrongs/android/view/x;

    iget-object v0, v0, Lcom/estrongs/android/view/x;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/view/ab;->b:Lcom/estrongs/android/view/aa;

    iget-object v0, v0, Lcom/estrongs/android/view/aa;->a:Lcom/estrongs/android/view/x;

    iget-object v0, v0, Lcom/estrongs/android/view/x;->e:Lcom/estrongs/android/view/n;

    iget-object v2, p0, Lcom/estrongs/android/view/ab;->b:Lcom/estrongs/android/view/aa;

    iget-object v2, v2, Lcom/estrongs/android/view/aa;->a:Lcom/estrongs/android/view/x;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/view/n;->b(Lcom/estrongs/android/view/x;)V

    :cond_1
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/estrongs/android/view/ab;->b:Lcom/estrongs/android/view/aa;

    iget-object v1, v1, Lcom/estrongs/android/view/aa;->a:Lcom/estrongs/android/view/x;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/view/x;->a(Ljava/util/List;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/view/ab;->b:Lcom/estrongs/android/view/aa;

    iget-object v0, v0, Lcom/estrongs/android/view/aa;->a:Lcom/estrongs/android/view/x;

    iget-object v0, v0, Lcom/estrongs/android/view/x;->i:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

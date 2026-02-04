.class Lcom/estrongs/android/ui/a/bc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/a/s;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/a/s;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/a/bc;->a:Lcom/estrongs/android/ui/a/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/bc;->a:Lcom/estrongs/android/ui/a/s;

    invoke-static {v0}, Lcom/estrongs/android/ui/a/s;->c(Lcom/estrongs/android/ui/a/s;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/estrongs/android/pop/q;->b(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/a/bc;->a:Lcom/estrongs/android/ui/a/s;

    invoke-static {v0}, Lcom/estrongs/android/ui/a/s;->b(Lcom/estrongs/android/ui/a/s;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q:Lcom/estrongs/fs/h;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/estrongs/fs/h;->a(Lcom/estrongs/fs/g;)Z

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/a/bc;->a:Lcom/estrongs/android/ui/a/s;

    invoke-static {v0}, Lcom/estrongs/android/ui/a/s;->b(Lcom/estrongs/android/ui/a/s;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/a/bc;->a:Lcom/estrongs/android/ui/a/s;

    invoke-static {v0}, Lcom/estrongs/android/ui/a/s;->b(Lcom/estrongs/android/ui/a/s;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/ar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/view/ar;->m()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/estrongs/android/ui/d/e;->a()I

    move-result v2

    if-ne v1, v2, :cond_2

    instance-of v2, v0, Lcom/estrongs/android/view/bu;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/estrongs/android/view/bu;

    invoke-virtual {v0}, Lcom/estrongs/android/view/bu;->am()V

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v3}, Lcom/estrongs/android/view/ar;->b(Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v3}, Lcom/estrongs/android/view/ar;->j(Z)V

    goto :goto_1

    :cond_3
    return-void
.end method

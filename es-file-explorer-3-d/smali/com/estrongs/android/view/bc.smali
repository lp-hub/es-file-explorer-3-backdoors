.class Lcom/estrongs/android/view/bc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/ar;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/ar;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/bc;->a:Lcom/estrongs/android/view/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/view/bc;->a:Lcom/estrongs/android/view/ar;

    invoke-virtual {v0, p3}, Lcom/estrongs/android/view/ar;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    instance-of v1, v0, Lcom/estrongs/fs/impl/m/a;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Lcom/estrongs/fs/impl/m/a;

    invoke-virtual {v1}, Lcom/estrongs/fs/impl/m/a;->a()Lcom/estrongs/fs/g;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/estrongs/android/view/bc;->a:Lcom/estrongs/android/view/ar;

    iget-object v2, v2, Lcom/estrongs/android/view/ar;->w:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/util/ak;->bz(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-interface {v1}, Lcom/estrongs/fs/g;->getFileType()Lcom/estrongs/fs/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/fs/l;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/view/bc;->a:Lcom/estrongs/android/view/ar;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/ar;->a(Lcom/estrongs/fs/g;)V

    invoke-static {}, Lcom/estrongs/android/util/ax;->c()Lcom/estrongs/android/util/ax;

    move-result-object v0

    invoke-interface {v1}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/ax;->a(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/view/bc;->a:Lcom/estrongs/android/view/ar;

    iget-object v1, v1, Lcom/estrongs/android/view/ar;->y:Lcom/estrongs/android/view/bt;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/view/bc;->a:Lcom/estrongs/android/view/ar;

    iget-object v1, v1, Lcom/estrongs/android/view/ar;->y:Lcom/estrongs/android/view/bt;

    invoke-interface {v1, v0}, Lcom/estrongs/android/view/bt;->a(Lcom/estrongs/fs/g;)V

    goto :goto_1

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

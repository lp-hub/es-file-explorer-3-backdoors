.class Lcom/estrongs/android/view/bv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/bu;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/bu;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/bv;->a:Lcom/estrongs/android/view/bu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/view/bv;->a:Lcom/estrongs/android/view/bu;

    iget-boolean v0, v0, Lcom/estrongs/android/view/bu;->l:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/view/bv;->a:Lcom/estrongs/android/view/bu;

    invoke-virtual {v0, p3}, Lcom/estrongs/android/view/bu;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    instance-of v0, v0, Lcom/estrongs/android/pop/spfs/CreateSiteFileObject;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/widget/e;

    iget-object v1, v0, Lcom/estrongs/android/widget/e;->i:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/estrongs/android/view/bv;->a:Lcom/estrongs/android/view/bu;

    invoke-virtual {v0, p3}, Lcom/estrongs/android/view/bu;->c(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/view/bv;->a:Lcom/estrongs/android/view/bu;

    invoke-virtual {v0, p3}, Lcom/estrongs/android/view/bu;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->al(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/pcs/aw;->c()Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Lcom/estrongs/android/ui/b/aq;

    iget-object v2, p0, Lcom/estrongs/android/view/bv;->a:Lcom/estrongs/android/view/bu;

    iget-object v2, v2, Lcom/estrongs/android/view/bu;->ad:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/estrongs/android/ui/b/aq;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0446

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/b/aq;->a(I)Lcom/estrongs/android/ui/b/aq;

    move-result-object v1

    const v2, 0x7f0b0497

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/b/aq;->b(I)Lcom/estrongs/android/ui/b/aq;

    move-result-object v1

    const v2, 0x7f0b0364

    new-instance v3, Lcom/estrongs/android/view/ca;

    invoke-direct {v3, p0, v0}, Lcom/estrongs/android/view/ca;-><init>(Lcom/estrongs/android/view/bv;Lcom/estrongs/fs/g;)V

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/ui/b/aq;->d(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v1

    const v2, 0x7f0b0238

    new-instance v3, Lcom/estrongs/android/view/by;

    invoke-direct {v3, p0, v0}, Lcom/estrongs/android/view/by;-><init>(Lcom/estrongs/android/view/bv;Lcom/estrongs/fs/g;)V

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/ui/b/aq;->e(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v1

    const v2, 0x7f0b044a

    new-instance v3, Lcom/estrongs/android/view/bw;

    invoke-direct {v3, p0, v0}, Lcom/estrongs/android/view/bw;-><init>(Lcom/estrongs/android/view/bv;Lcom/estrongs/fs/g;)V

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/ui/b/aq;->f(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/aq;->a()Lcom/estrongs/android/ui/b/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->show()V

    invoke-static {}, Lcom/estrongs/android/util/a;->a()Lcom/estrongs/android/util/a;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "PCS_Home_Page_UV"

    const-string v2, "PCS_Home_Page_UV"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/view/bv;->a:Lcom/estrongs/android/view/bu;

    iget-object v0, v0, Lcom/estrongs/android/view/bu;->h:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/bv;->a:Lcom/estrongs/android/view/bu;

    iget-object v0, v0, Lcom/estrongs/android/view/bu;->h:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto/16 :goto_0
.end method

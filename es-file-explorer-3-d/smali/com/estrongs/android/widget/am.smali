.class Lcom/estrongs/android/widget/am;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/ah;


# direct methods
.method constructor <init>(Lcom/estrongs/android/widget/ah;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/am;->a:Lcom/estrongs/android/widget/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/widget/am;->a:Lcom/estrongs/android/widget/ah;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/ah;->b()Lcom/estrongs/android/view/bu;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/estrongs/android/view/bu;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getFileType()Lcom/estrongs/fs/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/fs/l;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/widget/am;->a:Lcom/estrongs/android/widget/ah;

    iget-object v1, v1, Lcom/estrongs/android/widget/ah;->i:Lcom/estrongs/android/view/bu;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/view/bu;->a(Lcom/estrongs/fs/g;)V

    iget-object v1, p0, Lcom/estrongs/android/widget/am;->a:Lcom/estrongs/android/widget/ah;

    iget-object v1, v1, Lcom/estrongs/android/widget/ah;->n:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    const-string v1, "item_count"

    invoke-interface {v0, v1}, Lcom/estrongs/fs/g;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/estrongs/android/widget/am;->a:Lcom/estrongs/android/widget/ah;

    iget-object v2, v2, Lcom/estrongs/android/widget/ah;->n:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/widget/am;->a:Lcom/estrongs/android/widget/ah;

    iget-object v1, v1, Lcom/estrongs/android/widget/ah;->n:Landroid/widget/TextView;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

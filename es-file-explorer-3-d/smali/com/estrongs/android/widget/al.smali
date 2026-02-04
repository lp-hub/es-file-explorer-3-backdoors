.class Lcom/estrongs/android/widget/al;
.super Lcom/estrongs/android/view/bu;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/ah;


# direct methods
.method constructor <init>(Lcom/estrongs/android/widget/ah;Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/estrongs/fs/c/a/a;Lcom/estrongs/android/view/bs;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/al;->a:Lcom/estrongs/android/widget/ah;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/estrongs/android/view/bu;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/estrongs/fs/c/a/a;Lcom/estrongs/android/view/bs;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    const/4 v0, 0x1

    iput p1, p0, Lcom/estrongs/android/widget/al;->k:I

    iget-object v1, p0, Lcom/estrongs/android/widget/al;->ad:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/widget/al;->g:Lcom/estrongs/android/widget/HeaderGridView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/HeaderGridView;->setNumColumns(I)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/widget/al;->g:Lcom/estrongs/android/widget/HeaderGridView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/HeaderGridView;->setNumColumns(I)V

    goto :goto_1
.end method

.method protected al()I
    .locals 1

    const v0, 0x7f030068

    return v0
.end method

.method protected r()I
    .locals 1

    const v0, 0x7f030069

    return v0
.end method

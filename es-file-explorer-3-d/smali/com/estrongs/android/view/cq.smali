.class public abstract Lcom/estrongs/android/view/cq;
.super Ljava/lang/Object;


# instance fields
.field protected ad:Landroid/app/Activity;

.field protected ae:Landroid/view/View;

.field protected af:Landroid/view/LayoutInflater;

.field protected ag:Lcom/estrongs/android/view/cr;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/estrongs/android/view/cq;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/android/view/cq;->ad:Landroid/app/Activity;

    invoke-static {p1}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/cq;->af:Landroid/view/LayoutInflater;

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/cq;->af:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/estrongs/android/view/cq;->a()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/cq;->ae:Landroid/view/View;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/estrongs/android/view/cq;->a()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/cq;->ae:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/view/cq;->ae:Landroid/view/View;

    if-nez v0, :cond_0

    iput-object p2, p0, Lcom/estrongs/android/view/cq;->ae:Landroid/view/View;

    goto :goto_0
.end method


# virtual methods
.method protected abstract a()I
.end method

.method public a(Landroid/content/Intent;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/cq;->ad:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/estrongs/android/view/cq;->ad:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to start the activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public a(Lcom/estrongs/android/view/cr;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/cq;->ag:Lcom/estrongs/android/view/cr;

    return-void
.end method

.method public a([I[I)V
    .locals 4

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget v2, p1, v0

    aget v3, p2, v0

    invoke-virtual {p0, v2, v3}, Lcom/estrongs/android/view/cq;->b(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public an()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/cq;->ae:Landroid/view/View;

    return-object v0
.end method

.method public b(II)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/estrongs/android/view/cq;->o(I)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/estrongs/android/view/cq;->m(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected l(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/cq;->ae:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected m(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/cq;->ad:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected n(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/cq;->ad:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected o(I)Landroid/widget/TextView;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/view/cq;->l(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

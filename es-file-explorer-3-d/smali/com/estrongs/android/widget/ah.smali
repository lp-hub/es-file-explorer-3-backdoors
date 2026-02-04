.class public Lcom/estrongs/android/widget/ah;
.super Lcom/estrongs/android/ui/b/ag;


# instance fields
.field protected i:Lcom/estrongs/android/view/bu;

.field protected j:Landroid/app/Activity;

.field protected k:Landroid/view/View;

.field protected l:Lcom/estrongs/android/widget/an;

.field protected m:Landroid/view/View;

.field protected n:Landroid/widget/TextView;

.field protected o:Lcom/estrongs/android/view/br;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/estrongs/android/widget/an;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/b/ag;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/estrongs/android/widget/ai;

    invoke-direct {v0, p0}, Lcom/estrongs/android/widget/ai;-><init>(Lcom/estrongs/android/widget/ah;)V

    iput-object v0, p0, Lcom/estrongs/android/widget/ah;->o:Lcom/estrongs/android/view/br;

    new-instance v0, Lcom/estrongs/android/widget/aj;

    invoke-direct {v0, p0}, Lcom/estrongs/android/widget/aj;-><init>(Lcom/estrongs/android/widget/ah;)V

    invoke-super {p0, v0}, Lcom/estrongs/android/ui/b/ag;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iput-object p1, p0, Lcom/estrongs/android/widget/ah;->j:Landroid/app/Activity;

    iput-object p2, p0, Lcom/estrongs/android/widget/ah;->l:Lcom/estrongs/android/widget/an;

    invoke-virtual {p0, p1}, Lcom/estrongs/android/widget/ah;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/estrongs/android/widget/ah;->c()V

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    const v0, 0x7f030063

    return v0
.end method

.method protected a(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/estrongs/android/widget/ah;->a()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumWidth(I)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/ah;->setContentView(Landroid/view/View;)V

    const v0, 0x7f080217

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/ah;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/estrongs/android/widget/ah;->k:Landroid/view/View;

    const v0, 0x7f080215

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/ah;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/estrongs/android/widget/ah;->m:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/widget/ah;->m:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/ah;->m:Landroid/view/View;

    new-instance v1, Lcom/estrongs/android/widget/ak;

    invoke-direct {v1, p0}, Lcom/estrongs/android/widget/ak;-><init>(Lcom/estrongs/android/widget/ah;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080216

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/ah;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/widget/ah;->n:Landroid/widget/TextView;

    :cond_0
    return-void
.end method

.method protected b()Lcom/estrongs/android/view/bu;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/ah;->i:Lcom/estrongs/android/view/bu;

    return-object v0
.end method

.method public b(Z)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/widget/ah;->i:Lcom/estrongs/android/view/bu;

    iget-object v1, p0, Lcom/estrongs/android/widget/ah;->i:Lcom/estrongs/android/view/bu;

    invoke-virtual {v1}, Lcom/estrongs/android/view/bu;->C()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/bu;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/widget/ah;->i:Lcom/estrongs/android/view/bu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/bu;->b(Z)V

    return-void
.end method

.method protected c()V
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/estrongs/android/widget/ah;->i:Lcom/estrongs/android/view/bu;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/widget/al;

    iget-object v2, p0, Lcom/estrongs/android/widget/ah;->j:Landroid/app/Activity;

    iget-object v3, p0, Lcom/estrongs/android/widget/ah;->k:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    move-object v1, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/widget/al;-><init>(Lcom/estrongs/android/widget/ah;Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/estrongs/fs/c/a/a;Lcom/estrongs/android/view/bs;)V

    iput-object v0, p0, Lcom/estrongs/android/widget/ah;->i:Lcom/estrongs/android/view/bu;

    iget-object v0, p0, Lcom/estrongs/android/widget/ah;->i:Lcom/estrongs/android/view/bu;

    iget-object v1, p0, Lcom/estrongs/android/widget/ah;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    const v2, 0x7f090012

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/al;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/bu;->j(I)V

    iget-object v0, p0, Lcom/estrongs/android/widget/ah;->i:Lcom/estrongs/android/view/bu;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/bu;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/widget/ah;->i:Lcom/estrongs/android/view/bu;

    new-instance v1, Lcom/estrongs/android/widget/am;

    invoke-direct {v1, p0}, Lcom/estrongs/android/widget/am;-><init>(Lcom/estrongs/android/widget/ah;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/bu;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/ah;->i:Lcom/estrongs/android/view/bu;

    iget-object v1, p0, Lcom/estrongs/android/widget/ah;->o:Lcom/estrongs/android/view/br;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/bu;->a(Lcom/estrongs/android/view/br;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/ah;->i:Lcom/estrongs/android/view/bu;

    const-string v1, "gallery://local/buckets/"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/bu;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 1

    invoke-super {p0}, Lcom/estrongs/android/ui/b/ag;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/widget/ah;->i:Lcom/estrongs/android/view/bu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/ah;->i:Lcom/estrongs/android/view/bu;

    invoke-virtual {v0}, Lcom/estrongs/android/view/bu;->a_()V

    :cond_0
    return-void
.end method

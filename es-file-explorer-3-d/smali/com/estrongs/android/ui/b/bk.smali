.class Lcom/estrongs/android/ui/b/bk;
.super Lcom/estrongs/android/view/cq;


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field public f:Landroid/app/Dialog;

.field g:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/estrongs/android/ui/b/dm;

.field private l:Ljava/lang/String;

.field private m:Lcom/estrongs/android/ui/theme/al;

.field private n:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x5

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/estrongs/android/view/cq;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/estrongs/android/ui/b/bk;->h:Ljava/lang/String;

    iput-object v2, p0, Lcom/estrongs/android/ui/b/bk;->i:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/b/bk;->j:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/android/ui/b/bk;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/android/ui/b/bk;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/android/ui/b/bk;->e:Ljava/lang/String;

    iput-object v2, p0, Lcom/estrongs/android/ui/b/bk;->l:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/estrongs/android/ui/b/bk;->n:Z

    iput-object v2, p0, Lcom/estrongs/android/ui/b/bk;->f:Landroid/app/Dialog;

    invoke-static {p1}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/b/bk;->m:Lcom/estrongs/android/ui/theme/al;

    iput-object p3, p0, Lcom/estrongs/android/ui/b/bk;->l:Ljava/lang/String;

    const v0, 0x7f0b005f

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/b/bk;->n(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/b/bk;->c:Ljava/lang/String;

    const v0, 0x7f0b0060

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/b/bk;->n(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/b/bk;->d:Ljava/lang/String;

    const v0, 0x7f0b0101

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/b/bk;->n(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/b/bk;->e:Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/b/bk;->j:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/b/bk;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/b/bk;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/b/bk;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->bv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/b/bk;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/b/bk;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aO(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v3, p0, Lcom/estrongs/android/ui/b/bk;->n:Z

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/ui/b/bk;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->bE(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/b/bk;->g:Z

    invoke-direct {p0}, Lcom/estrongs/android/ui/b/bk;->d()V

    const v0, 0x7f0801a1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/b/bk;->l(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/estrongs/android/ui/b/bl;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/ui/b/bl;-><init>(Lcom/estrongs/android/ui/b/bk;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v1, p0, Lcom/estrongs/android/ui/b/bk;->g:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    new-array v1, v4, [I

    fill-array-data v1, :array_1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/b/bk;->a([I[I)V

    goto :goto_0

    :cond_3
    iput-boolean v1, p0, Lcom/estrongs/android/ui/b/bk;->n:Z

    goto :goto_1

    nop

    :array_0
    .array-data 4
        0x7f080166
        0x7f0801a4
        0x7f0801a5
        0x7f080026
        0x7f080025
    .end array-data

    :array_1
    .array-data 4
        0x7f0b00f6
        0x7f0b00f8
        0x7f0b04e5
        0x7f0b00f7
        0x7f0b04e5
    .end array-data
.end method

.method static synthetic a(Lcom/estrongs/android/ui/b/bk;I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/b/bk;->l(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/b/bk;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/bk;->i:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/widget/TextView;J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    const-string v0, "N/A"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2, p3}, Lcom/estrongs/fs/c/d;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2, p3}, Lcom/estrongs/fs/c/d;->d(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/b/bk;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/b/bk;Landroid/widget/TextView;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/ui/b/bk;->a(Landroid/widget/TextView;J)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/b/bk;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/b/bk;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/b/x;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-wide/16 v1, 0x0

    move v4, v0

    move v5, v0

    move-wide v8, v1

    move-wide v2, v8

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/x;

    iget v6, v0, Lcom/estrongs/fs/b/x;->e:I

    add-int/2addr v5, v6

    iget v6, v0, Lcom/estrongs/fs/b/x;->d:I

    add-int/2addr v4, v6

    iget-wide v6, v0, Lcom/estrongs/fs/b/x;->c:J

    add-long/2addr v2, v6

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/b/bk;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/b/bk;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/b/bk;->ad:Landroid/app/Activity;

    new-instance v4, Lcom/estrongs/android/ui/b/bq;

    invoke-direct {v4, p0, v0, v2, v3}, Lcom/estrongs/android/ui/b/bq;-><init>(Lcom/estrongs/android/ui/b/bk;Ljava/lang/String;J)V

    invoke-virtual {v1, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/ui/b/bk;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/b/bk;->n:Z

    return v0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/b/bk;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/b/bk;->e()V

    return-void
.end method

.method static synthetic d(Lcom/estrongs/android/ui/b/bk;)Lcom/estrongs/android/ui/b/dm;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/bk;->k:Lcom/estrongs/android/ui/b/dm;

    return-object v0
.end method

.method private d()V
    .locals 4

    const/4 v3, 0x1

    const v0, 0x7f080022

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/b/bk;->l(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f080167

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/b/bk;->l(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f080025

    invoke-virtual {p0, v2}, Lcom/estrongs/android/ui/b/bk;->l(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/estrongs/android/ui/b/bk;->a:Landroid/widget/TextView;

    const v2, 0x7f0801a5

    invoke-virtual {p0, v2}, Lcom/estrongs/android/ui/b/bk;->l(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/estrongs/android/ui/b/bk;->b:Landroid/widget/TextView;

    const v2, 0x7f0b022d

    invoke-virtual {p0, v2}, Lcom/estrongs/android/ui/b/bk;->m(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/bk;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_0

    new-instance v0, Lcom/estrongs/fs/m;

    iget-object v2, p0, Lcom/estrongs/android/ui/b/bk;->l:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/estrongs/fs/m;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/estrongs/fs/c/d;->b(Lcom/estrongs/fs/g;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "N/A"

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0801a1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/b/bk;->l(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<a href=\"ss\">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/ui/b/bk;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</a>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/estrongs/android/ui/b/bk;->g:Z

    if-nez v0, :cond_1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setClickable(Z)V

    new-instance v0, Lcom/estrongs/android/ui/b/bm;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/b/bm;-><init>(Lcom/estrongs/android/ui/b/bk;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/b/bk;->k:Lcom/estrongs/android/ui/b/dm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/bk;->ad:Landroid/app/Activity;

    new-instance v1, Lcom/estrongs/android/ui/b/bp;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/b/bp;-><init>(Lcom/estrongs/android/ui/b/bk;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    const v0, 0x7f030080

    return v0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/b/bk;->k:Lcom/estrongs/android/ui/b/dm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/bk;->k:Lcom/estrongs/android/ui/b/dm;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/dm;->getTaskStatus()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/bk;->k:Lcom/estrongs/android/ui/b/dm;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/dm;->getTaskStatus()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/bk;->k:Lcom/estrongs/android/ui/b/dm;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/dm;->requestStop()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 11

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/estrongs/android/ui/b/bk;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v2

    move v4, v2

    move-wide v9, v0

    move-wide v1, v9

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const-string v8, "/sys"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const-string v8, "/sys/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const-string v8, "/proc"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const-string v8, "/proc/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getFileType()Lcom/estrongs/fs/l;

    move-result-object v7

    invoke-virtual {v7}, Lcom/estrongs/fs/l;->a()Z

    move-result v7

    if-eqz v7, :cond_1

    add-int/lit8 v3, v3, 0x1

    move-wide v9, v1

    move-wide v0, v9

    move v2, v3

    move v3, v4

    :goto_1
    move v4, v3

    move v3, v2

    move-wide v9, v0

    move-wide v1, v9

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    invoke-interface {v0}, Lcom/estrongs/fs/g;->length()J

    move-result-wide v7

    add-long v0, v1, v7

    move v2, v3

    move v3, v4

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/b/bk;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aO(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/estrongs/android/ui/b/bn;

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {v0, p0, v5, v6, v7}, Lcom/estrongs/android/ui/b/bn;-><init>(Lcom/estrongs/android/ui/b/bk;Ljava/util/List;Lcom/estrongs/fs/d;Z)V

    iput-object v0, p0, Lcom/estrongs/android/ui/b/bk;->k:Lcom/estrongs/android/ui/b/dm;

    iget-object v0, p0, Lcom/estrongs/android/ui/b/bk;->k:Lcom/estrongs/android/ui/b/dm;

    new-instance v5, Lcom/estrongs/android/ui/b/bo;

    invoke-direct {v5, p0}, Lcom/estrongs/android/ui/b/bo;-><init>(Lcom/estrongs/android/ui/b/bk;)V

    invoke-virtual {v0, v5}, Lcom/estrongs/android/ui/b/dm;->addProgressListener(Lcom/estrongs/a/a/h;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/bk;->k:Lcom/estrongs/android/ui/b/dm;

    iget v5, v0, Lcom/estrongs/android/ui/b/dm;->c:I

    add-int/2addr v3, v5

    iput v3, v0, Lcom/estrongs/android/ui/b/dm;->c:I

    iget-object v0, p0, Lcom/estrongs/android/ui/b/bk;->k:Lcom/estrongs/android/ui/b/dm;

    iget v3, v0, Lcom/estrongs/android/ui/b/dm;->b:I

    add-int/2addr v3, v4

    iput v3, v0, Lcom/estrongs/android/ui/b/dm;->b:I

    iget-object v0, p0, Lcom/estrongs/android/ui/b/bk;->k:Lcom/estrongs/android/ui/b/dm;

    iget-wide v3, v0, Lcom/estrongs/android/ui/b/dm;->d:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/estrongs/android/ui/b/dm;->d:J

    iget-object v0, p0, Lcom/estrongs/android/ui/b/bk;->k:Lcom/estrongs/android/ui/b/dm;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/dm;->execute()V

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/b/bk;->b:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/estrongs/android/ui/b/bk;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/android/ui/b/bk;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/bk;->a:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1, v2}, Lcom/estrongs/android/ui/b/bk;->a(Landroid/widget/TextView;J)V

    goto :goto_2
.end method

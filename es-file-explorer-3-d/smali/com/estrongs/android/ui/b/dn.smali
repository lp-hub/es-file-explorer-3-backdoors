.class Lcom/estrongs/android/ui/b/dn;
.super Lcom/estrongs/android/view/cq;


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field protected c:Lcom/estrongs/fs/g;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Lcom/estrongs/fs/impl/local/m;

.field i:Z

.field public j:Landroid/app/Dialog;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Ljava/lang/String;

.field private o:Lcom/estrongs/android/ui/b/dm;

.field private p:Landroid/widget/TextView;

.field private q:Z


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/esclasses/ESActivity;Lcom/estrongs/fs/g;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/estrongs/android/view/cq;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/estrongs/android/ui/b/dn;->n:Ljava/lang/String;

    iput-object v2, p0, Lcom/estrongs/android/ui/b/dn;->c:Lcom/estrongs/fs/g;

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/android/ui/b/dn;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/android/ui/b/dn;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/android/ui/b/dn;->f:Ljava/lang/String;

    iput-object v2, p0, Lcom/estrongs/android/ui/b/dn;->p:Landroid/widget/TextView;

    iput-boolean v1, p0, Lcom/estrongs/android/ui/b/dn;->q:Z

    iput-boolean v1, p0, Lcom/estrongs/android/ui/b/dn;->i:Z

    iput-object v2, p0, Lcom/estrongs/android/ui/b/dn;->j:Landroid/app/Dialog;

    iput-object p2, p0, Lcom/estrongs/android/ui/b/dn;->c:Lcom/estrongs/fs/g;

    invoke-interface {p2}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/b/dn;->n:Ljava/lang/String;

    const v0, 0x7f0b005f

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/b/dn;->n(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/b/dn;->d:Ljava/lang/String;

    const v0, 0x7f0b0060

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/b/dn;->n(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/b/dn;->e:Ljava/lang/String;

    const v0, 0x7f0b0101

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/b/dn;->n(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/b/dn;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/b/dn;->n:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/b/dn;->c:Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aO(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v3, p0, Lcom/estrongs/android/ui/b/dn;->i:Z

    :goto_1
    invoke-interface {p2}, Lcom/estrongs/fs/g;->getFileType()Lcom/estrongs/fs/l;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Lcom/estrongs/fs/g;->getFileType()Lcom/estrongs/fs/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/l;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "server"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_2
    if-eqz v0, :cond_3

    invoke-direct {p0, v3}, Lcom/estrongs/android/ui/b/dn;->a(Z)V

    :goto_3
    const v0, 0x7f0801a1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/b/dn;->l(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v2, Lcom/estrongs/android/ui/b/do;

    invoke-direct {v2, p0, p1}, Lcom/estrongs/android/ui/b/do;-><init>(Lcom/estrongs/android/ui/b/dn;Lcom/estrongs/android/pop/esclasses/ESActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0801a2

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/b/dn;->l(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v2, Lcom/estrongs/android/ui/b/dz;

    invoke-direct {v2, p0, p1}, Lcom/estrongs/android/ui/b/dz;-><init>(Lcom/estrongs/android/ui/b/dn;Lcom/estrongs/android/pop/esclasses/ESActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v1, :cond_0

    const v0, 0x7f0801a0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/b/dn;->l(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, Lcom/estrongs/android/ui/b/dn;->i:Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/b/dn;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aO(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/b/dn;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/d;->d(Ljava/lang/String;)Lcom/estrongs/fs/c;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/fs/c;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/ui/b/dn;->g:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    iget-object v0, p0, Lcom/estrongs/android/ui/b/dn;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->bE(Ljava/lang/String;)Z

    move-result v0

    :goto_5
    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/b/dn;->a(Z)V

    move v1, v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_4
    move v0, v1

    goto :goto_5

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method static synthetic a(Lcom/estrongs/android/ui/b/dn;[Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/ui/b/dn;->a([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private a([Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    aget-object v2, p1, v0

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/estrongs/android/ui/b/dn;I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/b/dn;->l(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/b/dn;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/dn;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/b/dn;Lcom/estrongs/fs/impl/local/m;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/b/dn;->a(Lcom/estrongs/fs/impl/local/m;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/estrongs/fs/impl/local/m;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    iget v1, p1, Lcom/estrongs/fs/impl/local/m;->a:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "r"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget v1, p1, Lcom/estrongs/fs/impl/local/m;->a:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "w"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget v1, p1, Lcom/estrongs/fs/impl/local/m;->a:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_3

    iget v1, p1, Lcom/estrongs/fs/impl/local/m;->a:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    iget v1, p1, Lcom/estrongs/fs/impl/local/m;->a:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "r"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    iget v1, p1, Lcom/estrongs/fs/impl/local/m;->a:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "w"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    iget v1, p1, Lcom/estrongs/fs/impl/local/m;->a:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_8

    iget v1, p1, Lcom/estrongs/fs/impl/local/m;->a:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5
    iget v1, p1, Lcom/estrongs/fs/impl/local/m;->a:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "r"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6
    iget v1, p1, Lcom/estrongs/fs/impl/local/m;->a:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "w"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_7
    iget v1, p1, Lcom/estrongs/fs/impl/local/m;->a:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_d

    iget v1, p1, Lcom/estrongs/fs/impl/local/m;->a:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_3
    iget v1, p1, Lcom/estrongs/fs/impl/local/m;->a:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    :cond_8
    iget v1, p1, Lcom/estrongs/fs/impl/local/m;->a:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "T"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    :cond_d
    iget v1, p1, Lcom/estrongs/fs/impl/local/m;->a:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8
.end method

.method private a(Landroid/widget/TextView;J)V
    .locals 2

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

    iget-object v1, p0, Lcom/estrongs/android/ui/b/dn;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/b/dn;Landroid/widget/TextView;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/ui/b/dn;->a(Landroid/widget/TextView;J)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/b/dn;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/b/dn;->a(Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/b/dn;[Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/ui/b/dn;->a([Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 8
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

    const-wide/16 v4, 0x0

    move v1, v0

    move v2, v0

    move v3, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/x;

    iget v6, v0, Lcom/estrongs/fs/b/x;->e:I

    add-int/2addr v3, v6

    iget v6, v0, Lcom/estrongs/fs/b/x;->d:I

    add-int/2addr v2, v6

    iget-wide v6, v0, Lcom/estrongs/fs/b/x;->c:J

    add-long/2addr v4, v6

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lcom/estrongs/android/ui/b/dn;->ad:Landroid/app/Activity;

    new-instance v0, Lcom/estrongs/android/ui/b/du;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/ui/b/du;-><init>(Lcom/estrongs/android/ui/b/dn;IIJ)V

    invoke-virtual {v6, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private a(Z)V
    .locals 17

    const v1, 0x7f080022

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/dn;->l(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f080021

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/b/dn;->l(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f080165

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/b/dn;->l(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f080167

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/estrongs/android/ui/b/dn;->l(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f080026

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/estrongs/android/ui/b/dn;->l(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0801a8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/estrongs/android/ui/b/dn;->l(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f08016a

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/estrongs/android/ui/b/dn;->l(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0801ab

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/estrongs/android/ui/b/dn;->l(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f0801af

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/estrongs/android/ui/b/dn;->l(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v10, 0x7f0801b2

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/estrongs/android/ui/b/dn;->l(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v11, 0x7f0801b5

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/estrongs/android/ui/b/dn;->l(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const v12, 0x7f0801a4

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/estrongs/android/ui/b/dn;->l(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/estrongs/android/ui/b/dn;->l:Landroid/widget/TextView;

    const v12, 0x7f0801a3

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/estrongs/android/ui/b/dn;->l(I)Landroid/view/View;

    move-result-object v15

    const v12, 0x7f080025

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/estrongs/android/ui/b/dn;->l(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/estrongs/android/ui/b/dn;->k:Landroid/widget/TextView;

    const v12, 0x7f0801a5

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/estrongs/android/ui/b/dn;->l(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/estrongs/android/ui/b/dn;->m:Landroid/widget/TextView;

    const v12, 0x7f0801bd

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/estrongs/android/ui/b/dn;->l(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/estrongs/android/ui/b/dn;->a:Landroid/widget/TextView;

    const v12, 0x7f0801c1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/estrongs/android/ui/b/dn;->l(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/estrongs/android/ui/b/dn;->b:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/estrongs/android/ui/b/dn;->c:Lcom/estrongs/fs/g;

    invoke-static {v12}, Lcom/estrongs/android/d/d;->a(Lcom/estrongs/fs/g;)Z

    move-result v12

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/estrongs/android/ui/b/dn;->c:Lcom/estrongs/fs/g;

    invoke-static {v12}, Lcom/estrongs/android/d/d;->e(Lcom/estrongs/fs/g;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    if-eqz p1, :cond_4

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/estrongs/android/ui/b/dn;->b(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/b/dn;->n:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/util/ak;->aJ(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/estrongs/android/ui/b/dn;->n:Ljava/lang/String;

    invoke-static {v2, v12}, Lcom/estrongs/android/util/ak;->a(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/estrongs/android/ui/b/dn;->ad:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/b/dn;->n:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/estrongs/fs/impl/c/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/estrongs/android/ui/b/dn;->n:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->bv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/estrongs/android/ui/b/dn;->n:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->an(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/estrongs/android/ui/b/dn;->n:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->am(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v1, 0x7f0b024b

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/dn;->n(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/estrongs/android/ui/b/dn;->k:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_2
    const v1, 0x7f0b04e5

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f0b04e5

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f0b04e5

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f0b04e5

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f0b04e5

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f0b04e5

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/estrongs/android/ui/b/dn;->l:Landroid/widget/TextView;

    const v2, 0x7f0b00f8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_3
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/estrongs/android/ui/b/dn;->c:Lcom/estrongs/fs/g;

    invoke-static {v12}, Lcom/estrongs/android/d/d;->d(Lcom/estrongs/fs/g;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/estrongs/fs/FileSystemException;->printStackTrace()V

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/b/dn;->ad:Landroid/app/Activity;

    invoke-static {v2}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/estrongs/android/ui/b/dn;->n:Ljava/lang/String;

    invoke-virtual {v2, v12}, Lcom/estrongs/android/pop/q;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b0056

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    :cond_3
    const/16 v1, 0x8

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/estrongs/android/ui/b/dn;->k:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    const v2, 0x7f0801ad

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/b/dn;->l(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TableRow;

    const v12, 0x7f0801b0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/estrongs/android/ui/b/dn;->l(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TableRow;

    const v13, 0x7f0801b3

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/estrongs/android/ui/b/dn;->l(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TableRow;

    const v14, 0x7f0801b9

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/estrongs/android/ui/b/dn;->l(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/estrongs/android/ui/b/dn;->p:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/estrongs/android/ui/b/dn;->ad:Landroid/app/Activity;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v14, v0}, Lcom/estrongs/fs/impl/local/h;->a(Landroid/content/Context;Z)Z

    move-result v14

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/estrongs/android/ui/b/dn;->n:Ljava/lang/String;

    invoke-static {v14}, Lcom/estrongs/android/util/ak;->aO(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/estrongs/android/ui/b/dn;->n:Ljava/lang/String;

    invoke-static {v14}, Lcom/estrongs/android/util/ak;->aZ(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/estrongs/android/ui/b/dn;->n:Ljava/lang/String;

    invoke-static {v14}, Lcom/estrongs/android/util/ak;->G(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_a

    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/estrongs/android/ui/b/dn;->g:Ljava/lang/String;

    if-eqz v14, :cond_a

    const-string v14, "asdfghjklmnop"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/estrongs/android/ui/b/dn;->g:Ljava/lang/String;

    const/16 v14, 0x8

    invoke-virtual {v2, v14}, Landroid/widget/TableRow;->setVisibility(I)V

    const/16 v2, 0x8

    invoke-virtual {v12, v2}, Landroid/widget/TableRow;->setVisibility(I)V

    const/16 v2, 0x8

    invoke-virtual {v13, v2}, Landroid/widget/TableRow;->setVisibility(I)V

    const v2, 0x7f0801ac

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/b/dn;->l(I)Landroid/view/View;

    move-result-object v2

    const/16 v12, 0x8

    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    invoke-direct/range {p0 .. p0}, Lcom/estrongs/android/ui/b/dn;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/fs/impl/local/h;->f(Ljava/lang/String;)Lcom/estrongs/fs/impl/local/m;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/estrongs/android/ui/b/dn;->h:Lcom/estrongs/fs/impl/local/m;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/b/dn;->h:Lcom/estrongs/fs/impl/local/m;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/estrongs/android/ui/b/dn;->a(Lcom/estrongs/fs/impl/local/m;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/estrongs/android/ui/b/dn;->g:Ljava/lang/String;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/estrongs/android/ui/b/dn;->b(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/b/dn;->p:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/estrongs/android/ui/b/dn;->g:Ljava/lang/String;

    const/4 v14, 0x0

    const/16 v16, 0x3

    move/from16 v0, v16

    invoke-virtual {v13, v14, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/estrongs/android/ui/b/dn;->g:Ljava/lang/String;

    const/4 v14, 0x3

    const/16 v16, 0x6

    move/from16 v0, v16

    invoke-virtual {v13, v14, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/estrongs/android/ui/b/dn;->g:Ljava/lang/String;

    const/4 v14, 0x6

    const/16 v16, 0x9

    move/from16 v0, v16

    invoke-virtual {v13, v14, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/b/dn;->c:Lcom/estrongs/fs/g;

    invoke-interface {v2}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/estrongs/android/ui/b/dn;->c:Lcom/estrongs/fs/g;

    invoke-interface {v1}, Lcom/estrongs/fs/g;->getFileType()Lcom/estrongs/fs/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/fs/l;->a()Z

    move-result v1

    if-eqz v1, :cond_b

    const v1, 0x7f0b005e

    :goto_5
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/estrongs/android/ui/b/dn;->n:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->bv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->aY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<a href=\"ss\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</a>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/estrongs/android/ui/b/dn;->n:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->bE(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    new-instance v1, Lcom/estrongs/android/ui/b/eb;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/estrongs/android/ui/b/eb;-><init>(Lcom/estrongs/android/ui/b/dn;)V

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v1, 0x7f0b00f7

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/dn;->n(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/estrongs/android/ui/b/dn;->k:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/estrongs/android/ui/b/dn;->ad:Landroid/app/Activity;

    invoke-static {v1}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/q;->I()Ljava/text/DateFormat;

    move-result-object v2

    sget-boolean v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->M:Z

    if-eqz v1, :cond_c

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, " HH:mm:ss"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/b/dn;->c:Lcom/estrongs/fs/g;

    invoke-interface {v3}, Lcom/estrongs/fs/g;->createdTime()J

    move-result-wide v3

    const-wide/16 v12, 0x0

    cmp-long v3, v3, v12

    if-lez v3, :cond_d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/estrongs/android/ui/b/dn;->c:Lcom/estrongs/fs/g;

    invoke-interface {v5}, Lcom/estrongs/fs/g;->createdTime()J

    move-result-wide v12

    invoke-direct {v4, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/estrongs/android/ui/b/dn;->c:Lcom/estrongs/fs/g;

    invoke-interface {v5}, Lcom/estrongs/fs/g;->lastModified()J

    move-result-wide v12

    invoke-direct {v4, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/b/dn;->c:Lcom/estrongs/fs/g;

    invoke-interface {v3}, Lcom/estrongs/fs/g;->lastModified()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/estrongs/android/ui/b/dn;->c:Lcom/estrongs/fs/g;

    invoke-interface {v5}, Lcom/estrongs/fs/g;->lastModified()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/estrongs/android/ui/b/dn;->c:Lcom/estrongs/fs/g;

    invoke-interface {v5}, Lcom/estrongs/fs/g;->lastModified()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/b/dn;->c:Lcom/estrongs/fs/g;

    invoke-interface {v3}, Lcom/estrongs/fs/g;->lastModified()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/estrongs/android/ui/b/dn;->c:Lcom/estrongs/fs/g;

    invoke-interface {v5}, Lcom/estrongs/fs/g;->lastModified()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/android/ui/b/dn;->c:Lcom/estrongs/fs/g;

    invoke-interface {v4}, Lcom/estrongs/fs/g;->lastModified()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/estrongs/android/ui/b/dn;->c:Lcom/estrongs/fs/g;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/estrongs/fs/g;->hasPermission(I)Z

    move-result v1

    if-eqz v1, :cond_10

    const v1, 0x7f0b0008

    :goto_a
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/estrongs/android/ui/b/dn;->c:Lcom/estrongs/fs/g;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/estrongs/fs/g;->hasPermission(I)Z

    move-result v1

    if-eqz v1, :cond_11

    const v1, 0x7f0b0008

    :goto_b
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f0b0009

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/estrongs/android/ui/b/dn;->c:Lcom/estrongs/fs/g;

    invoke-interface {v1}, Lcom/estrongs/fs/g;->getFileType()Lcom/estrongs/fs/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/fs/l;->a()Z

    move-result v1

    if-eqz v1, :cond_12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/estrongs/android/ui/b/dn;->l:Landroid/widget/TextView;

    const v2, 0x7f0b00f8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/estrongs/android/ui/b/dn;->c:Lcom/estrongs/fs/g;

    invoke-interface {v1}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->aO(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const v1, 0x7f0801a6

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/dn;->l(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/estrongs/android/ui/b/dn;->c:Lcom/estrongs/fs/g;

    invoke-static {v1}, Lcom/estrongs/android/util/av;->b(Lcom/estrongs/fs/g;)Z

    move-result v1

    if-eqz v1, :cond_9

    const v1, 0x7f0801a9

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/dn;->l(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0801aa

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/dn;->o(I)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0b0242

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f0801ab

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/dn;->o(I)Landroid/widget/TextView;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/b/dn;->ad:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/b/dn;->c:Lcom/estrongs/fs/g;

    invoke-static {v2, v3}, Lcom/estrongs/android/ui/d/a;->a(Landroid/content/Context;Lcom/estrongs/fs/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    const v1, 0x7f0801c4

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/dn;->l(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/estrongs/android/ui/b/dn;->e()Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v2, 0x7f0801c3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/b/dn;->l(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0801c6

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/estrongs/android/ui/b/ec;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/estrongs/android/ui/b/ec;-><init>(Lcom/estrongs/android/ui/b/dn;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    :cond_a
    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Landroid/widget/TableRow;->setVisibility(I)V

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Landroid/widget/TableRow;->setVisibility(I)V

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/TableRow;->setVisibility(I)V

    const v14, 0x7f0801ac

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/estrongs/android/ui/b/dn;->l(I)Landroid/view/View;

    move-result-object v14

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/estrongs/android/ui/b/dn;->b(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/estrongs/android/ui/b/dn;->c:Lcom/estrongs/fs/g;

    invoke-interface {v14}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/estrongs/android/util/ak;->aC(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    const/16 v14, 0x8

    invoke-virtual {v2, v14}, Landroid/widget/TableRow;->setVisibility(I)V

    const/16 v2, 0x8

    invoke-virtual {v12, v2}, Landroid/widget/TableRow;->setVisibility(I)V

    const/16 v2, 0x8

    invoke-virtual {v13, v2}, Landroid/widget/TableRow;->setVisibility(I)V

    const v2, 0x7f0801ac

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/b/dn;->l(I)Landroid/view/View;

    move-result-object v2

    const/16 v12, 0x8

    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    :cond_b
    const v1, 0x7f0b005d

    goto/16 :goto_5

    :cond_c
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, " hh:mm:ss a"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_d
    const v3, 0x7f0b04e5

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_7

    :cond_e
    const v3, 0x7f0b04e5

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_8

    :cond_f
    const v1, 0x7f0b04e5

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_9

    :cond_10
    const v1, 0x7f0b0009

    goto/16 :goto_a

    :cond_11
    const v1, 0x7f0b0009

    goto/16 :goto_b

    :cond_12
    const/16 v1, 0x8

    invoke-virtual {v15, v1}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/estrongs/android/ui/b/dn;->c:Lcom/estrongs/fs/g;

    invoke-interface {v1}, Lcom/estrongs/fs/g;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/estrongs/android/ui/b/dn;->k:Landroid/widget/TextView;

    const v2, 0x7f0b04e5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_c

    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/b/dn;->k:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v1, v2}, Lcom/estrongs/android/ui/b/dn;->a(Landroid/widget/TextView;J)V

    goto/16 :goto_c

    :cond_14
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v1, 0x7f0801c3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/dn;->l(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3
.end method

.method private a([Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Lcom/estrongs/android/ui/b/aq;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/dn;->ad:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/b/aq;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b03e5

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/aq;->a(I)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/b/dp;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/ui/b/dp;-><init>(Lcom/estrongs/android/ui/b/dn;[Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/estrongs/android/ui/b/aq;->a([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/aq;->c(Z)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/aq;->b()Lcom/estrongs/android/ui/b/ag;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/b/dn;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/b/dn;->q:Z

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/ui/b/dn;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/b/dn;->h()V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/ui/b/dn;[Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/ui/b/dn;->b([Ljava/lang/String;I)V

    return-void
.end method

.method private b(Z)V
    .locals 7

    const v6, 0x7f0801b6

    const/16 v3, 0x8

    const/4 v5, 0x0

    const v0, 0x7f0801b7

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/b/dn;->l(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0801bb

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/b/dn;->l(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0801bf

    invoke-virtual {p0, v2}, Lcom/estrongs/android/ui/b/dn;->l(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/estrongs/android/ui/b/dn;->a:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/estrongs/android/ui/b/dn;->h:Lcom/estrongs/fs/impl/local/m;

    iget v4, v4, Lcom/estrongs/fs/impl/local/m;->c:I

    invoke-static {v4}, Lcom/estrongs/fs/impl/local/h;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/estrongs/android/ui/b/dn;->b:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/estrongs/android/ui/b/dn;->h:Lcom/estrongs/fs/impl/local/m;

    iget v4, v4, Lcom/estrongs/fs/impl/local/m;->b:I

    invoke-static {v4}, Lcom/estrongs/fs/impl/local/h;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0, v6}, Lcom/estrongs/android/ui/b/dn;->l(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0801ba

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/b/dn;->l(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/estrongs/android/ui/b/ed;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/b/ed;-><init>(Lcom/estrongs/android/ui/b/dn;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0801be

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/b/dn;->l(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/estrongs/android/ui/b/ee;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/b/ee;-><init>(Lcom/estrongs/android/ui/b/dn;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0801c2

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/b/dn;->l(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/estrongs/android/ui/b/ef;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/b/ef;-><init>(Lcom/estrongs/android/ui/b/dn;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0, v6}, Lcom/estrongs/android/ui/b/dn;->l(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private b([Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Lcom/estrongs/android/ui/b/aq;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/dn;->ad:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/b/aq;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b00ef

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/aq;->a(I)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/b/dq;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/ui/b/dq;-><init>(Lcom/estrongs/android/ui/b/dn;[Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/estrongs/android/ui/b/aq;->a([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/aq;->c(Z)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/aq;->b()Lcom/estrongs/android/ui/b/ag;

    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/ui/b/dn;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/ui/b/dn;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/b/dn;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/dn;->ad:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic e(Lcom/estrongs/android/ui/b/dn;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/dn;->p:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/estrongs/android/ui/b/dn;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/dn;->ad:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic g(Lcom/estrongs/android/ui/b/dn;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/dn;->ad:Landroid/app/Activity;

    return-object v0
.end method

.method private g()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/b/dn;->c:Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private h()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/estrongs/android/ui/b/dn;->ad:Landroid/app/Activity;

    invoke-static {v1}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030032

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v1, 0x7f08011c

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableRow;

    const v3, 0x7f08011e

    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/CheckBox;

    const v3, 0x7f08011f

    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/CheckBox;

    const v3, 0x7f080120

    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/estrongs/android/ui/b/dn;->h:Lcom/estrongs/fs/impl/local/m;

    iget v1, v1, Lcom/estrongs/fs/impl/local/m;->a:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/estrongs/android/ui/b/dn;->h:Lcom/estrongs/fs/impl/local/m;

    iget v1, v1, Lcom/estrongs/fs/impl/local/m;->a:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/estrongs/android/ui/b/dn;->h:Lcom/estrongs/fs/impl/local/m;

    iget v1, v1, Lcom/estrongs/fs/impl/local/m;->a:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_2
    const v1, 0x7f080121

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableRow;

    const v3, 0x7f08011e

    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    const v3, 0x7f08011f

    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    const v3, 0x7f080120

    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/estrongs/android/ui/b/dn;->h:Lcom/estrongs/fs/impl/local/m;

    iget v1, v1, Lcom/estrongs/fs/impl/local/m;->a:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/estrongs/android/ui/b/dn;->h:Lcom/estrongs/fs/impl/local/m;

    iget v1, v1, Lcom/estrongs/fs/impl/local/m;->a:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/estrongs/android/ui/b/dn;->h:Lcom/estrongs/fs/impl/local/m;

    iget v1, v1, Lcom/estrongs/fs/impl/local/m;->a:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_5
    const v1, 0x7f080122

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableRow;

    const v3, 0x7f08011e

    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    const v3, 0x7f08011f

    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    const v3, 0x7f080120

    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/estrongs/android/ui/b/dn;->h:Lcom/estrongs/fs/impl/local/m;

    iget v1, v1, Lcom/estrongs/fs/impl/local/m;->a:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/estrongs/android/ui/b/dn;->h:Lcom/estrongs/fs/impl/local/m;

    iget v1, v1, Lcom/estrongs/fs/impl/local/m;->a:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/estrongs/android/ui/b/dn;->h:Lcom/estrongs/fs/impl/local/m;

    iget v1, v1, Lcom/estrongs/fs/impl/local/m;->a:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_8
    const v1, 0x7f080125

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/CheckBox;

    const v1, 0x7f080127

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/CheckBox;

    const v1, 0x7f080129

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/estrongs/android/ui/b/dn;->h:Lcom/estrongs/fs/impl/local/m;

    iget v1, v1, Lcom/estrongs/fs/impl/local/m;->a:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    invoke-virtual {v14, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/estrongs/android/ui/b/dn;->h:Lcom/estrongs/fs/impl/local/m;

    iget v1, v1, Lcom/estrongs/fs/impl/local/m;->a:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    invoke-virtual {v13, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/estrongs/android/ui/b/dn;->h:Lcom/estrongs/fs/impl/local/m;

    iget v1, v1, Lcom/estrongs/fs/impl/local/m;->a:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_b
    new-instance v1, Lcom/estrongs/android/ui/b/aq;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/estrongs/android/ui/b/dn;->ad:Landroid/app/Activity;

    invoke-direct {v1, v15}, Lcom/estrongs/android/ui/b/aq;-><init>(Landroid/content/Context;)V

    const v15, 0x7f0b02df

    invoke-virtual {v1, v15}, Lcom/estrongs/android/ui/b/aq;->a(I)Lcom/estrongs/android/ui/b/aq;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/b/aq;->a(Landroid/view/View;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v1

    const v2, 0x7f0b0007

    new-instance v15, Lcom/estrongs/android/ui/b/eh;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/estrongs/android/ui/b/eh;-><init>(Lcom/estrongs/android/ui/b/dn;)V

    invoke-virtual {v1, v2, v15}, Lcom/estrongs/android/ui/b/aq;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v15

    const v16, 0x7f0b0006

    new-instance v1, Lcom/estrongs/android/ui/b/eg;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v14}, Lcom/estrongs/android/ui/b/eg;-><init>(Lcom/estrongs/android/ui/b/dn;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V

    move/from16 v0, v16

    invoke-virtual {v15, v0, v1}, Lcom/estrongs/android/ui/b/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/b/aq;->b()Lcom/estrongs/android/ui/b/ag;

    return-void
.end method

.method static synthetic h(Lcom/estrongs/android/ui/b/dn;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/b/dn;->i()V

    return-void
.end method

.method static synthetic i(Lcom/estrongs/android/ui/b/dn;)Lcom/estrongs/android/ui/b/dm;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/dn;->o:Lcom/estrongs/android/ui/b/dm;

    return-object v0
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/b/dn;->o:Lcom/estrongs/android/ui/b/dm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/dn;->ad:Landroid/app/Activity;

    new-instance v1, Lcom/estrongs/android/ui/b/dt;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/b/dt;-><init>(Lcom/estrongs/android/ui/b/dn;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method static synthetic j(Lcom/estrongs/android/ui/b/dn;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/dn;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic k(Lcom/estrongs/android/ui/b/dn;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/dn;->m:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic l(Lcom/estrongs/android/ui/b/dn;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/dn;->k:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected a()I
    .locals 1

    const v0, 0x7f030046

    return v0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/b/dn;->o:Lcom/estrongs/android/ui/b/dm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/dn;->o:Lcom/estrongs/android/ui/b/dm;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/dm;->getTaskStatus()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/dn;->o:Lcom/estrongs/android/ui/b/dm;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/dm;->getTaskStatus()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/dn;->o:Lcom/estrongs/android/ui/b/dm;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/dm;->requestStop()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/b/dn;->c:Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getFileType()Lcom/estrongs/fs/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/l;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/dn;->c:Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aO(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/ui/b/dn;->c:Lcom/estrongs/fs/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/estrongs/android/ui/b/dr;

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2}, Lcom/estrongs/android/ui/b/dr;-><init>(Lcom/estrongs/android/ui/b/dn;Ljava/util/List;Lcom/estrongs/fs/d;)V

    iput-object v1, p0, Lcom/estrongs/android/ui/b/dn;->o:Lcom/estrongs/android/ui/b/dm;

    iget-object v0, p0, Lcom/estrongs/android/ui/b/dn;->o:Lcom/estrongs/android/ui/b/dm;

    new-instance v1, Lcom/estrongs/android/ui/b/ds;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/b/ds;-><init>(Lcom/estrongs/android/ui/b/dn;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/dm;->addProgressListener(Lcom/estrongs/a/a/h;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/dn;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aC(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/dn;->o:Lcom/estrongs/android/ui/b/dm;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/dm;->a(Z)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/b/dn;->o:Lcom/estrongs/android/ui/b/dm;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/dm;->execute()V

    :cond_1
    return-void
.end method

.method protected d()V
    .locals 4

    new-instance v0, Lcom/estrongs/android/ui/view/aa;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/dn;->ad:Landroid/app/Activity;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/estrongs/android/ui/b/dn;->n:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/estrongs/android/ui/view/aa;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/ui/b/aq;

    iget-object v2, p0, Lcom/estrongs/android/ui/b/dn;->ad:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/estrongs/android/ui/b/aq;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0270

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/b/aq;->a(I)Lcom/estrongs/android/ui/b/aq;

    move-result-object v1

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/aa;->an()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/b/aq;->a(Landroid/view/View;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v1

    const v2, 0x7f0b0271

    new-instance v3, Lcom/estrongs/android/ui/b/dy;

    invoke-direct {v3, p0, v0}, Lcom/estrongs/android/ui/b/dy;-><init>(Lcom/estrongs/android/ui/b/dn;Lcom/estrongs/android/ui/view/aa;)V

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/ui/b/aq;->d(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v1

    const v2, 0x7f0b000c

    new-instance v3, Lcom/estrongs/android/ui/b/dx;

    invoke-direct {v3, p0, v0}, Lcom/estrongs/android/ui/b/dx;-><init>(Lcom/estrongs/android/ui/b/dn;Lcom/estrongs/android/ui/view/aa;)V

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/ui/b/aq;->e(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v1

    const v2, 0x7f0b0007

    new-instance v3, Lcom/estrongs/android/ui/b/dw;

    invoke-direct {v3, p0, v0}, Lcom/estrongs/android/ui/b/dw;-><init>(Lcom/estrongs/android/ui/b/dn;Lcom/estrongs/android/ui/view/aa;)V

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/ui/b/aq;->f(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/ui/b/dv;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/ui/b/dv;-><init>(Lcom/estrongs/android/ui/b/dn;Lcom/estrongs/android/ui/view/aa;)V

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/b/aq;->a(Landroid/content/DialogInterface$OnCancelListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/b/aq;->b()Lcom/estrongs/android/ui/b/ag;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/ui/b/ea;

    invoke-direct {v2, p0, v1}, Lcom/estrongs/android/ui/b/ea;-><init>(Lcom/estrongs/android/ui/b/dn;Lcom/estrongs/android/ui/b/ag;)V

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/view/aa;->a(Lcom/estrongs/android/view/cr;)V

    return-void
.end method

.method protected e()Z
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/b/dn;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aO(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/dn;->n:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/b/dn;->q:Z

    return v0
.end method

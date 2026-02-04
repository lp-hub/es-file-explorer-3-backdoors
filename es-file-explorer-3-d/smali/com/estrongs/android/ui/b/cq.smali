.class public Lcom/estrongs/android/ui/b/cq;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/estrongs/android/ui/b/ag;

.field private b:Landroid/view/View;

.field private c:Landroid/content/Context;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/widget/EditText;

.field private i:Landroid/widget/CheckBox;

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/b/cq;->d:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/ui/b/cq;->e:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/ui/b/cq;->f:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/ui/b/cq;->g:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/ui/b/cq;->h:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/ui/b/cq;->i:Landroid/widget/CheckBox;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/b/cq;->j:Z

    new-instance v0, Lcom/estrongs/android/ui/b/cr;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/b/cr;-><init>(Lcom/estrongs/android/ui/b/cq;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/b/cq;->l:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iput-object p1, p0, Lcom/estrongs/android/ui/b/cq;->c:Landroid/content/Context;

    invoke-direct {p0}, Lcom/estrongs/android/ui/b/cq;->c()V

    invoke-direct {p0}, Lcom/estrongs/android/ui/b/cq;->d()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/b/cq;->d:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/ui/b/cq;->e:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/ui/b/cq;->f:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/ui/b/cq;->g:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/ui/b/cq;->h:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/ui/b/cq;->i:Landroid/widget/CheckBox;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/b/cq;->j:Z

    new-instance v0, Lcom/estrongs/android/ui/b/cr;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/b/cr;-><init>(Lcom/estrongs/android/ui/b/cq;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/b/cq;->l:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iput-object p1, p0, Lcom/estrongs/android/ui/b/cq;->c:Landroid/content/Context;

    invoke-direct {p0}, Lcom/estrongs/android/ui/b/cq;->c()V

    invoke-direct {p0, p2, p3}, Lcom/estrongs/android/ui/b/cq;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/estrongs/android/ui/b/cq;->d()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/b/cq;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/cq;->i:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x6

    const/4 v4, 0x1

    iput-object p1, p0, Lcom/estrongs/android/ui/b/cq;->k:Ljava/lang/String;

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iput-boolean v4, p0, Lcom/estrongs/android/ui/b/cq;->j:Z

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->F(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_4

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->bf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/estrongs/android/ui/b/cq;->d:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/ui/b/cq;->e:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    iget-object v2, p0, Lcom/estrongs/android/ui/b/cq;->f:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/cq;->i:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/b/cq;->g:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/b/cq;->h:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void

    :cond_4
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/ui/b/cq;->i:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/estrongs/android/ui/b/cq;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/b/cq;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->aU(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->F(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/estrongs/fs/impl/o/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljcifs/smb/SmbFile;

    invoke-direct {v3, v2}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljcifs/smb/SmbFile;->list()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/b/cq;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/cq;->f:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/b/cq;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/cq;->g:Landroid/widget/EditText;

    return-object v0
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/b/cq;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030086

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/b/cq;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/b/cq;->b:Landroid/view/View;

    const v1, 0x7f080297

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/ui/b/cq;->d:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/estrongs/android/ui/b/cq;->b:Landroid/view/View;

    const v1, 0x7f080276

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/ui/b/cq;->e:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/estrongs/android/ui/b/cq;->b:Landroid/view/View;

    const v1, 0x7f08029c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/ui/b/cq;->f:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/estrongs/android/ui/b/cq;->b:Landroid/view/View;

    const v1, 0x7f0800f4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/ui/b/cq;->g:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/estrongs/android/ui/b/cq;->b:Landroid/view/View;

    const v1, 0x7f080284

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/estrongs/android/ui/b/cq;->i:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/estrongs/android/ui/b/cq;->b:Landroid/view/View;

    const v1, 0x7f08028f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/ui/b/cq;->h:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/estrongs/android/ui/b/cq;->i:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/cq;->l:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/cq;->i:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/cq;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

.method static synthetic d(Lcom/estrongs/android/ui/b/cq;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/cq;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method private d()V
    .locals 3

    new-instance v0, Lcom/estrongs/android/ui/b/aq;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/cq;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/b/aq;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/b/cq;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/aq;->a(Landroid/view/View;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    const v1, 0x7f0b0006

    new-instance v2, Lcom/estrongs/android/ui/b/ct;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/b/ct;-><init>(Lcom/estrongs/android/ui/b/cq;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/b/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    const v1, 0x7f0b0007

    new-instance v2, Lcom/estrongs/android/ui/b/cs;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/b/cs;-><init>(Lcom/estrongs/android/ui/b/cq;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/b/aq;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    const v1, 0x7f0b02b2

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/aq;->a(I)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/aq;->a()Lcom/estrongs/android/ui/b/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/b/cq;->a:Lcom/estrongs/android/ui/b/ag;

    return-void
.end method

.method private e()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/cq;->i:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/cq;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/b/cq;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/cq;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01b8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/estrongs/android/ui/b/cq;->f()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/b/cq;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/cq;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/ui/b/cq;->c:Landroid/content/Context;

    const v2, 0x7f0b01c3

    const v3, 0x7f0b01c4

    invoke-static {v1, v2, v3}, Lcom/estrongs/android/a/t;->a(Landroid/content/Context;II)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/estrongs/android/ui/b/cu;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/ui/b/cu;-><init>(Lcom/estrongs/android/ui/b/cq;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method static synthetic e(Lcom/estrongs/android/ui/b/cq;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/b/cq;->e()V

    return-void
.end method

.method static synthetic f(Lcom/estrongs/android/ui/b/cq;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/cq;->c:Landroid/content/Context;

    return-object v0
.end method

.method private f()Ljava/lang/String;
    .locals 8

    const/4 v7, 0x6

    const/4 v6, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/cq;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    :goto_1
    return-object v2

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/ui/b/cq;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    move-object v1, v2

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "smb://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aU(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v2, v0

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_6
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/cq;->i:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/ui/b/cq;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/estrongs/android/ui/b/cq;->g:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/ui/b/cq;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/cq;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b01b8

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    :cond_8
    if-nez v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Lcom/estrongs/android/util/ak;->aW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9
    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->aW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Lcom/estrongs/android/util/ak;->aW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method static synthetic g(Lcom/estrongs/android/ui/b/cq;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/cq;->h:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic h(Lcom/estrongs/android/ui/b/cq;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/b/cq;->j:Z

    return v0
.end method

.method static synthetic i(Lcom/estrongs/android/ui/b/cq;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/cq;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/estrongs/android/ui/b/cq;)Lcom/estrongs/android/ui/b/ag;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/cq;->a:Lcom/estrongs/android/ui/b/ag;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/cq;->a:Lcom/estrongs/android/ui/b/ag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/cq;->a:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/cq;->a:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->show()V

    return-void
.end method

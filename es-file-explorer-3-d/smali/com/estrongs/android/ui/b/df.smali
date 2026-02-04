.class public Lcom/estrongs/android/ui/b/df;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/estrongs/android/ui/b/aq;

.field private b:Lcom/estrongs/android/pop/esclasses/ESActivity;

.field private c:Lcom/estrongs/android/ui/b/dn;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/esclasses/ESActivity;Lcom/estrongs/fs/g;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/b/df;->c:Lcom/estrongs/android/ui/b/dn;

    iput-object v0, p0, Lcom/estrongs/android/ui/b/df;->d:Ljava/lang/String;

    new-instance v0, Lcom/estrongs/android/ui/b/dn;

    invoke-direct {v0, p1, p2}, Lcom/estrongs/android/ui/b/dn;-><init>(Lcom/estrongs/android/pop/esclasses/ESActivity;Lcom/estrongs/fs/g;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/b/df;->c:Lcom/estrongs/android/ui/b/dn;

    iput-object p1, p0, Lcom/estrongs/android/ui/b/df;->b:Lcom/estrongs/android/pop/esclasses/ESActivity;

    new-instance v0, Lcom/estrongs/android/ui/b/aq;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/df;->b:Lcom/estrongs/android/pop/esclasses/ESActivity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/b/aq;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b00f4

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/aq;->a(I)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/b/df;->a:Lcom/estrongs/android/ui/b/aq;

    return-void
.end method

.method public constructor <init>(Lcom/estrongs/android/pop/esclasses/ESActivity;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/b/df;->c:Lcom/estrongs/android/ui/b/dn;

    iput-object v0, p0, Lcom/estrongs/android/ui/b/df;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/estrongs/android/ui/b/df;->b:Lcom/estrongs/android/pop/esclasses/ESActivity;

    new-instance v0, Lcom/estrongs/android/ui/b/aq;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/df;->b:Lcom/estrongs/android/pop/esclasses/ESActivity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/b/aq;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b00f4

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/aq;->a(I)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/b/df;->a:Lcom/estrongs/android/ui/b/aq;

    invoke-static {p2}, Lcom/estrongs/android/util/ak;->aO(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/estrongs/fs/a/b;->g(Ljava/lang/String;)Lcom/estrongs/fs/g;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/g;

    move-result-object v0

    if-nez v0, :cond_1

    const v0, 0x7f0b03c8

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/estrongs/android/ui/b/dn;

    invoke-direct {v1, p1, v0}, Lcom/estrongs/android/ui/b/dn;-><init>(Lcom/estrongs/android/pop/esclasses/ESActivity;Lcom/estrongs/fs/g;)V

    iput-object v1, p0, Lcom/estrongs/android/ui/b/df;->c:Lcom/estrongs/android/ui/b/dn;

    goto :goto_0

    :cond_2
    iput-object p2, p0, Lcom/estrongs/android/ui/b/df;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/b/df;Lcom/estrongs/android/ui/b/dn;)Lcom/estrongs/android/ui/b/dn;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/df;->c:Lcom/estrongs/android/ui/b/dn;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/ui/b/df;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/df;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/b/df;)Lcom/estrongs/android/pop/esclasses/ESActivity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/df;->b:Lcom/estrongs/android/pop/esclasses/ESActivity;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/b/df;)Lcom/estrongs/android/ui/b/dn;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/df;->c:Lcom/estrongs/android/ui/b/dn;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/ui/b/df;->c:Lcom/estrongs/android/ui/b/dn;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/ui/b/df;->b()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/b/df;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/aw;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/df;->b:Lcom/estrongs/android/pop/esclasses/ESActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300a5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f08001a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0b006d

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/df;->a:Lcom/estrongs/android/ui/b/aq;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/aq;->a(Landroid/view/View;)Lcom/estrongs/android/ui/b/aq;

    iget-object v0, p0, Lcom/estrongs/android/ui/b/df;->a:Lcom/estrongs/android/ui/b/aq;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/aq;->a()Lcom/estrongs/android/ui/b/ag;

    move-result-object v0

    new-instance v2, Lcom/estrongs/android/ui/b/dg;

    const-string v3, "Getting FileObject"

    invoke-direct {v2, p0, v3, v0, v1}, Lcom/estrongs/android/ui/b/dg;-><init>(Lcom/estrongs/android/ui/b/df;Ljava/lang/String;Lcom/estrongs/android/ui/b/ag;Landroid/view/View;)V

    invoke-virtual {v2}, Lcom/estrongs/android/util/n;->start()V

    iget-object v1, p0, Lcom/estrongs/android/ui/b/df;->a:Lcom/estrongs/android/ui/b/aq;

    const v3, 0x7f0b0007

    new-instance v4, Lcom/estrongs/android/ui/b/dj;

    invoke-direct {v4, p0, v2}, Lcom/estrongs/android/ui/b/dj;-><init>(Lcom/estrongs/android/ui/b/df;Lcom/estrongs/android/util/n;)V

    invoke-virtual {v1, v3, v4}, Lcom/estrongs/android/ui/b/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->show()V

    goto :goto_0
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/b/df;->c:Lcom/estrongs/android/ui/b/dn;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/dn;->c()V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/df;->c:Lcom/estrongs/android/ui/b/dn;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/dn;->an()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/b/df;->a:Lcom/estrongs/android/ui/b/aq;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/b/aq;->a(Landroid/view/View;)Lcom/estrongs/android/ui/b/aq;

    iget-object v0, p0, Lcom/estrongs/android/ui/b/df;->a:Lcom/estrongs/android/ui/b/aq;

    const v1, 0x7f0b0007

    new-instance v2, Lcom/estrongs/android/ui/b/dk;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/b/dk;-><init>(Lcom/estrongs/android/ui/b/df;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/b/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    iget-object v0, p0, Lcom/estrongs/android/ui/b/df;->a:Lcom/estrongs/android/ui/b/aq;

    new-instance v1, Lcom/estrongs/android/ui/b/dl;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/b/dl;-><init>(Lcom/estrongs/android/ui/b/df;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/aq;->a(Landroid/content/DialogInterface$OnDismissListener;)Lcom/estrongs/android/ui/b/aq;

    iget-object v0, p0, Lcom/estrongs/android/ui/b/df;->a:Lcom/estrongs/android/ui/b/aq;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/aq;->a()Lcom/estrongs/android/ui/b/ag;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/b/df;->c:Lcom/estrongs/android/ui/b/dn;

    iput-object v0, v1, Lcom/estrongs/android/ui/b/dn;->j:Landroid/app/Dialog;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->show()V

    return-void
.end method

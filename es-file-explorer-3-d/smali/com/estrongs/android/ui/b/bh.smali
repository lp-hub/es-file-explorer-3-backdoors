.class public Lcom/estrongs/android/ui/b/bh;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/estrongs/android/ui/b/bk;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ui/b/bh;->a:Lcom/estrongs/android/ui/b/bk;

    new-instance v0, Lcom/estrongs/android/ui/b/bk;

    invoke-direct {v0, p1, p2, p3}, Lcom/estrongs/android/ui/b/bk;-><init>(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/b/bh;->a:Lcom/estrongs/android/ui/b/bk;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/b/bh;)Lcom/estrongs/android/ui/b/bk;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/bh;->a:Lcom/estrongs/android/ui/b/bk;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/b/bh;->a:Lcom/estrongs/android/ui/b/bk;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/bk;->an()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/b/aq;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/estrongs/android/ui/b/aq;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b00f4

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/b/aq;->a(I)Lcom/estrongs/android/ui/b/aq;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/b/aq;->a(Landroid/view/View;)Lcom/estrongs/android/ui/b/aq;

    const v0, 0x7f0b0007

    new-instance v2, Lcom/estrongs/android/ui/b/bi;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/b/bi;-><init>(Lcom/estrongs/android/ui/b/bh;)V

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/ui/b/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    new-instance v0, Lcom/estrongs/android/ui/b/bj;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/b/bj;-><init>(Lcom/estrongs/android/ui/b/bh;)V

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/b/aq;->a(Landroid/content/DialogInterface$OnDismissListener;)Lcom/estrongs/android/ui/b/aq;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/b/aq;->a()Lcom/estrongs/android/ui/b/ag;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/b/bh;->a:Lcom/estrongs/android/ui/b/bk;

    iput-object v0, v1, Lcom/estrongs/android/ui/b/bk;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->show()V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/bh;->a:Lcom/estrongs/android/ui/b/bk;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/bk;->c()V

    return-void
.end method

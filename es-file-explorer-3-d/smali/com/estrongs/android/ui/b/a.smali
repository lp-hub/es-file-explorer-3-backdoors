.class public Lcom/estrongs/android/ui/b/a;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/estrongs/fs/impl/b/c;

.field private b:Lcom/estrongs/android/ui/b/e;

.field private c:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;Lcom/estrongs/fs/impl/b/c;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/b/a;->b:Lcom/estrongs/android/ui/b/e;

    iput-object v0, p0, Lcom/estrongs/android/ui/b/a;->a:Lcom/estrongs/fs/impl/b/c;

    iput-object p1, p0, Lcom/estrongs/android/ui/b/a;->c:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iput-object p2, p0, Lcom/estrongs/android/ui/b/a;->a:Lcom/estrongs/fs/impl/b/c;

    new-instance v0, Lcom/estrongs/android/ui/b/e;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/android/ui/b/e;-><init>(Lcom/estrongs/android/ui/b/a;Lcom/estrongs/android/pop/esclasses/ESActivity;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/b/a;->b:Lcom/estrongs/android/ui/b/e;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/b/a;)Lcom/estrongs/android/pop/view/FileExplorerActivity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/a;->c:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/b/a;->b:Lcom/estrongs/android/ui/b/e;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/e;->an()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/b/aq;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/estrongs/android/ui/b/aq;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b00f4

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/b/aq;->a(I)Lcom/estrongs/android/ui/b/aq;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/b/aq;->a(Landroid/view/View;)Lcom/estrongs/android/ui/b/aq;

    iget-object v0, p0, Lcom/estrongs/android/ui/b/a;->a:Lcom/estrongs/fs/impl/b/c;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/b/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b049e

    new-instance v2, Lcom/estrongs/android/ui/b/b;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/b/b;-><init>(Lcom/estrongs/android/ui/b/a;)V

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/ui/b/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    :goto_0
    const v0, 0x7f0b0007

    new-instance v2, Lcom/estrongs/android/ui/b/d;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/b/d;-><init>(Lcom/estrongs/android/ui/b/a;)V

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/ui/b/aq;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/b/aq;->b()Lcom/estrongs/android/ui/b/ag;

    return-void

    :cond_0
    const v0, 0x7f0b0023

    new-instance v2, Lcom/estrongs/android/ui/b/c;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/b/c;-><init>(Lcom/estrongs/android/ui/b/a;)V

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/ui/b/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    goto :goto_0
.end method
